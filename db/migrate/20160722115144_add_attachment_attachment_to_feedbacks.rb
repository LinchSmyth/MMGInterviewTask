class AddAttachmentAttachmentToFeedbacks < ActiveRecord::Migration
  def self.up
    change_table :feedbacks do |t|
      t.attachment :attachment
    end
  end
end

