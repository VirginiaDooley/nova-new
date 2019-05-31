class ProgrammeSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :clients
  has_many :outcomes
end
