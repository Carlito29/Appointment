class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.datetime :start
      t.datetime :end
      t.integer :enabled
      t.references :doctor, foreign_key: true
      t.references :assignation, foreign_key: true

      t.timestamps
    end
  end
end
