# R ON RAILS ENVIRONMENT SET UP

RUBY ON RAILS BASIC COURSE WITH + INFO

https://www.youtube.com/watch?v=fmyvWz5TUWg
https://guides.rubyonrails.org/index.html

\*\*
mkdir myapp
cd myapp
echo "source 'https://rubygems.org'" > Gemfile
echo "gem 'rails', '6.0.3.3'" >> Gemfile
bundle install

bundle exec rails new . --force --skip-bundle
bundle update

**GEMS**

https://rubygems.org/gems/devise/versions/4.8.1
https://rubydoc.info/github/heartcombo/devise

gem 'devise', '~> 4.8', '>= 4.8.1'

Bundle install

gem install devise

**CONTROLLER\***

rails g controller home index

STIMULUS CONTROLLER
https://www.youtube.com/watch?v=CqiRpJnQzlc
https://stimulus.hotwired.dev/handbook/installing

**STIMULUS.JS\***
bundle exec rails webpacker:install:stimulus

**SCAFFOLD\***
rails g scaffold friends first_name:string last_name:string email:string phone:string Instagram:string

rails g nested_scaffold project/task name desctiption:text status project:references

- has_many :comments on the on the model

Scaffold inside a scaffold

rails g scaffold Post title:string body:text author:string
rails g scaffold Comment body:string author:string post:references

- has_many :comments on the on the model

(Don’t forget)

bundle install

rails db:migrate

**STIMULUS.JS WITH WEBPACK**

bundle exec rails webpacker:install:stimulus

**BOOTSTRAP WITH WEBPACK**

https://matthewhoelter.com/2021/08/13/how-to-install-bootstrap-5-in-ruby-on-rails-6-with-webpack.html

https://medium.com/daily-web-dev/use-bootstrap-4-with-ruby-on-rails-6-and-webpack-fe7300604267

$ yarn add bootstrap@next
$ yarn add @popperjs/core

<head>
  <title>BootstrapDemo</title>
  <%= csrf_meta_tags %>
  <%= csp_meta_tag %>
  <%= stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>
  <%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %>
  <%= stylesheet_pack_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>
</head>

# create a new folder at

# app/javascript/stylesheets

# we will then put our stylesheets in here and they will be managed by webpack

# create new file

# app/javascript/stylesheets/application.scss

# inside the file add line

@import "bootstrap"

# in file app/javascript/packs/application.js, at bottomm of the file, add:

import "bootstrap"
import "../stylesheets/application"

- COMPONENTS

https://themesberg.com/docs/pixel-bootstrap/components/icon-boxes/

_VALIDATORS & ERROR MESSAGES_

https://www.youtube.com/watch?v=azH9IFUvjb0

_DOC LINKS FROM JUAN AND JAVI_

https://openbase.com/js/googlemaps

https://developers.google.com/maps/documentation/javascript/examples/places-autocomplete-addressform

https://apidock.com/rails/ActionView/Helpers/FormHelper/hidden_field

https://discuss.hotwired.dev/t/working-with-data-attributes-use-rails-tag-helpers/218
