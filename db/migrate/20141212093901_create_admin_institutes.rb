class CreateAdminInstitutes < ActiveRecord::Migration
  def change
    create_table :admin_institutes do |t|
      t.string :full_name 
      t.string :address_line1
      t.string :address_line2
      t.string :country
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :mobile
      t.timestamps
    end
  end
end