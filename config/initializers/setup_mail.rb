ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "kasadei.com.br",  
  :user_name            => "railsnetwork@gmail.com",  
  :password             => "r41ln3tw0rk",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}  

ActionMailer::Base.default_url_options[:host] = "localhost:3000"  