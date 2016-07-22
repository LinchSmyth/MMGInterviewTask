class Feedback < ActiveRecord::Base

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  VALID_NAME_REGEX = /\A[A-Z]+[a-z' ]{2,}+[A-Z][a-z']{1,}+\z/
  # регулярное выражение пропускает только два слова разделенных пробелом
  # оба слова должны начинаться с большой буквы, и иметь:
  # Имя:      2+ буквы
  # Фамилия:  2+ буквы

  validates :name,      presence: true, format:     { with: VALID_NAME_REGEX }
  validates :email,     presence: true, format:     { with: VALID_EMAIL_REGEX }
  validates :age,       inclusion:  { within: 17..65, message: "is invalid: you must be from 17 to 65 years old" }
  validates :datetime,  presence: true
  # paperclip validations
  has_attached_file    :attachment
  validates_attachment :attachment,
                       :content_type => {:content_type => %w(image/jpeg
                                                             image/jpg
                                                             image/png
                                                             application/pdf
                                                             application/msword
                                                             application/vnd.openxmlformats-officedocument.wordprocessingml.document)
                                        }


end
