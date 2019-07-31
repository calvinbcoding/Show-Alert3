require 'sinatra/base'


 # some of the things we did in server.js will go here as well


 # controllers
require './controllers/ApplicationController'

 # models


 # top-level routing -- specify which controllers are used when
map ('/') {
  run ApplicationController
}