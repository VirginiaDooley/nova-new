class ClientsProgrammeSerializer < ActiveModel::Serializer
  attributes :id, :programme_term, :programme_year, :client_status, :client_id, :programme_id
  belongs_to :client
  belongs_to :programme
end
