Sequel.migration do
  up do
    create_table(:customer) do
      primary_key :id
      Integer :customer_id, null: false
      String :customer_name, null: false
      String :customer_email, null: false
      String :customer_timezone, null: false
    end
  end
end