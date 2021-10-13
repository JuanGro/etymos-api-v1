class TestSerializer < ActiveModel::Serializer
  attributes :id, :phrase, :etymos_version_test
  belongs_to :word
  has_many :options

  def options
    object.options.order("RANDOM()")
  end
end
