class AddAttachmentAvatarToGuns < ActiveRecord::Migration[4.2]
  def self.up
    change_table :guns do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :guns, :avatar
  end
end
