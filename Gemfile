source 'https://rubygems.org'
ruby '2.2.0'

# Bootstrap sass gem
gem 'bootstrap-sass'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'devise', '~> 3.4.1'
gem 'paperclip', :git => "git://github.com/thoughtbot/paperclip.git"
gem 'aws-sdk', '~> 1.61.0'
gem 'masonry-rails', '~> 0.2.4'



group :development, :test do
	# Use sqlite3 as the database for Active Record
	gem 'sqlite3'
end

group :production do
	# Use postgresql as the database in production
	gem 'pg'
	gem 'rails_12factor'
end

group :doc do
	# bundle exec rake doc:rails genereates the API under doc/api.
	gem 'sdoc', require: false
end
