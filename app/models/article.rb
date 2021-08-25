class Article < ApplicationRecord
  with_options presence: true do
    validates :image
    validates :title
    validates :text
    validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  belongs_to :user
  has_one_attached :image
end
