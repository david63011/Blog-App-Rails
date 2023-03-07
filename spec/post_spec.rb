require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
  subject do
    Post.new(author_id: first_user.id, content: 'This is a test post.', likes_counter: 0, comments_counter: 0)
  end
  before { subject.save }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a content' do
    subject.content = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an author' do
    subject.author_id = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a likes counter' do
    subject.likes_counter = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a comments counter' do
    subject.comments_counter = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a content longer than 1000 characters' do
    subject.content = 'a' * 1001
    expect(subject).to_not be_valid
  end

  it 'is not valid with a content shorter than 1 character' do
    subject.content = 'a' * 0
    expect(subject).to_not be_valid
  end

  it 'is not valid with a likes counter less than 0' do
    subject.likes_counter = -1
    expect(subject).to_not be_valid
  end

  it 'is not valid with a comments counter less than 0' do
    subject.comments_counter = -1
    expect(subject).to_not be_valid
  end

  it 'is not valid with a content that is not a string' do
    subject.content = 1
    expect(subject).to_not be_valid
  end

  it 'is not valid with a likes counter that is not an integer' do
    subject.likes_counter = 'a'
    expect(subject).to_not be_valid
  end

  it 'is not valid with a comments counter that is not an integer' do
    subject.comments_counter = 'a'
    expect(subject).to_not be_valid
  end
end
