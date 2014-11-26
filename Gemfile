source 'https://rubygems.org'

gem 'rails', '4.1.6'
gem 'devise'
gem 'simple_form'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'spring',        group: :development

group :development, :test do
	gem 'sqlite3'	
end

group :production, :staging do
	gem 'pg'
end

group :production do
	gem 'rails_log_stdout', github: 'heroku/rails_log_stdout'
	gem 'rails3_serve_static_assets', github: "heroku/rails3_serve_static_assets"
	gem 'rails_12factor'
end
