class Campaign < ActiveRecord::Base

  has_and_belongs_to_many :platforms

  attr_accessible :name, :budget, :platform_ids

  validates :platforms, presence: true
  validates :name, presence: true
  validates :budget, numericality: { greater_than: 0 }

end
