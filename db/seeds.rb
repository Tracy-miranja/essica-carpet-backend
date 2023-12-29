# Create customers
customer1 = Customer.create(
  name: 'Tracy miranja',
  email: 'tracy@example.com',
  phone_number: '0769212978',
  location: '456 Park Avenue, Cityville',
  password: 'password123'
)

# Create bookings with valid customer references
Booking.create(
  customer: customer1,
  customer_name: customer1.name,
  phone_number: customer1.phone_number,
  location: '456 Park Avenue, Cityville',
  apartment: 'Apartment 101',
  house_number: '456',
  carpet_size: 'Large',
  collection_time: Time.current
)
