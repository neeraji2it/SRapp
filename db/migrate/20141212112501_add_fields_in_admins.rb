class AddFieldsInAdmins < ActiveRecord::Migration
  def change
     #some additional fields
      add_column :admins, :full_name, :string
      add_column :admins, :address_line1, :string
      add_column :admins, :address_line2, :string
      add_column :admins, :country, :string
      add_column :admins, :city, :string
      add_column :admins, :state, :string
      add_column :admins, :zipcode, :string
      add_column :admins, :mobile, :string
  end
end