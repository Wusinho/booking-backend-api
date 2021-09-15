require 'rails_helper'

describe 'POST /users - success', type: :request do
  let(:new_user) do
    {
      username: 'somebody',
      password: '123456',
      password_confirmation: '123456'
    }
  end

  it 'creates a new user and logs it in' do
    post '/users', params: new_user
    expect(response).to have_http_status(:success)
  end
end

describe 'POST /users - registration missing password', type: :request do
  let(:without_password) do
    {
      username: 'somebody'
    }
  end
  it 'fails and return error message' do
    post '/users', params: without_password
    expect(response).to have_http_status(:no_content)
  end
end
