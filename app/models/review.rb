class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates_length_of :author, maximum: 40, message: "must be less than 40 characters"
  validates :content_body, presence: true
  validates_length_of :content_body, minimum: 50, maximum: 250, message: "must be 50-250 characters"
  validates :rating, presence: true
  before_save(:titleize_author)

  def blank_stars
    5 - rating.to_i
  end

  private
    def titleize_author
      self.author = self.author.titleize
    end
end