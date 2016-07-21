class Feedback < ActiveRecord::Base
  validates :name,      presence: true
  validates :age,       presence: true
  validates :email,     presence: true
  validates :datetime,  presence: true

end
