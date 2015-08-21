class AddOrganizationRefToServices < ActiveRecord::Migration
  def change
    remove_column :services, :organization
    add_reference :services, :organization, index: true
  end
end
