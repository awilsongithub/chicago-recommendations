# for anytime want access
# every model should have it's own controller (and views)

# inherits everything from ApplicationController (in application.rb)
# one-way inheritance only
class RecommendationsController < ApplicationController

get '/' do
   erb :index
end

get '/api' do
   # like select * from places;
   return Place.all.to_json #
end

end 
