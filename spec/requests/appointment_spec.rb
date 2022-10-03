require 'rails_helper'

describe 'Appointments API', type: :request do
  it 'returns all cars' do
    get '/appointments'

    expect(response).to have_http_status(:success)
  end
end
