class UserMailer < ActionMailer::Base
	default :from => "vitor.casadei@gmail.com"
	
  def registration_confirmation(user) 
  	@user = user   
    mail(:to => user.email, :subject => "User Registration - RailsNetwork")  
  end

  def edit_confirmation(user) 
  	@user = user
    mail(:to => user.email, :subject => "Profile Edit - RailsNetwork")  
  end

  def follow_confirmation(user, current_user) 
  	@user = user
  	@current = current_user
    mail(:to => user.email, :subject => current_user.name + " is Following you! - RailsNetwork")  
  end

  def unfollow_confirmation(user, current_user) 
  	@user = user
  	@current = current_user
    mail(:to => user.email, :subject => current_user.name + " isn`t Following you anymore! - RailsNetwork")  
  end


end
