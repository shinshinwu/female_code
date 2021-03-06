source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails',        '4.2.0'
# Use SCSS for stylesheets
gem 'sass-rails',   '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier',     '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder',     '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc',         '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# AUTHENTICATION

gem 'omniauth-github', '~> 1.1.2'                       # for oath login wiht github

# DATABASE
gem 'mysql2',          '~> 0.3.18'                      # db

# TEMPLATING
gem 'haml',            '~> 4.0.7'                       # simplified erb
gem 'gon',             '~> 5.2.3'                       # plugin to jam ruby variables to have them accessible for js
gem 'city-state',      '~> 0.0.13'                      # helper to layout all cities, states and countries
gem 'sanitize-url',    '~> 0.1.4'

gem 'honeybadger',      '~> 2.0'                        # for production debugging

gem 'font-awesome-rails', '~> 4.5.0.1'                  # icon assets

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'pry-byebug',    '~> 3.3.0'
  gem 'pry-rails',     '~> 0.3.4'                       # prettier console output and access to pry methods

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console',   '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'better_errors', '~> 2.1.1'                       # better error display for debugging
  gem 'binding_of_caller', '~> 0.7.2'

  gem 'dotenv-rails',  '~> 2.0.2'                       # storing secrets
end

