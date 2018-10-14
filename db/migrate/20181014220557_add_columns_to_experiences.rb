class AddColumnsToExperiences < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :flower_one, :boolean
    add_column :experiences, :flower_two, :boolean
    add_column :experiences, :flower_three, :boolean
    add_column :experiences, :drag_book, :boolean
    add_column :experiences, :take_flower_one, :boolean
  end
end
