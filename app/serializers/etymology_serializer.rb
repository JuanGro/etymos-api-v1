class EtymologySerializer < ActiveModel::Serializer
  attributes :id, :type_etymology, :language, :graeco_latin_etymology, :pattern, :meaning_etymology, :image_etymology, :etymos_version_etymology,
  :etymology_order
  has_many :words

  def etymology_order
    if object.word_etymologies.length > 0
      object.word_etymologies[0].etymology_order
    end
  end
end
