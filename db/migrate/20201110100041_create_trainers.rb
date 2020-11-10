class CreateTrainers < ActiveRecord::Migration[6.0]
  def change
    create_table :trainers do |t| #t => column fields
      t.string    :name
      t.timestamps # add 2 columns, `created_at` and `updated_at`
    end
  end
end