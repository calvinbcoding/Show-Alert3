# this pretty much replaces our app.rb from this morning.

 # we'll come back to this file periodically to add various
# configurations for our app

 # some, but not all, of the things you might do in server.js
# you will do here, the rest will be in config.ru

class ApplicationController < Sinatra::Base
	require 'bundler'
	Bundler.require()

	get '/' do 
		"Welcome to your first Sinatra MVC App. HAHA just kidding this is the third runthrough of Show-Alert"
	end 
  



	# here's why pry is amazing
	get '/test' do
		some_text = "grow food it'll change your life"

		# pry gem lets us use this command "binding.pry"
		# it pauses execution and opens a REPL in the scope of this route
		# at this exact spot in the code
		# • you can inspect variables
		# • you can test DB/ORM queries !!!! 
		# • i.e. test your models
		# • etc
		# be sure to type exit on the terminal to resume execution back
		## because the client is still waiting for a response from 
		# this route

  	binding.pry # STOPS EXECUTION, OPENS A REPL IN YOUR TERMINAL -- type exit in terminal to exit pry and complete the execution of the route

  	# this response will get sent once you exit
 		"pry has finished -- here's some_text #{some_text}"

 	end

end
  