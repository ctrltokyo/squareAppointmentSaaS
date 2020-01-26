require 'sequel'
require_relative '../config/database'


class Appointment
  @@no_of_appointments = 0
  @@appointment = DB[:appointment]

  def initialize(sender, receiver, name, time, appointment_accepted)
    @sender = appointment_sender
    @receiver = appointment_receiver
    @name = appointment_name
    @time = appointment_time
    @accepted = appointment_accepted
  end

  def store
    puts "Storing new appointment with " + @sender.to_s + " " + @receiver.to_s + " " + @name.to_s + "." + @time.to_s + "." + @appointment_accepted.to_s + "."
    @@appointment.insert(
        appointment_sender: @sender.to_i,
        appointment_receiver: @receiver.to_s,
        appointment_name: @name.to_s,
        appointment_time: @time.to_s,
        appointment_accepted: (!!@appointment_accepted),
    )
    puts "We've stored " + @@no_of_customers.to_s + "!"
  end

  def lookup_specific
    @@customer.where(id: @cust_id, name: @cust_name, email: @cust_email, timezone: @cust_timezone)
  end

  def lookup_all
    @@customer.all
  end
end