class UpdatePokemonsTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :pokemons, :type
    add_column :pokemons, :element, :string
  end
end