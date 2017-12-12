# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example completed during week 6 of Lighthouse Labs Web Development Bootcamp. Testing using rspec was added for new products, new users and logins.

## Features and Functionality

An e-commerce site that allows users to view products, place items in a cart and 'purchase' them using Stripe. Upon purchase an email reciept is created and would be sent to the buyer if the server was live.

Logged-in users can review products and leave both a 1-5 rating and a written review which can be seen on the products page. A user can delete any review they have written. An aggregate review score is shown in the product description on the main page.

An authenticated admin can create new categories, create new product listings and delete existing product listings.

## Final Product

!["Screenshot of the main page"](https://github.com/MarkZsombor/jungle-rails/blob/master/docs/jungle_main.png)
!["Screenshot of the register page"](https://github.com/MarkZsombor/jungle-rails/blob/master/docs/jungle_singup.png)
!["Screenshot of a product page"](https://github.com/MarkZsombor/jungle-rails/blob/master/docs/jungle_review.png)
!["Screenshot of the cart"](https://github.com/MarkZsombor/jungle-rails/blob/master/docs/jungle_cart.png)
!["Screenshot of the order page"](https://github.com/MarkZsombor/jungle-rails/blob/master/docs/jungle_order.png)

## Getting Started

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

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios. Other required fields can be any values (as long as the date isn't expired).

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
