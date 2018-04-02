require 'sinatra'
require 'sinatra/reloader'

  SECRET_NUMBER= (rand(100))

 get '/' do
  guess = params["guess"].to_i
  message = check_guess(guess)
  color = color
  erb :index, :locals => {:number => SECRET_NUMBER, :message => message, :color => color}
end


 
 def check_guess (guess)

 	if (guess - SECRET_NUMBER) >= 5
 	 @color = "#a2b9bc" 
 	  @message = "Way too high"
 	elsif (SECRET_NUMBER - guess) >= 5 
 	  @color = "#ff7b25"
 	  @message = "Way too low"
 	elsif (guess - SECRET_NUMBER) <= 4 && (guess- SECRET_NUMBER) >0 
 	 @color = "#d5e1df"	
 	 @message ="A bit too high"
 	elsif (SECRET_NUMBER - guess) <= 4 && (SECRET_NUMBER-guess) > 0
 	  @color = "#d64161"
 	  @message = "A bit too low"
 	else guess == SECRET_NUMBER
 	 @color = "#82b74b"
 	 @message = "That is right"
 	end 
 end
