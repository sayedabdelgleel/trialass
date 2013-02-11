source 'https://rubygems.org'

gem 'rails', '3.1.10'

gem 'pg', '0.14.1'

gem 'dalli'
gem 'json_builder'
gem 'simplecov', :require => false, :group => :test
gem 'has_permalink'
gem 'aws-s3'
gem 'aws-sdk'
gem 'paperclip'

gem "activeadmin", "~> 0.5.1"
gem 'debitech', :git => 'git://github.com/ebosrup/debitech.git'
gem 'sass-rails',   '~> 3.1.5' #can't be in :assets due to activeadmin

gem 'devise'
gem "cancan"
gem 'formtastic', '2.1.1' # 2.2.x breaks activeadmin
gem 'liquid'

gem 'newrelic_rpm', "~> 3.5.3.25"

group :development do
  gem 'pry'
  gem 'fog'
end

group :development, :staging do
  gem 'rack-mini-profiler'
end

gem 'i18n-active_record', :require => false # i18n-active_record tries to access db before initialize which crash app in production if required here
gem "daemons" # for delayed_job
gem 'delayed_job_active_record'
gem 'workless', '~> 1.1.1'

group :test, :development do
  gem 'jasmine'
end


# gem 'sqlite3'



group :test do
  gem "webrat"
  gem "rspec"
  gem "cucumber-rails"
  gem "database_cleaner"
  gem "capybara"
  gem 'turn', '0.8.2', :require => false

end


  
group :assets do
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

