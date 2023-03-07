require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /posts' do
    before(:each) do
      get '/posts'
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
    it 'renders the index template' do
      expect(response).to render_template(:index)
    end
    it 'should return placeholder test' do
      expect(response.body).to include('Placeholder test')
    end
    it 'does not render a show template' do
      expect(response).to_not render_template(:show)
    end
  end

  describe 'Get #show' do
    let(:post) { Post.create(author_id: 1, content: 'This is a test post.', likes_counter: 0, comments_counter: 0) }
    before(:each) do
      get "/posts/#{post.id}"
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
    it 'renders the show template' do
      expect(response).to render_template(:show)
    end
    it 'does not render the index template' do
      expect(response).to_not render_template(:index)
    end
  end
end
