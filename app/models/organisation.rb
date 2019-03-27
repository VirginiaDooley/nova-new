class Organisation < ApplicationRecord
  has_many :programmes
  validates :name, presence: true
  validates :website, presence: true

  def website_domain
    self.website.split("www.").last
  end

end
