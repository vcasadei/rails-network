ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "kasadei.com.br",  
  :user_name            => "vitor.casadei@gmail.com",  
  :password             => "V1t0rC4s4d3123111992",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}  

ActionMailer::Base.default_url_options[:host] = "localhost:3000"  