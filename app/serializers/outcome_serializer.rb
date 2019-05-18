class OutcomeSerializer < ActiveModel::Serializer
  attributes :id, :grade, :description
  belongs_to :client
end
