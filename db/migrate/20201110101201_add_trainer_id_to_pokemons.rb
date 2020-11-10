class AddTrainerIdToPokemons < ActiveRecord::Migration[6.0]
  def change
    # add_column :pokemons, :trainer_id, :integer # normal field
    # add_references <modified_table_name>, <target_table_name>, foreign_key: true
    add_reference :pokemons, :trainer, foreign_key: true
  end
end