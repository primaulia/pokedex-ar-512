class Pokemon < ActiveRecord::Base
  has_many :items
  belongs_to :trainer
end