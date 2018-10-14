class ChangeCurrentInExperiences < ActiveRecord::Migration[5.2]
  def change
    rename_column :experiences, :current, :status
    change_column :experiences, :status, :string
  end
end
