source 'https://rubygems.org'

ruby '2.3.0'

gem 'rails', github: 'rails/rails'

# Setup
gem 'figaro'

gem 'sqlite3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'

gem 'jquery-rails'
gem 'turbolinks', '~> 5.x'
gem 'jbuilder', '~> 2.0'

#Plugins
gem 'factory_girl_rails'
gem 'faker'
gem 'decent_exposure', '~> 2.3.2'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '3.5.0.beta1'
end

group :development do
  gem 'web-console', github: 'rails/web-console'
  gem 'listen', '~> 3.0.5'
  gem 'quiet_assets'
  gem 'pry-rails'
end

group :test do
  gem 'capybara'
  gem 'capybara-email'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.1'
  gem 'database_cleaner', '~> 1.5.1'
  gem 'launchy'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
