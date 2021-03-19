require 'rails_helper'

describe "the add a review process" do
  it "adds a review" do
    product = Product.new({name: 'Juno-106'})
    product.save
    visit product_path(product)
    click_link 'Add a review'
    fill_in 'Author', :with => 'Andy'
    fill_in 'Content body', :with => "If you are looking for classic 80's synth tones, look no further! Works like a charm! Will definitely buy again!"
    fill_in 'Rating', :with => '5'
    click_on 'Create Review'
    expect(page).to have_content 'Review added!'
    expect(page).to have_content 'Andy'
  end

  it "gives an error when no author is entered" do
    product = Product.new({name: 'Juno-106'})
    product.save
    visit new_product_review_path(product.id)
    click_on 'Create Review'
    expect(page).to have_content "Author can't be blank"
  end
end