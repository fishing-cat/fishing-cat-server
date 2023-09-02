source 'https://rubygems.org'
ruby '3.2.2'

gem 'rails', '~> 7.0', '>= 7.0.7.2'
gem "sprockets-rails"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "sassc-rails"
gem 'bootstrap', '~> 5.3.1'
gem 'jquery-rails'
gem 'search_cop', '~> 1.0'
gem 'font-awesome-rails', '~> 4.7'
gem 'hashids', '~> 1.0'

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
  gem 'pry-coolline'
  gem 'pry-byebug', platforms: :mri
  gem 'i18n-tasks', require:false
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
