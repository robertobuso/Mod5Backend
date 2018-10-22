class AddAddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :click_chest, :boolean
    add_column :experiences, :click_church, :boolean
  end
end
