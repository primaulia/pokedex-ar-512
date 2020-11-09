class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t| #t => column fields
      t.string    :name
      t.string    :description
      t.timestamps # add 2 columns, `created_at` and `updated_at`
    end
  end
end