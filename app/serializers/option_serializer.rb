class OptionSerializer < ActiveModel::Serializer
  attributes :id, :word_option, :correct
  belongs_to :test
end
