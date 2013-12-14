class Platform < ActiveRecord::Base

  has_and_belongs_to_many :campaign

  attr_accessible :operating_system

  validates :operating_system, presence: true
end
