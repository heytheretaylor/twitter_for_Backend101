class AddAttachmentPhotoToWhiskeys < ActiveRecord::Migration
  def self.up
    change_table :whiskeys do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :whiskeys, :photo
  end
end
