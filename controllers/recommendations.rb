# for anytime want access
# every model should have it's own controller (and views)

# inherits everything from ApplicationController (in application.rb)
# one-way inheritance only
class RecommendationsController < ApplicationController

get '/' do
   # instance var owned by class
   # controller does in between work and passes to view  .....
   @recommendations = Place.all # call ActiveRecord to get all in table "places"
   erb :read_recommendation # in view can access
end

get '/create' do
   erb :create_recommendation
end

get '/api' do
   # like select * from places;
   return Place.all.to_json #
end

get '/api/:id' do
   # params are when get from a server
   return Place.find(params[:id]).to_json
end

post '/create' do
   p params # form post bound to params object. will print in terminal as hash
   @rec = Place.new
   @rec.contributor = params[:contributor]
   @rec.place = params[:place]
   @rec.notes = params[:notes]
   erb :index
end



end # end of class
