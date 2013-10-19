require 'sinatra'
require 'sinatra/static_assets'

configure do
  set :views, ['views/layouts', 'views/pages', 'views/partials']
  #enable :sessions
end

Dir["./app/models/*.rb"].each { |file| require file }
Dir["./app/helpers/*.rb"].each { |file| require file }
Dir["./app/controllers/*.rb"].each { |file| require file }

get "/" do 
  "Hello World!"
end
