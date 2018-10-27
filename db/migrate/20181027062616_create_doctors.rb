class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :document
      t.string :name
      t.string :lastName
      t.integer :age
      t.string :phone
      t.string :email
      t.string :address
      t.references :specialty, foreign_key: true

      t.timestamps
    end
  end
end
