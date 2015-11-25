<<<<<<< HEAD
User.create!(name:  "Jake Jacobson",
             email: "jake@example.com",
             password:              "qazqaz",
             password_confirmation: "qazqaz",
             admin: true)

User.create!(name:  "Alex Jacobson",
            email: "alex@example.com",
            password:              "qazqaz",
            password_confirmation: "qazqaz")


10.times do |n|
  name  = Faker::Name.name
  email = "emailnumero-#{n+1}@example.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
