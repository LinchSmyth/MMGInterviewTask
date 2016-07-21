class ChangeTypeOfAgeColumn < ActiveRecord::Migration
  def change
    change_column :feedbacks, :age,  :integer
  end
end
