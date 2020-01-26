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
    puts "Storing new appointment with " + @sender.to_s + " " + @receiver.to_s + " " + @name.to_s + "." + @time.to_s + "." + @accepted.to_s + "."
    @@appointment.insert(
        appointment_sender: @sender.to_i,
        appointment_receiver: @receiver.to_s,
        appointment_name: @name.to_s,
        appointment_time: @time.to_s,
        appointment_accepted: (!!@appointment_accepted),
    )
    @@no_of_appointments = @@no_of_appointments + 1
    puts "We've stored " + @@no_of_appointments.to_s + "!"
  end

  def lookup_specific
    @@appointment.where(id: @sender, name: @receiver, email: @name, timezone: @time, accepted: @accepted)
  end

  def lookup_all
    @@appointment.all
  end
end