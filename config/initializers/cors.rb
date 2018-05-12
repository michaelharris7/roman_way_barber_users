# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

# config.middleware.use Rack::Cors do
# Rails.application.config.middleware.insert_before 0, Rack::Cors do
Rails.application.config.middleware.use Rack::Cors do
  allow do
    origins 'https://romanway-barber-frontend.herokuapp.com', 'http://localhost:4200'

    # , 'localhost:4200'
    # 'https://romanway-barber-users.herokuapp.com', 'http://localhost:3000'

    resource '*',
      headers: :any,
      expose: ['access-token', 'expiry', 'token-type', 'uid', 'client'],
      methods: [:get, :post, :options, :delete, :put]
  end
end