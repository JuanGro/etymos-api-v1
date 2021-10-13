class WordEtymology < ApplicationRecord
  # Associations
  belongs_to :word
  belongs_to :etymology

  # Validations
  validates :word_id,
  presence: true

  validates :etymology_id,
  presence: true

  validates :etymology_order,
  presence: true
end
