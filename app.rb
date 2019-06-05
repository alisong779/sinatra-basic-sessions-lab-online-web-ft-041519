require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
  enable :sessions
  set :session_secret, "secret"
  end
  
  get '/' do 
    erb :index
  end 
  
  get '/checkout' do 
    session["name"] = "Item"
    @session = session
  end
end