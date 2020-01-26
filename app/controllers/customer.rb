require 'sequel'
require_relative '../config/database'


class Customer
  @@no_of_customers = 0
  @@customer = DB[:customer]

  def initialize(id, name, email, timezone)
    @cust_id = id
    @cust_name = name
    @cust_email = email
    @cust_timezone = timezone
  end

  def store
    puts "Storing new customer with " + @cust_id.to_s + " " + @cust_name.to_s + " " + @cust_email.to_s + "."
    @@customer.insert(
        customer_id: @cust_id.to_i,
        customer_name: @cust_name.to_s,
        customer_email: @cust_email.to_s,
        customer_timezone: @cust_timezone.to_s,
    )
    @@no_of_customers = @@no_of_customers + 1
    puts "We've stored " + @@no_of_customers.to_s + "!"
  end

  def lookup_specific
    puts "Here you go."
    @@customer.where(id: @cust_id, name: @cust_name, email: @cust_email, timezone: @cust_timezone)
  end

  def lookup_all
    @@customer.all
  end
end