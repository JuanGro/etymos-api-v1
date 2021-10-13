class Etymology < ApplicationRecord
  # Associations
  has_many :word_etymologies
  has_many :words, through: :word_etymologies

  # Format before save
  before_save {self.pattern = pattern.downcase}
  before_save {self.meaning_etymology = meaning_etymology.capitalize}

  # Validations
  validates :type_etymology,
  presence: true,
  inclusion: { in: %w(root prefix suffix),
  message: "%{value} is not a valid type" }

  validates :language,
  presence: true,
  inclusion: { in: %w(greek latin),
  message: "%{value} is not a valid language" }

  validates :graeco_latin_etymology,
  presence: true

  validates :pattern,
  presence: true

  validates :meaning_etymology,
  presence: true

  validates :image_etymology,
  presence: true

  validates :etymos_version_etymology,
  presence: true
end
