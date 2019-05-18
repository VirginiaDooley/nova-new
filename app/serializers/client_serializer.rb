class ClientSerializer < ActiveModel::Serializer
  attributes :id
  has_many :clients_programmes
  has_many :programmes, through: :clients_programmes
  has_many :outcomes
end
