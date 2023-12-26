class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :location
      t.string :password_digest
      t.string :username

      t.timestamps
    end
  end
end
