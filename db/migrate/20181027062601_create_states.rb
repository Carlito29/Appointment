class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.string :name
      t.text :description
      t.references :assignation, foreign_key: true

      t.timestamps
    end
  end
end
