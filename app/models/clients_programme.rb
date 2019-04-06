class ClientsProgramme < ApplicationRecord
  belongs_to :client
  belongs_to :programme
  scope :currently_enrolled, -> { where(client_status: true) }
end
