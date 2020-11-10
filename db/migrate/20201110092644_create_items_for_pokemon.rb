class CreateItemsForPokemon < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.references :pokemon, foreign_key: true
      t.timestamps
    end
  end
end