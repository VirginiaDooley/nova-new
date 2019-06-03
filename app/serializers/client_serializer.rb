class ClientSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :first_name, :last_name, :email, :phone, :address1, :address2, :city, :post_code, :country
  has_many :clients_programmes
  has_many :programmes, through: :clients_programmes
  has_many :outcomes
end
