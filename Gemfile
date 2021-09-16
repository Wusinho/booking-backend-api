source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'active_model_serializers', '~> 0.10.12'
gem 'annotate', '~> 3.1', '>= 3.1.1'
gem 'bcrypt', '~> 3.1.7'
gem 'database_cleaner', '~> 2.0', '>= 2.0.1'
gem 'faker', '~> 2.19'
gem 'jwt', '~> 2.2', '>= 2.2.3'
gem 'rack-cors', '~> 1.1', '>= 1.1.1'
gem 'rubocop', '>= 1.0', '< 2.0'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '>= 3.26'
  gem 'factory_bot_rails', '~> 6.1'
  gem 'hirb', '~> 0.7.3'
  gem 'rspec', '~> 3.10'
  gem 'rspec-rails', '~> 5.0', '>= 5.0.2'
  gem 'shoulda-matchers', '~> 4.5', '>= 4.5.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
