Product = require('../../source/javascripts/product.coffee')

describe 'Product', ->
  product = new Product('Example Name', 5)

  it 'has a name', ->
    expect(product.name).toEqual('Example Name')

  it 'has a price', ->
    expect(product.price).toEqual(5)

  it 'calculates a sale price', ->
    expect(product.sale_price(0.1)).toEqual(4.5)
