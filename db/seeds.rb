# db/seeds.rb
admin = Admin.create(name: 'Admin User', email: 'admin@example.com', password: 'password')
customer = Customer.create(name: 'Customer User', email: 'customer@example.com', password: 'password')

Booking.create(
  customer_id: 1,
  customer_name: 'Customer User',  
  phone_number: '123456789',       
  location: 'Sample Location',     
  apartment: 'Sample Apartment',    
  house_number: '123',
  carpet_size: 'Large',
  collection_time: Time.current
)
