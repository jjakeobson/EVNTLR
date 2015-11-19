User.create!(name:  "Example User",
             email: "example@example.com",
             password:              "qazqaz",
             password_confirmation: "qazqaz",
             admin: true)

50.times do |n|
  name  = Faker::Name.name
  email = "emailnumero-#{n+1}@example.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
