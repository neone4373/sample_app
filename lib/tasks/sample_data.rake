namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Neo is great!",
                 email: "nehemiah.ellison@gmail.com",
                 password: "because",
                 password_confirmation: "because")
    admin.toggle!(:admin)
    User.create!(name: "Emmle is naughty",
                 email: "emilyellison986@gmail.com",
                 password: "isnaughty",
                 password_confirmation: "isnaughty")
    98.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
