require 'rails_helper'

describe Product do
    it { should have_many(:reviews) }
    it { should validate_presence_of :name }
    it { should validate_length_of(:name).is_at_most(100) }
    it("titleizes the name of a product") do
      product = Product.create({name: "casio keyboard", cost: 50, country_of_origin: "Japan"})
      expect(product.name()).to(eq("Casio Keyboard"))
    end
end