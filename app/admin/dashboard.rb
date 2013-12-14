ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Campaign History" do
          ul do
            CampaignHistory.order("created_at desc").limit(5).map do |campaign_history|
              li campaign_history.campaign.name + ' (' + campaign_history.admin_user.email + ')'
            end
          end
        end
      end
    end
  end # content
end
