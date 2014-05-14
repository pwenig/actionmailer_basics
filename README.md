# ActionMailer Basics

## Goal

The goal of this repository is to give students a place where they can learn about
ActionMailer. There will be no lecture on this material before the homework. Students
can use the [ActionMailer guide](http://edgeguides.rubyonrails.org/action_mailer_basics.html)
to help them along. Students will bring questions to class the next day
that we can answer for them.

## Setup

1. Fork and clone the repository
1. Install gems using `bundle install`
1. Create and migrate the databases using `rake db:create:all db:migrate`
1. Run all of the specs using `rake spec` or `rspec`

## Assignment

Get all of the specs passing. If you get stuck, check out the `solutions` branch
to help you along. Bring your questions to class the next day.

## Using ActionMailer on Heroku

1. Install the [SendGrid add-on](https://addons.heroku.com/sendgrid)
1. Add the following to your config/environment/production.rb file:

```
config.action_mailer.default_url_options = { host: "<the domain of your application>"}
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['SENDGRID_USERNAME'],
  :password       => ENV['SENDGRID_PASSWORD'],
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
}
```