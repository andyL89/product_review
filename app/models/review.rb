class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates_length_of :author, maximum: 40
  validates :content_body, presence: true
  validates_length_of :content_body, minumum: 50, maximum: 250, message: "must be 50-250 characters"
  validates :rating, presence: true
  before_save(:titleize_author)

  private
    def titleize_author
      self.author = self.author.titleize
    end
end