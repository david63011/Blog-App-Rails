require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
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

  describe 'GET /show' do
    it 'assigns the requested post as @post' do
      post = Post.create! valid_attributes
      get :show, params: { id: post.to_param }
      expect(assigns(:post)).to eq(post)
    end
  end
end
