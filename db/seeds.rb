require 'faker'

10.times do 
    @user = User.create(name: Faker::Name.name, email: Faker::Internet.unique.email, password: 'password')
    @user.save
end

