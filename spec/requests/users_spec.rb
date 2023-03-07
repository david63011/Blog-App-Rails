require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /users' do
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
end
