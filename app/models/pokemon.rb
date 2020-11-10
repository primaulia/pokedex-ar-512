class Pokemon < ActiveRecord::Base
  has_many :items
  belongs_to :trainer

  validates :level, numericality: true
end