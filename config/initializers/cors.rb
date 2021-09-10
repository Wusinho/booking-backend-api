Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3001'

    resource '*',
    headers: :any,
    methods: [:get, :post, :put, :patch, :delete, :options, :head],
    expose: ['Authorization']
  end
  allow do
    origins 'https://priceless-northcutt-f987d7.netlify.app/'

    resource '*',
    headers: :any,
    methods: [:get, :post, :put, :patch, :delete, :options, :head],
    expose: ['Authorization']
  end
end
