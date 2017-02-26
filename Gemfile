source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'redis', '~> 3.0'
gem 'devise', '~> 4.2'
gem 'bcrypt', '~> 3.1.7'
gem 'omniauth', '~> 1.6', '>= 1.6.1'
gem 'omniauth-facebook', '~> 4.0'
gem 'omniauth-google-oauth2', '~> 0.4.1'
gem 'cloudinary', '~> 1.5', '>= 1.5.2'
gem 'carrierwave', '~> 1.0'
gem 'mini_magick', '~> 4.6', '>= 4.6.1'
gem 'searchkick', '~> 2.1', '>= 2.1.1'
gem 'sprockets-rails', '>= 2.3.2'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'font-awesome-sass', '~> 4.7.0'

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
end

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.5', '>= 3.5.2'
  gem 'factory_girl_rails', '~> 4.8'
  gem 'ffaker', '~> 2.4'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner', '~> 1.5', '>= 1.5.1'
  gem 'simplecov', '~> 0.12.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
