class OutcomeSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :client
end
