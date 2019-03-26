class AddWebsiteToOrganisation < ActiveRecord::Migration[5.2]
  def change
    add_column :organisations, :website, :string
  end
end
