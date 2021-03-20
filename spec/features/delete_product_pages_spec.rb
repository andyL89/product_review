require 'rails_helper'

describe "the delete a product process" do
  it "deletes a products details" do
    product = Product.new({name: 'Juno 106', cost: '1,100', country_of_origin: 'Japan'})
    product.save
    visit product_path(product)
    click_on 'Delete product'
    expect(page).to have_content 'Product deleted!'
  end
end