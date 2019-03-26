class Organisation < ApplicationRecord
  has_many :programmes
  belongs_to :user
  validates :name, presence: true
end
