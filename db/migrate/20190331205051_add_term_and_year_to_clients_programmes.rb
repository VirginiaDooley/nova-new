class AddTermAndYearToClientsProgrammes < ActiveRecord::Migration[5.2]
  def change
    add_column :clients_programmes, :term, :string
    add_column :clients_programmes, :year, :integer
    add_column :clients_programmes, :status, :boolean
  end
end
