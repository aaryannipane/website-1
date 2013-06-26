source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.rc2'

# Use sqlite3 -not- as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0.rc2'
# gem 'compass-rails', branch: 'rails4'
gem "zurb-foundation", "~> 4.2.2"
gem "font-awesome-sass-rails", "~> 3.0.2.2"
gem "slim", "~> 2.0.0"
gem 'sorcery', git: 'git://github.com/NoamB/sorcery.git', branch: 'master'
gem "cancan", "~> 1.6.10"
gem 'simple_form', git: 'git://github.com/plataformatec/simple_form', branch: 'master'
gem 'decent_exposure' # expose controller variables in views

group :development do
  gem "slim-rails" # generator
end

group :test do
  gem "rspec-rails", ">= 2.0.1"
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'database_cleaner'
end

group :test, :development do
  gem 'rb-fsevent', :require => false  # mac os x
  gem 'debugger'
end

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
