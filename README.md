# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.


## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

### Screenshots

Jungle Home Page -

![Jungle Home Page](https://github.com/poushitaguha/jungle-rails/blob/master/docs/jungle-home-page.png "Jungle Home Page")


View Reviews without Login -

![View_Reviews_without_Login](https://github.com/poushitaguha/jungle-rails/blob/master/docs/view-reviews-without-login.png "View Reviews without Login")


User Register Page -

![Jungle_Register_Page](https://github.com/poushitaguha/jungle-rails/blob/master/docs/register-page.png "Jungle Register Page")


User Login Page -

![Jungle_Login_Page](https://github.com/poushitaguha/jungle-rails/blob/master/docs/login-page.png "Jungle Login Page")


Logged in User Home Page -

![Logged_in_User_Home_Page](https://github.com/poushitaguha/jungle-rails/blob/master/docs/logged-in-user-home-page.png "Logged in User Home Page")


Post/Delete Review Buttons for Logged in User -

![Post_Delete_Review_Options](https://github.com/poushitaguha/jungle-rails/blob/master/docs/post-delete-review-options.png "Post Delete Review Options")

