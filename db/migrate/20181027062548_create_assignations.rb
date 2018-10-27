class CreateAssignations < ActiveRecord::Migration[5.1]
  def change
    create_table :assignations do |t|
      t.text :diagnostic
      t.integer :n_room
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
