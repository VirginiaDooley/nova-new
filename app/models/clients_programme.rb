class ClientsProgramme < ApplicationRecord
  belongs_to :client
  belongs_to :programme

  def clients_currently_enrolled(client)
    self.where(:client_status => true, client_id: client.id)
  end

end
