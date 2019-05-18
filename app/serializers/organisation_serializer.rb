class OrganisationSerializer < ActiveModel::Serializer
  attributes :id
  has_many :programmes
end
