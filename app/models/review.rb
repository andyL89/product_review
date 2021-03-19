class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates_length_of :author, maximum: 40
  validates :rating, presence: true
  before_save(:titleize_author)

  private
    def titleize_author
      self.author = self.author.titleize
    end
end