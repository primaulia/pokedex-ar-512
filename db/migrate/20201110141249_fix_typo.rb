class FixTypo < ActiveRecord::Migration[6.0]
  def change
    rename_column :trainers, :addres, :address
  end
end