# Products & Reviews w/ Authorization & Authentication
#### **Author: Andy Lawson**
* * *

## Description

This webpage allows admins and users to login and logout. Admins are authorized to add, update, and delete products. Users are authorized to add reviews for products.

## Technologies used

* Active Storage
* Bootstrap
* Bundler
* Capybara
* Devise
* Embedded Ruby
* Faker
* git
* HTML
* PostgreSQL
* Rails Admin
* Rspec
* Ruby on Rails
* SASS

* * *
## User Stories

* As a user I want to be able to add, update and delete new products.
* As a user I want to be able to click an individual product to see its detail page.
* As a user I want to be able to add a review to a product.

* * *
## Software Requirements
* **Ruby is required to run this application**
* **PostgreSQL is required to run the database**

 <a href="https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-ruby">Ruby download instructions</a>
  <a href="https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-postgres">PosgreSQL download instructions</a>

## Installation Instructions
1. Navigate to the desired directory where you would like to clone the project to.

2. Once you have chosen your desired directory, clone the github repo using the version control tool `git` (<a href="https://www.learnhowtoprogram.com/introduction-to-programming/getting-started-with-intro-to-programming/git-and-github">download instructions</a>). Typing the following command into your terminal:
```bash
$ git clone https://github.com/andyL89/product_review.git
```
3. Open the project in VSCode by typing the following in your terminal:

``` bash
$ code .
```
* Note: VSCode is a code editing software. If you don't already have it, you can download it <a href="https://code.visualstudio.com/">here</a>

4. While located in the root directy, install gem bundler by typing:

``` bash
$ gem install bundler
```

5. Install gem bundles by typing:

``` bash
$ bundle install
```

6. Create a database for this project by typing the following into your terminal while located in the root directory:
```
$ rake db:create
```

7. Add all tables to the database by typing the following in your terminal:
```
$ rake db:migrate
```

8. Mirror the migration database changes in the test database:
```
$ rake db:test:prepare
```

9. Seed the database with supplementary data:
```
$ rake db:seed
```

The database should now be correctly set up. And you may start a local server to interact with the project.

10. To start a local server, open your default browser and type "localhost:3000" into the search bar and press enter. Here, you will see the live server.

## Running Tests
* This application was created using test-driven development (TDD).
* To run the tests yourself, follow the steps below.

Simply type "rspec" into your terminal while located in the root directory of the project.
``` bash
$ rspec
```
* * *

## License
> [GPLv3](https://choosealicense.com/licenses/gpl-3.0/)\
> Andy Lawson &copy; 2021

* * *

## Contact Information

Reach Andy via <a href="https://www.linkedin.com/in/andrew-lawson-dev/" target="_blank">Linkedin</a> or <a href="alawson89@gmail.com" target="_blank">email</a></li>.
