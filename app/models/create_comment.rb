class CreateComment < ApplicationRecord
  belongs_to :author, class_name: 'CreateUser', foreign_key: :author_id
  has_many :create_comments, foreign_key: :create_posts_id

  def update_comments_counter
    post.increment(:comments_counter)
  end
end
