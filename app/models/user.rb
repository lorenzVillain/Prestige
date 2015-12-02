class User < ActiveRecord::Base

  has_many :products # User to product is 1 to N relationship
  has_many :orders # User to orders is 1 to N relationship
  devise   :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable
end
