class WordSerializer < ActiveModel::Serializer
  attributes :id, :word_word, :meaning_word, :image_word, :etymos_version_word
  has_many :etymologies

  def etymologies
    object.etymologies.order("etymology_order")
  end
end
