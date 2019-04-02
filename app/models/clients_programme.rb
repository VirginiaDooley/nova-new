class ClientsProgramme < ApplicationRecord
  belongs_to :client
  belongs_to :programme

  # def status_options
  #   s = ["interviewed", "enroled", "due for assessment", "graduated", "volunteering", "employed"]
  # end

end
