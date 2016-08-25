source 'https://ruby.taobao.org/'

ruby '2.3.0'

gem "carrierwave"
gem "mini_magick"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'

gem 'devise'
gem 'twitter-bootstrap-rails'

#for devise translation
gem 'devise-i18n'

# admin 
gem 'rails_admin'
gem "rails_admin_import", "~> 1.2"
gem 'enumerize'

# text editor
gem 'ckeditor', github: 'galetahub/ckeditor'

# admin authentication
gem 'cancancan', '~> 1.10'

# crawler
gem 'nokogiri'
gem 'pry'
gem 'whenever'
gem 'iconv'
gem 'rchardet19'

gem 'haml-rails', :group => :development
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
gem 'haml'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'validates_zipcode'

gem 'validates_timeliness', '~> 4.0'

#video
gem 'videojs_rails'
# for search/filter
gem "searchkick" 
gem 'elasticsearch-model' 
gem 'elasticsearch-rails'

gem 'jquery-turbolinks'

# for multi pages
gem 'will_paginate', '~> 3.0.5'


# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  gem 'jasmine-rails' # if you plan to use JavaScript/CoffeeScript
  # for deploy
  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
end

gem 'puma'

# setup Cucumber, RSpec, autotest support
group :test do
  gem 'coveralls', require: false
  gem 'codeclimate-test-reporter', require: nil
  gem 'rspec-rails', '~> 3.0.0.beta'
  gem 'simplecov', :require => false
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels' # basic imperative step defs
  gem 'database_cleaner' # required by Cucumber
  gem 'autotest-rails'
  gem 'factory_girl_rails' # if using FactoryGirl
  gem 'metric_fu'        # collect code metrics
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# group :production do
#   gem 'pg' # for Heroku deployment
# end

# gem "codeclimate-test-reporter", group: :test, require: nil

