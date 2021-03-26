require 'rails_helper'

describe "the delete a product process" do
  it "deletes a products details" do
    user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd', :admin => true )
    user.save
    visit '/'
    fill_in 'user_email', :with => 'test@example.com'
    fill_in 'user_password', :with => 'f4k3p455w0rd'
    click_on 'commit'
    product = Product.new({name: 'Juno 106', cost: '1,100', country_of_origin: 'Japan'})
    product.save
    visit product_path(product)
    click_on 'Delete product'
    expect(page).to have_content 'Product deleted!'
  end
end