source "https://rubygems.org"
ruby "~> 3.3.0"

gem "bootsnap", require: false
gem "bootstrap", "~> 5.3", ">= 5.3.3"
gem "bootstrap-icons-helper", "~> 2.0", ">= 2.0.2"
gem "csv"
gem "dartsass-rails"
gem "importmap-rails"
gem "ostruct" # pry => ostruct, json => ostruct, until Ruby 3.5
gem "propshaft"
gem "puma", ">= 5.0"
gem "rails", "~> 8.0.0"
gem "search_cop", "~> 1.4"
gem "sqids", "~> 0.2.1"
gem "thruster", require: false
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[windows jruby]

group :production do
  gem "pg"
end

group :development, :test do
  gem "brakeman", require: false
  gem "byebug", platform: :mri
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "dotenv-rails", "~> 3.1", ">= 3.1.4"
  gem "rubocop-rails-omakase", require: false
  gem "sqlite3", ">= 2.1"
end

group :development do
  gem "foreman"
  gem "i18n-tasks", require: false
  gem "pry-byebug", platforms: :mri
  gem "pry-rails"
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
