class CreateBadges < ActiveRecord::Migration[6.0]
  def change
    create_table :badges do |t| #t => column fields
      t.string    :name
      t.references :trainer, foreign_key: true
      t.timestamps # add 2 columns, `created_at` and `updated_at`
    end
  end
end