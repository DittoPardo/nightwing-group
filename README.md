#Nightwing group
Sample application prepared during Netguru Ruby on Rails Workshops in Kraków. *Nightwing* is a crowdfunding platform that helps bringing ideas to life.

Application allows users to start a campaign and fund their projects with contributors' donations. It's based on a reward system - rewarding supporters according to their contributions. Projects are created with wysiwyg editor, separated by tags, decorated with images, commentable and are listing contributors.  


#Functionalities

###Core:
* login with email or Facebook account
* start a campaign - add description, photos, tags and rewards
* edit or destroy only yours projects
* contribute to other projects by donations
* comment projects and view contributors list
* search for projects

###Future improvements:
* search by tags
* payment method config
* top projects list


#Technologies

###Core:
* `Ruby [2.2.2]`
* `Rails [4.2.1]`
* `Postgres` [database]
* `Devise` & `Omniauth-facebook` [users authentication]
* `Activeadmin` [admin panel]

###Other:
* `Wysiwyg-rails` [advanced editor]
* `Act-as-taggable-on` [tag integration]
* `Ransack` [searching system]
* `Carrierwave` [image upload system]
* `Cloudinary` [image cloud storage]

#Setup

**Source code**

Clone the repo (`git clone git@github.com:netguru-training/nightwing-group.git` ).

**Database**

Copy the database config file (and edit if needed): 
` cp config/database.yml.sample config/database.yml`

Setup the database:
`bin/rake db:setup`

**Secrets**

Define your `secrets.yml` file and format your data like that (see `config.yml` as an example):
```
# config/secrets.yml
defaults: &defaults
FACEBOOK_APP_ID: 123
  FACEBOOK_SECRET: abc
  CLOUDINARY_NAME: abc
  CLOUDINARY_KEY: 123
  CLOUDINARY_SECRET: abc
  ```

*Note*: In order to use Facebook authentication and Cloudinary storage you need to have accounts in both of these platforms. 

**Install, run and have fun**

`bundle install`
`rails s`

#Tests

For testing we use:
* `Rspec` with `FactoryGirl` & `Faker`

Setup database for specs:
* `bin/rake db:test:prepare`

And run them in console:
* `rspec`

#Notes

###Code style

We keep our code clean and readable. That's why we use:
* `HAML` & `Coffeescript`
* `Decent_exposure`
* `Draper` & `Decent_decoration`
* `Simple_form`

###Application style

For fast and cool styling we use:
* `Twitter Bootstrap` and a bit of `Font Awesome`

Beatiful pictures from:
* [Pexels](http://pexels.com)
