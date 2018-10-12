class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :type
      t.boolean :completed
      t.references :experience, foreign_key: true

      t.timestamps
    end
  end
end
