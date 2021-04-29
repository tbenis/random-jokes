class SessionsController < ApplicationController

  get '/login' do 
    erb :'/sessions/login'
  end

  post '/login' do 
    @user = User.find_by_email(params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
        session[:id] = @user.id
        flash[:success] = "Successfully logged in!"
        redirect "/users/#{session[:id]}"    
    else
      flash[:error] = "Incorrect email or password. Try again."
        redirect '/login'   
    end
  end

  get '/logout' do 
      session.clear
      flash[:success] = "You are now logged out."
      redirect "/"
  end
end
