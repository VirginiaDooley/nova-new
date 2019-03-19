class CreateClientsProgrammesJoinTable < ActiveRecord::Migration[5.2]
  def change
    # This is enough; you don't need to worry about order
    create_join_table :clients, :programmes
  #
  #   # If you want to add an index for faster querying through this join:
  #   create_join_table :clients, :programmes do |t|
  #     t.index :client_id
  #     t.index :programme_id
  #   end
  end
end
