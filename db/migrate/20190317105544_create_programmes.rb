class CreateProgrammes < ActiveRecord::Migration[5.2]
  def change
    create_table :programmes do |t|
      t.string :title
      t.integer :org_id
    end
  end
end
