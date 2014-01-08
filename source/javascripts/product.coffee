class Product
  constructor: (@name, @price) ->

  sale_price: (discount) ->
    @price * (1 - discount)

module.exports = Product
