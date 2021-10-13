class Word < ApplicationRecord
  # Associations
  has_one :test
  has_many :word_etymologies
  has_many :etymologies, through: :word_etymologies

  # Format before save
  before_save {self.word_word = word_word.downcase}
  before_save {self.meaning_word = meaning_word.capitalize}

  # Validations
  validates :word_word,
  presence: true,
  uniqueness: true

  validates :meaning_word,
  presence: true

  validates :image_word,
  presence: true

  validates :etymos_version_word,
  presence: true

  def self.get_words(words)
    temp = []
    words[:words].each do |word|
      new_word = Word.find(word[:id])
      if !new_word.nil?
        temp.push(new_word)
      end
    end
    return temp
  end
end
