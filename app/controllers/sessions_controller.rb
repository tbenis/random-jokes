class SessionsController < ApplicationController

  get '/login' do 
    erb :'/sessions/login'
  end

  post '/login' do 
        flash[:success] = "Successfully logged in!"
      flash[:error] = "Incorrect email or password. Try again."
  end

  delete '/logout' do 
      session.clear
      flash[:success] = "You are now logged out."
      redirect "/"
  end
end
