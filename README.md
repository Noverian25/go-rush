<!-- # README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version


* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->


# Ruby on Rails

## GO-RUSH (SIMPLIFIED GO-RIDE APPLICATION)

## Requirements

Ruby Version: 2.5.1
Rails Version: 5.2.1

## Getting Started

1. Install Rails at the command prompt if you haven't yet:

`$ gem install rails`

2. At the command prompt, create a new Rails application:

`$ rails new go-rush`

where "myapp" is the application name.

3. Change directory to `go-rush` and start the web server:

`$ cd my go-rush`

`$ rails server`

4. Go to `http://localhost:3000` and you'll see: "Yay! You're on Rails!"

## Installation Gem Testing

1. Add installation gem into gem file 

2. Gem Version:
   
   `gem 'rspec-rails', ">= 3.4.4"`

   `gem 'factory_girl_rails', "~> 4.4.1"`

   `gem 'rails-controller-testing'`
   
   `gem 'faker', "~> 1.9.1"`
   
   `gem 'capybara', "~> 2.4.3"`
   
   `gem 'database_cleaner', "~> 1.3.0"`
   
   `gem 'launchy', "~> 2.4.2"`
   
   `gem 'selenium-webdriver', "~> 2.43.0"`

3. Then Run `$ bundle install`

## Database Installation

1. Type `$ rails generate migration User`

2. Then type `$ rails db:migrate`

## Getting Started 

1. Type `$ rails generate rspec:install` in command prompt for add the spec folder

2. Create Models, Factories and Controller

3. Then run `$ rspec` or `$ bundle exec rspec`

4. Then run `$ rails server` 

5. Refresh localhost:3000






