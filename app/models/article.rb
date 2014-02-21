class Article < ActiveRecord::Base
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :content, presence: true
  validates :categories, presence: true
end
