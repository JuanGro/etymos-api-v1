class Option < ApplicationRecord
  # Associations
  belongs_to :test

  # Format before save
  before_save {self.word_option = word_option.downcase}

  # Validations
  validates :word_option,
  presence: true,
  uniqueness: true

  validates :correct,
  inclusion: { in: [true, false]}

  validates :test_id,
  presence: true
end
