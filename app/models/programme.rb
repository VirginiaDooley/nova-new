class Programme < ApplicationRecord
  belongs_to :organisation

  validates :title, presence :true
end
