class CreatePost < ApplicationRecord
  has_many :create_comments, foreign_key: :create_posts_id
  has_many :create_likes, foreign_key: :create_posts_id
  belongs_to :author, class_name: 'CreateUser', foreign_key: :author_id
  after_save :update_posts_counter

  def latest_comments
    comments.order(created_at: :desc).limit(5)
  end

  def update_posts_counter
    author.increment(:posts_counter)
  end
end
