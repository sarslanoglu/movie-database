## Description

Basic Ruby on Rails app that can show Batman movies in yearly order

## Install

### Clone the repository

```shell
git clone git@github.com:sarslanoglu/movie-database.git
cd movie-database
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.7.0`

If not, install the right ruby version using [rvm](https://github.com/rvm/rvm) (it could take a while):

```shell
rvm install 2.7.0
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler):

```shell
bundle install
```

### Initialize the database

```shell
rails db:create db:migrate
```

## Serve

```shell
rails s
```

## Testing

For rubocop to run

```shell
bundle exec rubocop
```

For rspec to run

```shell
bundle exec rspec
```

After running rspec coverage file will be created locally. To open coverage file just type

```shell
open coverage/index.html
```

to the terminal and hit enter. New browser tab will be open.

## Usage

Only one endpoint is allowed which is taking only GET request by ```http://localhost:3000/movies```
Here you can browse through Batman movies. Each page is showing 10 movies and these movies are in descending yearly order. You can switch pages by selecting page number. Request will refresh itself automatically. Page can be browsed mobile.
