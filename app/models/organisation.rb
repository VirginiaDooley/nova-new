class Organisation < ApplicationRecord
  has_many :programmes

  validates :presence => :name
end
