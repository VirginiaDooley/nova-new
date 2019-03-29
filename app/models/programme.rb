class Programme < ApplicationRecord
  belongs_to :organisation
  has_and_belongs_to_many :clients
  has_many :outcomes, through: :clients
  validates :title, presence: true
end
