class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :document
      t.string :name
      t.string :lastName
      t.integer :age
      t.string :sex
      t.string :eps
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
