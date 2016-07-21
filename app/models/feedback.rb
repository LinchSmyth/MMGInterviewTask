class Feedback < ActiveRecord::Base

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :name,      presence: true
  validates :age,       presence: true, inclusion:  { within: 17..65, message: "is invalid: you must be from 17 to 65 years old" }
  validates :email,     presence: true, format:     { with: VALID_EMAIL_REGEX }
  validates :datetime,  presence: true

end
