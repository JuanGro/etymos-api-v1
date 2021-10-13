class Test < ApplicationRecord
  # Associations
  belongs_to :word
  has_many :options

  # Format before save
  before_save {self.phrase = phrase.capitalize}

  # Validations
  validates :phrase,
  presence: true,
  uniqueness: true

  validates :word_id,
  presence: true

  validates :etymos_version_test,
  presence: true
end
