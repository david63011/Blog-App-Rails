class CreateUser < ApplicationRecord
  has_many :create_comments, foreign_key: :author_id
  has_many :create_posts, foreign_key: :author_id
  has_many :create_likes, foreign_key: :author_id

  def latest_posts
    posts.order(created_at: :desc).limit(3)
  end
end
