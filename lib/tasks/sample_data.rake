namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_posts
    make_relationships
  end
end

def make_users
  admin = User.create!(name: "Example User",
                 email: "example@example.com",
                 cpf: "392.839.838-80",
                 gender: "male",
                 city: "Sorocaba",
                 state: "SP",
                 password: "foobar",
                 password_confirmation: "foobar")
    admin.toggle!(:admin)
  99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@example.com"
      cpf = "392.839.838-80"
      gender = "male"
      city = "Sorocaba",
      state = "SP"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   cpf: cpf,
                   gender: gender,
                   city: city,
                   state: state,
                   password: password,
                   password_confirmation: password)
    end
end

def make_posts
  users = User.all(limit: 6)
  50.times do
    content = Faker::Lorem.sentence(10)
    users.each { |user| user.posts.create!(content: content) }
  end
end

def make_relationships
  users = User.all
  user  = users.first
  followed_users = users[2..50]
  followers      = users[3..40]
  followed_users.each { |followed| user.follow!(followed) }
  followers.each      { |follower| follower.follow!(user) }
end

