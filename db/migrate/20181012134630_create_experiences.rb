class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.boolean :current
      t.string :audio

      t.timestamps
    end
  end
end
