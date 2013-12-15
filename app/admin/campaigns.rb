ActiveAdmin.register Campaign do
  controller do
    before_filter :old_platform_ids, :only => [:new, :update]

private
    # Find the platform id's to compare with current-platform id's by update 
    def old_platform_ids
      begin
        campaign = Campaign.find(params[:id])
        @old_platform_ids = campaign.platforms.map{|p| p.id}
      rescue
        @old_platform_ids = []
      end
    end
  end

  index do
    column "platforms" do |c|
      c.platforms.map{|p| p.operating_system}.join(', ')
    end
    column :name
    column :budget
    actions
  end

  form do |f|
    f.inputs do
      f.input :platforms, :as => :select, :collection => Platform.all.map{|p| [p.operating_system, p.id]}
      f.input :name
      f.input :budget
    end
    f.actions
  end

  # compare the platform id's and if changed and the current campaign has budget
  # more than 1000 then create new CampaignHistory
  after_save do |campaign|
    @current_plaform_ids = campaign.platforms.map{|p| p.id}
    if (@old_platform_ids != @current_plaform_ids && campaign.budget.to_i > 1000)
      CampaignHistory.create({
        :campaign_name => campaign.name, 
        :admin_user_email => current_admin_user.email, 
        :budget => campaign.budget, 
        :action => (campaign.created_at == campaign.updated_at) ? 'created' : 'update',
        :message => (campaign.created_at == campaign.updated_at) ? 'Selected platforms: ' + campaign.platforms.map{ |p| p.operating_system }.join(', ') : 'Updated platforms: ' + campaign.platforms.map{ |p| p.operating_system }.join(', ')
      })
    end
  end

end
