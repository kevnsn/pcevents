source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
group :development, :test do
  gem 'sqlite3'
  gem 'therubyracer' #for asset pipeline
  gem 'annotate' # to annotate models with information
  gem 'rspec-rails' #for testing
  gem 'webrat'
  gem 'capybara' #rspec dependency; for rspec 'visit'
  gem 'factory_girl_rails' #rspec dependency; for rspec factory objects
end
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'bootstrap-sass' #for bootstrap
# To use ActiveModel has_secure_password
 gem 'bcrypt-ruby', '~> 3.0.1'
#for datetime validation in event generation
gem 'date_validator'
gem 'geokit'
gem 'geokit-rails'
#for event geographic info

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :production do
  gem 'pg', '0.12.2' #for heroku deployments
end
