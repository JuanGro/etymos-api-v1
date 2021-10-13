class WordEtymologySerializer < ActiveModel::Serializer
  attributes :id, :word_id, :etymology_id, :etymology_order
  has_one :word
  has_one :etymology
end
