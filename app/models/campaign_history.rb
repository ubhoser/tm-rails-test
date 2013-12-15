class CampaignHistory < ActiveRecord::Base

  attr_accessible :campaign_name, :admin_user_email, :budget, :action, :message

end
