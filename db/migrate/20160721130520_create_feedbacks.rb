class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.string :age
      t.string :email

      t.timestamps null: false
    end
  end
end
