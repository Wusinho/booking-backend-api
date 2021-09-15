require 'rails_helper'

describe 'Authentication', type: :request do
  describe 'POST /login #Users' do
    let(:user) { create(:user) }

    it 'authenticates user with username and password' do
      post '/login', params: { authentication: { username: user.username, password: user.password } }
      expect(response).to have_http_status(:success)
    end
    it 'authentication fails' do
      post '/login', params: { authentication: { email: user.username, password: 'sarasa' } }
      expect(response).to have_http_status(:no_content)
    end
  end
end
