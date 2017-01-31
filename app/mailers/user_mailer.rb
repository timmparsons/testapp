class UserMailer < ApplicationMailer
	 default from: 'tim@timmichaelcreates.com'

	 def contact_form(email, name, message)
	 @message = message
	 	mail(:from => email,
	 		:to => "tim@timmichaelcreates",
	 		:subject => "A new contact form message from #{name}")
	 end
end
