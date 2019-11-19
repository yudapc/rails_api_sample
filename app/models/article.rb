class Article < ApplicationRecord
  belongs_to :category
  scope :published, -> { where(published: true) }
  validates :title, presence: true
  validates :category_id, presence: true, numericality: true
  validates :content_body, presence: true
end
