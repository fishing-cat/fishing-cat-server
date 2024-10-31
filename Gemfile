source "https://rubygems.org"
ruby "3.3.5"

gem "bootsnap", require: false
gem "bootstrap", "~> 5.3.1"
gem "cssbundling-rails"
gem "font-awesome-rails", "~> 4.7"
gem "hashids", "~> 1.0", ">= 1.0.6"
gem "importmap-rails"
gem "puma", ">= 5.0"
gem "rails", "~> 7.2.2"
gem "sassc-rails" # for cssbundling-rails
gem "search_cop", "~> 1.2", ">= 1.2.3"
gem "sprockets-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[windows jruby]

group :production do
  gem "pg"
end

group :development, :test do
  gem "brakeman", require: false
  gem "byebug", platform: :mri
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "dotenv-rails", "~> 2.2"
  gem "rubocop-rails-omakase", require: false
  gem "sqlite3"
end

group :development do
  gem "i18n-tasks", require: false
  gem "listen", "~> 3.0.5"
  gem "mutex_m" # for spring
  gem "ostruct" # for pry
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
end
