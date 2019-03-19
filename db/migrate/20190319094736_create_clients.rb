class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :city
      t.string :post_code
      t.string :address1
      t.string :address2
      t.string :country

      t.timestamps
    end
  end
end
