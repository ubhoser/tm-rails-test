class CreateCampaignHistory < ActiveRecord::Migration
  def change
    create_table :campaign_histories do |t|
      t.integer :admin_user_id
      t.integer :campaign_id
      t.integer :budget
      t.timestamps
    end
  end
end
