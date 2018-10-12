class ChangeColumnInTasks < ActiveRecord::Migration[5.2]
  def change
    rename_column :tasks, :type, :category
  end
end
