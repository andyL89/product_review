require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add new product'
    fill_in 'Name', :with => 'Juno-106'
    fill_in 'Cost', :with => '1,100'
    fill_in 'Country of origin', :with => 'Japan'
    click_on 'Create Product'
    expect(page).to have_content 'Product added!'
    expect(page).to have_content 'Juno-106'
  end

  it "gives an error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end
end