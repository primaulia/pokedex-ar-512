class UpdateMultipleTables < ActiveRecord::Migration[6.0]
  def change
    # add address column in my trainers
    add_column :trainers, :addres, :string

    # make level to default to 1
    change_column :pokemons, :level, :integer, default: 1
  end
end