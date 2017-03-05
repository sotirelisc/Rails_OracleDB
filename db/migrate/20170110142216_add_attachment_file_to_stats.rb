class AddAttachmentFileToStats < ActiveRecord::Migration
  def self.up
    change_table :stats do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :stats, :file
  end
end
