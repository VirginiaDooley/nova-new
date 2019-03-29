class Client < ApplicationRecord
  has_and_belongs_to_many :programmes
  has_many :outcomes
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true

  def full_name
    self.first_name + " " + self.last_name
  end

  # def full_address
  #   self.address1 + ", " + self.address2
  # end
end
