class SessionsController < ApplicationController

  get '/login' do 
    erb :'/sessions/login'
  end

  post '/login' do 
      user = User.find_by_username(params[:email])
      if user && user.authenticate(params[:password])
          session[:id] = user.id
          redirect "/"     
      else
          @error = "Incorrect username or password. Try again."
          erb :'/sessions/login'   
      end
  end

  delete '/logout' do 
      session.clear
      flash[:success] = "You are now logged out."
      redirect "/"
  end
end
