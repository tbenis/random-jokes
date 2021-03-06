require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    # set :sessions, true
    set :session_secret, ENV['SUPER_SECRET_PASSWORD']
    set :method_override, true
    register Sinatra::Flash
  end

  get "/" do
    if logged_in?
      redirect "/users/#{session[:id]}"
    else
      erb :welcome
    end
  end

  get "/error" do
    erb :error
  end

  not_found do
    redirect "/error"
  end 

  def current_user
    User.find_by_id(session[:id]) 
  end

  def logged_in?
    !!current_user
  end

  
  
  def redirect_if_not_logged_in
    if !logged_in?
      flash[:error] = "You must be logged in to view that page"
      redirect "/login"
    end
  end

end

