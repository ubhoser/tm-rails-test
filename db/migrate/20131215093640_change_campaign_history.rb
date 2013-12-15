class ChangeCampaignHistory < ActiveRecord::Migration
  def up
    rename_column :campaign_histories, :campaign_id, :integer
    rename_column :campaign_histories, :admin_user_id, :integer
    add_column :campaign_histories, :campaign_name, :string
    add_column :campaign_histories, :admin_user_email, :string
    add_column :campaign_histories, :action, :string
    add_column :campaign_histories, :message, :string
  end

  def down
    rename_column :campaign_histories, :campaign_name, :string
    rename_column :campaign_histories, :admin_user_email, :string
    rename_column :campaign_histories, :action, :string
    rename_column :campaign_histories, :message, :string
    add_column :campaign_histories, :campaign_id, :integer
    add_column :campaign_histories, :admin_user_id, :integer
  end
end
