class Programme < ApplicationRecord
  belongs_to :organisation
  has_many :clients
  validates :title, presence: true
end
