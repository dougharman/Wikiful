class Category < ActiveRecord::Base
  has_many :article_categories
  has_many :articles, through: :article_categories
  validates :name, presence: true
  validates :content, presence: true
  validates :articles, presence: true
end
