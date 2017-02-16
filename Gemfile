source 'https://rubygems.org'
ruby '2.3.3'

gem 'rails', '~> 5.0.1'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'bootstrap-sass', '~> 3.3.7'
gem 'bootstrap-table-rails', '~> 1.11'
gem 'search_cop', '~> 1.0'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
  gem 'dotenv-rails', '~> 2.2'
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'pry-rails'
  gem 'pry-doc', require:false
  gem 'pry-coolline'
  gem 'pry-byebug', platforms: :mri
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
