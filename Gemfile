source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]


#Twitter's Bootstrap, converted to Sass and ready to drop into Rails or Compass
gem 'bootstrap-sass', '~> 3.2.0.2'

#Forms made easy!
gem 'simple_form', '~> 3.0.2'

#Flexible authentication solution for Rails with Warden
gem 'devise', '~> 3.4.0'

# Easy upload management for ActiveRecord
gem 'paperclip', '~> 4.2.0'

#Masonry will rock your world!
gem 'masonry-rails', '~> 0.2.1'

#Acts As Votable is a Ruby Gem specifically written for Rails/ActiveRecord models.
gem 'acts_as_votable', '~> 0.10.0'

group :development, :test do
  gem 'guard', '~> 2.7.0'
  gem 'rspec-rails', '~> 3.1.0'
  gem 'factory_girl_rails', '~> 4.5.0' #use factories for test, not fixtures
end

group :test do
  gem 'capybara', '~> 2.4.4' #intuitive testing language
  gem 'selenium-webdriver', '~> 2.43.0' #allows js in tests
  gem 'spork', '~> 0.9.2' #quicker tests
  gem 'guard-spork', '~> 1.5.1' #automatic tests on file save
  gem 'guard-rspec', '~> 4.3.1' #ditto
  gem 'database_cleaner', '~> 1.3.0' #clean the database in tests easily
  gem 'launchy', '~> 2.4.2' #for opening up the page while debugging tests

# Uncomment this line on OS X.
# gem 'growl', '1.0.3'

# Uncomment these lines on Linux.
# gem 'libnotify', '0.8.0'

# Uncomment these lines on Windows.
# gem 'rb-notifu', '0.0.4'
# gem 'wdm', '0.1.0'
end