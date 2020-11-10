class Trainer < ActiveRecord::Base
  has_many :badges
  has_many :pokemons
  has_many :items, through: :pokemons

  validates :name, presence: true
end