class Outcome < ApplicationRecord
  belongs_to :client
  validates :grade, :description, presence: true
end
