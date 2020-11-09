class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t| #t => column fields
      t.string    :name
      t.integer   :level
      t.string    :type
      t.timestamps # add 2 columns, `created_at` and `updated_at`
    end
  end
end