Sequel.migration do
  up do
    create_table(:appointment) do
      primary_key :id
      Integer :appointment_sender, null: false
      Integer :appointment_receiver, null: false
      String :appointment_name, null: false
      String :appointment_time, null: false
      FalseClass :appointment_accepted
    end
  end
end