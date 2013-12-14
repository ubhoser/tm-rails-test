class CampaignHistory < ActiveRecord::Base

  belongs_to :campaign
  belongs_to :admin_user

  attr_accessible :campaign_id, :admin_user_id, :budget 

end
