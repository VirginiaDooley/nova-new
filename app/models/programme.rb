class Programme < ApplicationRecord
  belongs_to :organisation

  validates :presence => :name
end
