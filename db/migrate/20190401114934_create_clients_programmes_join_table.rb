class CreateClientsProgrammesJoinTable < ActiveRecord::Migration[5.2]
  create_table :clients_programmes do |t|
    t.string :programme_term
    t.integer :programme_year
    t.boolean :client_status
    t.integer :client_id 
    t.integer :programme_id

    t.timestamps
  end
end
