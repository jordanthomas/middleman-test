require 'spec_helper'

describe 'products listing', :type => :feature, :js => true do
  before do
    visit '/products.html'
  end

  it 'has the correct title' do
    page.should have_title('Products')
  end

  it 'has a product listing' do
    page.should have_selector('.product-listing')
  end
end
