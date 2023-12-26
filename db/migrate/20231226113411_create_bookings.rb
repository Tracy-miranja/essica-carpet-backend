# db/seeds.rb
admin = Admin.create(name: 'Admin User', email: 'admin@example.com', password: 'password')
customer = Customer.create(name: 'Customer User', email: 'customer@example.com', password: 'password')

# Create a booking associated with the customer
booking = Booking.create!(
  customer_id: customer,  # Associate the booking with the customer
  customer_name: 'Customer User',
  phone_number: '123456789',
  location: 'Sample Location',
  apartment: 'Sample Apartment',
  house_number: '123',
  carpet_size: 'Large',
  collection_time: Time.current
)

# Output some information for verification
puts "Admin created: #{admin.email}"
puts "Customer created: #{customer.email}"
puts "Booking created for customer #{customer.email}, booking ID: #{booking.id}"
