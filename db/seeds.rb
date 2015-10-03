# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  user = User.create({ username: 'Melanie', password: "password" })
  user = User.create({ username: 'Paul', password: "password"})
  user = User.create({ username: 'Jayson', password: "password"})
  user = User.create({ username: 'Will', password: "password"})
  user = User.create({ username: 'Karen', password: "password"})
  user = User.create({ username: 'Scott', password: "password"})

  post = Post.create({
    url:        "http://stackoverflow.com/questions/10900778/rails-migration-to-make-a-column-null-true",
    num_votes:  5,
    user_id:    1
    })
  post = Post.create({
    url:        "http://apidock.com/rails/v4.2.1/ActiveRecord/ConnectionAdapters/SchemaStatements/change_column_default",
    num_votes:  2,
    user_id:    2
    })
  post = Post.create({
    url:        "https://www.youtube.com/watch?v=csyL9EC0S0c",
    num_votes:  3,
    user_id:    3
    })
  post = Post.create({
    url:        "https://www.railstutorial.org/book/sign_up",
    num_votes:  2,
    user_id:    5
    })

  vote = Vote.create({
    user_id:    5,
    post_id:    1
    })
  vote = Vote.create({
    user_id:    4,
    post_id:    3
    })
  vote = Vote.create({
    user_id:    2,
    post_id:    4
    })
    vote = Vote.create({
    user_id:    1,
    post_id:    3
    })
