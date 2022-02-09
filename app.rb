require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

enable :sessions
get '/' do
  erb :index
end

post '/names' do
  session[:player_01_name] = params[:player_01_name]
  session[:player_02_name] = params[:player_02_name]
  redirect '/play'
end

get '/play' do
  @player_01_name = session[:player_01_name]
  @player_02_name = session[:player_02_name]
  erb :play
end

# get '/points' do
#   # erb :play
#   "Player two has 50 points"
# end  
  # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
