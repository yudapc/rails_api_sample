class Article < ApplicationRecord
  belongs_to :category
  scope :published, -> { where(published: true) }

  validates :title, :category_id, :content_body, presence: true
  validates :category_id, numericality: true
  
end
