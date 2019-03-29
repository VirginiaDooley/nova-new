class CreateOutcomes < ActiveRecord::Migration[5.2]
  def change
    create_table :outcomes do |t|
      t.text :description
      t.integer :grade

      t.timestamps
    end
  end
end
