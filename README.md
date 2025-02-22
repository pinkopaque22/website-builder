# README

* Ruby version- 3.4.1
* Rails version- 8.0.1
* Database creation - postgresql

* When using Tailwind with Rails 7 or greater, there is a bug and your CSS  will not appear. The fix is here https://discuss.rubyonrails.org/t/rails-7-tailwind-not-refreshing-css/79736/2
Steps: run `rake assets:precompile` then you will be prompted to remove public/assets. run `rm -rf public/assets/.manifest.json`
