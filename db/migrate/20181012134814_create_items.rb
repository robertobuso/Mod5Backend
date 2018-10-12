class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :type
      t.boolean :inventory
      t.boolean :in_vase
      t.references :experience, foreign_key: true

      t.timestamps
    end
  end
end
