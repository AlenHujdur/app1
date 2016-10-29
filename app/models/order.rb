class Order < ActiveRecord::Base
  include ActiveModel::Serialization
  #include ActiveModel::Serializers::JSON
  #include ActiveModel::Serializers::Xml
 belongs_to :product

 def self.total
    return  Order.sum("quantity")
 end

 def self.suma(x,y)
    @order = Order.find(x)
    @product = Product.find(y)
    return @order.quantity * @product.price
 end

 def self.to_csv(options = {})
   CSV.generate(options) do |csv|
     csv << column_names
     all.each do |order|
       csv << order.attributes.values_at(*column_names)
     end
   end
 end

end
