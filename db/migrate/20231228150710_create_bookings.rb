class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :customer, foreign_key: true
      t.string :customer_name
      t.string :phone_number
      t.string :location
      t.string :apartment
      t.string :house_number
      t.string :carpet_size
      t.datetime :collection_time

      t.timestamps
    end
  end
end
