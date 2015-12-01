# require './app' # don't need this no more, instead...
require 'sinatra/base'

# load appl contr or appl cant start!
require './controllers/application'
#then require contr/Recomm
require './controllers/recommendations'
# require our model for our table "places" (place.rb)
require './models/place'
# map root to rec ctrllr, (instantiates ctrllr)
map ('/') { run RecommendationsController }
