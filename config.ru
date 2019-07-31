require 'sinatra/base'


 # some of the things we did in server.js will go here as well


 # controllers
require './controllers/ApplicationController'
require './controllers/BandController'
require './controllers/ShowController'

 # models
require './models/BandModel'
require './models/ShowModel'


 # top-level routing -- specify which controllers are used when
map ('/') {
  run ApplicationController
}
