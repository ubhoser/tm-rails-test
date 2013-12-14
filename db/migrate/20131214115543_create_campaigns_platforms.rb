class CreateCampaignsPlatforms < ActiveRecord::Migration
 def change
    create_table :campaigns_platforms, index: false do |t|
      t.integer :campaign_id
      t.integer :platform_id
    end
  end
end