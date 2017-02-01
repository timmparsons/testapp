class UserMailer < ApplicationMailer
	 default from: 'tim@timmichaelcreates.com'

	 def contact_form(email, name, message)
	 @message = message
	 	mail(:from => email,
	 		:to => "tim@timmichaelcreates",
	 		:subject => "A new contact form message from #{name}")
	 end

	 def welcome(user)
	 	@appname = "Hit The Lip"
	 	mail( :to => user.email,
	 		  :subject => "Welcome to #{@appname}!")
	 end
end
