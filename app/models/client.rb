class Client < ApplicationRecord
  has_and_belongs_to_many :programmes
  validates :first_name, presence: true
  validates :last_name, presence: true

  def full_name
    self.first_name + self.last_name
  end
end
