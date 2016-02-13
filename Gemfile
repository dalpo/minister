source 'https://rubygems.org'

# Declare your gem's dependencies in minister.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

gem 'sqlite3'

group :development, :test do
  gem 'byebug'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.4.2'
  gem 'factory_girl_rails'
  gem 'dotenv-rails'
  gem 'i18n-tasks'
  gem 'rubocop', '~> 0.36.0', require: false
  gem 'rubocop-rspec', require: false
end

group :test do
  gem 'ammeter'
  gem 'database_cleaner'
  gem 'formulaic'
  gem 'capybara'
  gem 'poltergeist'
  gem 'shoulda-matchers', '~> 3.1.1'
  gem 'timecop'
  gem 'webmock'
  gem 'simplecov', require: false
end
