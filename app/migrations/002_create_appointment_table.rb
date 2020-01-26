Sequel.migration do
  up do
    create_table(:appointment) do
      primary_key :id
      foreign_key :appointment_sender, :customer, null: false, on_delete: :cascade
      foreign_key :appointment_receiver, :customer, null: false, on_delete: :cascade
      String :appointment_name, null: false
      String :appointment_time, null: false
      FalseClass :appointment_accepted
    end
  end
end