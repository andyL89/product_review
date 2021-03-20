require 'rails_helper'

describe "the update a product process" do
  it "updates a products details" do
    product = Product.new({name: 'Juno 106', cost: '1,100', country_of_origin: 'Japan'})
    product.save
    visit product_path(product)
    click_link 'Edit product'
    fill_in 'Name', :with => 'Juno 60'
    fill_in 'Cost', :with => "1,300"
    fill_in 'Country of origin', :with => 'Japan'
    click_on 'Update Product'
    expect(page).to have_content 'Product updated!'
    expect(page).to have_content 'Juno 60'
  end
end