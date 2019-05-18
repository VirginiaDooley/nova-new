class OrganisationSerializer < ActiveModel::Serializer
  attributes :id, :name, :website
  has_many :programmes
end
