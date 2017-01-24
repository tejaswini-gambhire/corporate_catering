
# company class for storing records of companies
class Company
  require 'emailvalidator'
  include Mongoid::Document
  field :name, type: String
  field :phone_no, type: Integer
  field :email, type: String
    
  validates :name, presence: true
  validates :phone_no, length: { is: 10 }
  validates :phone_no, numericality: { only_integer: true }
  validates :email, presence: true, email: true

  has_and_belongs_to_many :vendors
  has_one :address, as: :location
end
