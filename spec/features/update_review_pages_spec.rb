require 'rails_helper'

describe "the update a review process" do
  it "updates a review" do
    user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd', :admin => true )
    user.save
    visit '/'
    fill_in 'user_email', :with => 'test@example.com'
    fill_in 'user_password', :with => 'f4k3p455w0rd'
    click_on 'commit'
    product = Product.new({name: 'Juno 106', cost: '1,200', country_of_origin: 'Japan'})
    product.save
    review = product.reviews.new({author: 'Andy', content_body: "If you are looking for classic 80's synth tones, look no further! Works like a charm! Will definitely buy again!", rating: '5'})
    review.save
    visit product_path(product)
    click_link 'Andy'
    click_link 'Edit review'
    fill_in 'Author', :with => 'Zak'
    fill_in 'Content body', :with => "If you are looking for classic 80's synth tones, look no further! Works like a charm! Will definitely buy again!"
    fill_in 'Rating', :with => '4'
    click_on 'Update Review'
    expect(page).to have_content 'Review updated!'
    expect(page).to have_content 'Zak'
  end
end