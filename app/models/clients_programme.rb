class ClientsProgramme < ApplicationRecord
  belongs_to :client
  belongs_to :programme 
end
