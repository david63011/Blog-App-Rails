require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before(:each) do
      get '/users'
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
    let(:user) { User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.') }
    it 'assigns the requested user as @user' do
      get :show, params: { id: user.to_param }
      expect(assigns(:user)).to eq(user)
    end
    it 'renders the show template' do
      get :show, params: { id: user.to_param }
      expect(response).to render_template(:show)
    end
  end
end
