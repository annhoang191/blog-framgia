source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "acts_as_votable", "~> 0.11.1"
gem "rails", "~> 5.1.4"
gem "puma", "~> 3.7"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "devise"
gem "rails-i18n", "~> 5.0.0"
gem "config"
gem "bootstrap-sass", "3.3.7"
gem "jquery-rails"
gem "jquery-ui-rails"
gem "sass-rails", "~> 5.0"
gem "font-awesome-rails"
gem "kaminari"
gem "pygments.rb", "~> 0.6.3"
gem "redcarpet", "~> 3.3", ">= 3.3.4"
gem "simplemde-rails"
gem "carrierwave", "~> 1.1.0"
gem "cloudinary"
gem "kaminari"
gem "bootstrap-kaminari-views"

group :development, :test do
  gem "sqlite3"
  gem "byebug", platform: :mri
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :production do
  gem "pg", "0.18.4"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
