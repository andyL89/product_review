require 'rails_helper'

describe "the delete a review process" do
  it "deletes a review" do
    product = Product.new({name: 'Juno 106', cost: '1,200', country_of_origin: 'Japan'})
    product.save
    review = product.reviews.new({author: 'Andy', content_body: "If you are looking for classic 80's synth tones, look no further! Works like a charm! Will definitely buy again!", rating: '5'})
    review.save
    visit product_path(product)
    click_link 'Andy'
    click_link 'Delete review'
    expect(page).to have_content 'Review deleted!'
  end
end