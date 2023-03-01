require 'rails_helper'

RSpec.describe Like, type: :model do
  user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.',
                     posts_counter: 5)
  post = Post.create(title: 'My first post', author_id: user.id, comments_counter: 5, likes_counter: 5)
  like = Like.create(author_id: user.id, posts_id: post.id, author: user)


  it 'is valid with a user' do
    like.author = user
    expect(like).to be_valid
  end

  it 'is vaild with a post' do
    like.post = post
    expect(like).to be_valid
  end

  it 'is not valid without a author_id' do
    like.author_id = nil
    expect(like).to_not be_valid
  end

  it 'is not valid without a posts_id' do
    like.posts_id = nil
    expect(like).to_not be_valid
  end

  it 'is valid with a post'
  like.post = post
  expect(like).to be_valid
end
