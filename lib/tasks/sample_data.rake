namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
		admin = User.create!(name: "noeyfan", email: "youfan.noey@gmail.com", password:"yf7633191", password_confirmation: "yf7633191", admin: true)

	19.times do |n|
		name = Faker::Name.name
		email = "example-#{n+1}@buertec.org"
		password = "password"
		User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
		end
		
		users = User.all(limit:6)
		5.times do
			content = Faker::Lorem.sentence(5)
			users.each { |user| user.microposts.create!(content: content) }
		end
  end
end
