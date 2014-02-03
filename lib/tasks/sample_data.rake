namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
	make_users
	#make_mp
	#make_re	
	end
end
	def make_users
		admin = User.create!(name: "noeyfan", email: "youfan.noey@gmail.com", password:"yf7633191", password_confirmation: "yf7633191", admin: true)
		newdaidai = User.create!(name: "daidai", 
										email: "jieyuan.daidai@gmail.com", password:"woaimaodoudou", password_confirmation: "woaimaodoudou", admin: false)
	
		#19.times do |n|
		#	name = Faker::Name.name
		#	email = "example-#{n+1}@buertec.org"
		#	password = "password"
		#	User.create!(name: name,
    #               email: email,
    #               password: password,
    #               password_confirmation: password)
		#end
	end
		
	#def make_mp
	#	users = User.all(limit:6)
	#	5.times do
	#		content = Faker::Lorem.sentence(5)
	#		users.each { |user| user.microposts.create!(content: content) }
	#	end
  #end
	
	#def make_re	
	#users = User.all
  #user  = users.first
  #followed_users = users[2..50]
  #followers      = users[3..40]
  #followed_users.each { |followed| user.follow!(followed) }
  #followers.each      { |follower| follower.follow!(user) }
	#end
