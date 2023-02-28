class CreateLike < ApplicationRecord
  belongs_to :author, class_name: 'CreateUser', foreign_key: :author_id
  belongs_to :create_posts, class_name: 'CreatePost', foreign_key: :create_posts_id
  after_save :update_likes_counter

  def update_likes_counter
    post.increment(:likes_counter)
  end
end
