class Organisation < ApplicationRecord
  has_many :programmes
  validates :name, presence: true
end
