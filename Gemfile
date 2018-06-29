source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'ruby'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use Puma as the app server
gem 'passenger'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'bootstrap-sass'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
 gem 'bcrypt'
 gem 'jquery'
 gem 'react-rails'
 gem 'jquery-rails'
 gem 'nodejs-rails'
 gem 'webpack-rails'
 gem 'webpacker'
 gem 'yarn'
 gem 'will_paginate'
 gem 'devise'
 gem 'guard'
 gem 'minitest'
 gem 'rails-controller-testing'
 gem 'rb-readline'
 gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
 gem 'faker'
 gem 'bootstrap-will_paginate'
 gem 'nokogiri'
 gem 'carrierwave'
 gem 'pdfjs_viewer-rails'
 gem 'twitter'
 gem 'dotenv-rails'
 # Server jQuery from a CDN.
 gem 'jquery-cdn'
 gem 'coffee-script'

group :production do
# Use pg as the database for Active Record
gem 'pg'

end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'sqlite3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
