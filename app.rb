require 'bundler'
Bundler.require

# liink to db then model can inherit (data) via ActiveRecord
ActiveRecord::Base.establish_connection(
   :database => 'chicago_recommendations', #from migrations file
   :adapter => 'postgresql'
)

get '/' do
   return 'test'
end

get '/api' do
   # like select * from places;
   return Place.all.to_json #
end
