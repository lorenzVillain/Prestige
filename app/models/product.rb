class Product < ActiveRecord::Base

  CATEGORIES = ['watches', 'jewelry', 'bags']


  has_many  :orders
  belongs_to :user
end

=begin
Other way to do it via as enum
  as_enum :category, watches: 2, jewelry: 1, bags: 0
product = Product.new
product.category = :jewelry
product.jewelry?

=end
