source "https://rubygems.org"
ruby "3.3.5"

gem "bootsnap", require: false
gem "bootstrap", "~> 5.3", ">= 5.3.3"
gem "bootstrap-icons-helper", "~> 2.0", ">= 2.0.2"
gem "cssbundling-rails"
gem "importmap-rails"
gem "puma", ">= 5.0"
gem "rails", "~> 7.2.2"
gem "sassc-rails" # for cssbundling-rails
gem "search_cop", "~> 1.4"
gem "sprockets-rails"
gem "sqids", "~> 0.2.1"
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
  gem "sqlite3"
end

group :development do
  gem "i18n-tasks", require: false
  gem "ostruct" # for pry
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
