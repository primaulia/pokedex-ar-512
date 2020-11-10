class Trainer < ActiveRecord::Base
  has_many :badges
  has_many :pokemons
  has_many :items, through: :pokemons
end