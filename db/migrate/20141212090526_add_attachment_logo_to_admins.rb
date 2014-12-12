class AddAttachmentLogoToAdmins < ActiveRecord::Migration
  def self.up
    change_table :admins do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :admins, :logo
  end
end