Product = require('../source/javascripts/product.coffee')

casper.test.begin 'Product has a name', 1, (test) ->
  name = 'Example Name'
  product = new Product(name, 5)
  test.assertEquals(product.name, name)
  test.done()

casper.test.begin 'Product has a price', 1, (test) ->
  price = 5
  product = new Product('Example Name', price)
  test.assertEquals(product.price, price)
  test.done()

casper.test.begin 'Product calculates sale price', 1, (test) ->
  product = new Product('Example', 5)
  test.assertEquals product.sale_price(0.1), 4.5
  test.done()
