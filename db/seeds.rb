# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




Product.create(title:'Product1', description:'Free-wordpress-hosting-list',image_url:'https://allbloggingtips.com/wp-content/uploads/2011/12/free-wordpress-hosting-list.png', price:2.00)
Product.create(title:'Product2', description:'Mountin',image_url:'http://netdna.webdesignerdepot.com/uploads/2013/11/picjumbo.com_DSC_3274.jpg', price:5.00)
Product.create(title:'Product3', description:'Flowers',image_url:'https://static.pexels.com/photos/27714/pexels-photo-27714.jpg', price:15.00)

Order.create(product_id:1, info:'Information1', quantity:1, orderdate:'2016-26-10' )
Order.create(product_id:2, info:'Information2', quantity:2, orderdate:'2016-27-10' )
Order.create(product_id:3, info:'Information3', quantity:5, orderdate:'2016-28-10' )
