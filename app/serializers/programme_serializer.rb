class ProgrammeSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :organisation
  has_many :clients_programmes
  has_many :clients, through: :clients_programmes
  has_many :outcomes, through: :clients
end
