require_relative '../controllers/appointment'
require_relative '../controllers/customer'


customer1 = Customer.new(1)
customer2 = Customer.new(2)

object = Appointment.new(customer1.lookup_specific, customer2.lookup_specific, "Testing Appointment", "Tuesday", true)
object.store
puts object.lookup_all