class AddClientIdToOutcome < ActiveRecord::Migration[5.2]
  def change
    add_column :outcomes, :client_id, :integer
  end
end
