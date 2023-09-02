source "https://rubygems.org"
ruby "3.2.2"

gem "bootsnap", require: false
gem "bootstrap", "~> 5.3.1"
gem "font-awesome-rails", "~> 4.7"
gem "hashids", "~> 1.0", ">= 1.0.6"
gem "importmap-rails"
gem "puma"
gem "rails", "~> 7.0", ">= 7.0.7.2"
gem "search_cop", "~> 1.2", ">= 1.2.3"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

group :production do
  gem "pg"
end

group :development, :test do
  gem "byebug", platform: :mri
  gem "dotenv-rails", "~> 2.2"
  gem "sqlite3"
end

group :development do
  gem "i18n-tasks", require: false
  gem "listen", "~> 3.0.5"
  gem "pry-byebug", platforms: :mri
  gem "pry-coolline"
  gem "pry-rails"
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
