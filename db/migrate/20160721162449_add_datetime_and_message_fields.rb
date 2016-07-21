class AddDatetimeAndMessageFields < ActiveRecord::Migration
  def change
    add_column :feedbacks, :datetime, :string
    add_column :feedbacks, :message, :string
  end
end
