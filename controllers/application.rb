# stuff the entire application should have access to

# defining starting pt for my application (it used to be app.rb)
# but app.rb got too muddy

# class inherits from S base and use it's methodss
class ApplicationController < Sinatra::Base

   require 'bundler'
   Bundler.require

   # link to db then model can inherit (data) via ActiveRecord
   ActiveRecord::Base.establish_connection(
      :database => 'chicago_recommendations', #from migrations file
      :adapter => 'postgresql'
   )

   # i need to specify my views folder
   # ok not to understand accessing File system
   # .. gets out of file 2nd .. gets out of ctrls folder (dif then terminal)
   set :views, File.expand_path('../../views', __FILE__)

   not_found do #when something isn't found (instead of "sinatra don't know")
      erb :fourohfour
   end

end
