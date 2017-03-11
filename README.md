## NotMyNews
#### Technologies: Ruby, Rails, JavaScript, jQuery, PostgreSQL, DataMapper, RSpec, Capybara, NewsAPI HTML, CSS 
### Week 9 group project for [Makers Academy] (http://www.makersacademy.com)
[Team Members](#team-members) | [Outline](#outline) | [Screenshots](#screenshots) | [Gems](#gems) | [Usage Instructions](#usage-instructions) | [Heroku](http://notmynews.herokuapp.com/)

## Brief
You'll spend this week working in teams on a project. You'll generate some project ideas (eg "Build a Scheme compiler", or "Make a game".) You'll each choose which projects you'd prefer to work on. Your coach will try to assign you to a team that will work on one of your preferred projects.

This week will be a one week version of final projects.

## Team Members
* [Joe Marriott] (https://github.com/J-Marriott)
* [Jaycee Cheong] (https://github.com/herecomesjaycee)
* [Sam Jones] (https://github.com/samjones1001)
* [Basile Koko] (https://github.com/BasileKoko)
* [Justin Butwell] (https://github.com/Justinio14)

## Outline
NotMyNews is a lightweight web app built on Rails, designed to help users broaden their perspective of current affairs.  It allows users to quickly browse headlines and articles from the news sources they usually avoid. They simply select whether they would like to be displayed articles from left, right or centrist news outlets and have the latest articles delivered in one easy to read news feed.

Having decided on Rails as our framework, our first decision as a group was to coohse an API to provide us with stories.  After looking into a number of alternatives, we decided on [NewsAPI](www.newsapi.org) as the most suitable for our requirements.  We then worked in pairs and small groups on different areas of the application. We used Waffle.io to keep track of GitHub issues and tried to simulate a real world development workflow - a pair would submit the code they had worked on, then another pair would conduct a code review and ship it to production.  

As a group, we worked according to Agile methodologies, holding daily stand ups and retros, and tried to adhere to XP values. 

## Screenshots
### Main Screen
![Main screen](/app/assets/images/screen.png?raw=true "Main screen")

## Gems
```ruby
gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'bootstrap-sass', '~> 3.3.5'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'sprockets_better_errors'
gem 'devise'
gem 'haml'
gem 'haml-rails'


group :development, :test do
  gem 'byebug', platform: :mri
end

group :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'simplecov'
  gem 'poltergeist'
  gem 'database_cleaner'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
end
```

## Usage Instructions

* clone the repo and run bundle
```shell
$ git clone https://github.com/samjones1001/NotMyNews
$ cd notmynews
$ bundle
$ rake db:create
$ rake db:migrate
$ rake db:seed
```
* run tests
```shell
$ rspec
```
* start a Rails serve
```shell
$ bin/rails server
```
Open your broweser, and navigate to localhost:3000
