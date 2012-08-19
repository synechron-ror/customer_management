class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.date :date_of_birth

      t.timestamps
    end
  end
end
