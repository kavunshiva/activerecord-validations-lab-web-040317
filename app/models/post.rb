class Post < ActiveRecord::Base
  include ActiveModel::Validations
  validates :title, presence: true
  validates :title, format: {with: %r{(Won't Believe|Secret|Top [0-9]|Guess)}}
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
end
