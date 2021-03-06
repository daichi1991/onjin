source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2', '>= 6.0.2.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
gem "bootstrap-sass", "~>3.3.6"
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

gem 'uglifier'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'mysql2'

gem 'annotate'

# for security
gem 'rack-attack'

gem 'active_decorator'

gem 'rack-mini-profiler', require: false

gem 'exception_notification'
gem 'slack-notifier'

gem 'whenever', require: false

# for file upload
gem 'carrierwave'
gem 'mini_magick'

# for user
gem 'devise'

gem 'split', require: 'split/dashboard'

gem 'rails-i18n'
gem 'devise-i18n-views'

gem 'meta-tags'

gem 'dotenv-rails', require: 'dotenv/rails-now'

gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'

gem 'acts-as-taggable-on'
gem 'cancancan'
gem 'ransack'

gem 'kaminari'

gem 'chartkick'

gem 'retryable'

gem 'jp_prefecture'

gem 'socialization'

gem 'public_activity'

gem 'config'

gem 'audiojs-rails'

gem 'font-awesome-sass', '~> 5.4.1'

gem 'counter_culture', '~> 1.8'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'rspec-rails', '~> 3.6'
  gem "factory_bot_rails"
  gem 'faker'
  gem 'rails_best_practices'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'rubocop', require: false
  gem 'rubocop-rails'

  gem 'better_errors'
  gem 'binding_of_caller'
  gem "awesome_print"
  gem 'brakeman', :require => false
  gem 'guard-rspec', require: false
  gem 'terminal-notifier'
  gem 'terminal-notifier-guard'

  gem 'letter_opener'
  gem 'letter_opener_web'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end
