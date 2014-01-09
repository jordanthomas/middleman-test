casper.test.begin 'Products page', 3, (test) ->
  casper.start 'http://localhost:4567/products.html', ->
    test.assertTitle 'Products', 'Products page has correct title'
    test.assertExists '.product-listing ul', 'Products page has a product listing'
    test.assertEval ->
      __utils__.findAll('.product-listing li').length is 4
    , 'Products page has 4 products'

  casper.run ->
    test.done()
