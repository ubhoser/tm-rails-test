class ChangeCampaignHistory < ActiveRecord::Migration
  def up
    remove_column :campaign_histories, :campaign_id
    remove_column :campaign_histories, :admin_user_id
    add_column :campaign_histories, :campaign_name, :string
    add_column :campaign_histories, :admin_user_email, :string
    add_column :campaign_histories, :action, :string
    add_column :campaign_histories, :message, :string
  end

  def down
    remove_column :campaign_histories, :campaign_name
    remove_column :campaign_histories, :admin_user_email
    remove_column :campaign_histories, :action
    remove_column :campaign_histories, :message
    add_column :campaign_histories, :campaign_id, :integer
    add_column :campaign_histories, :admin_user_id, :integer
  end
end
