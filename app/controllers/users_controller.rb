class UsersController < ApplicationController
  # GET: /users
  get '/users/new' do 
    # flash[:error] = "Test new route" if !(flash[:error])
    erb :'/users/new'
  end 
  
  post '/users' do 
    user = User.new(params[:user])
    puts user
    if user.save
        session[:id] = user.id
        redirect "/users/#{session[:id]}"
    else 
      flash[:error] = user.errors.full_messages.first
      # binding.pry
      # erb :'/users/new'
      redirect '/users/new'
    end
  end

  get "/users/:id" do
    redirect_if_not_logged_in
    @user = User.find_by_id(params[:id])
    
    if @user.nil?
      flash[:error] = "Couldn't find a user with id: #{params[:id]}"
      redirect "/"
    else
      erb :'/users/show'
    end
    
  end

  # # GET: /users
  get "/users" do
    redirect_if_not_logged_in
    erb :"/users/show"
  end

  # # GET: /users/new
  # get "/users/new" do
  #   erb :"/users/new"
  # end

  # # POST: /users
  # post "/users" do
  #   redirect "/users"
  # end

  # # GET: /users/5
  # get "/users/:id" do
  #   erb :"/users/show"
  # end

  # # GET: /users/5/edit
  # get "/users/:id/edit" do
  #   erb :"/users/edit"
  # end

  # # PATCH: /users/5
  # patch "/users/:id" do
  #   redirect "/users/:id"
  # end

  # # DELETE: /users/5/delete
  # delete "/users/:id/delete" do
  #   redirect "/users"
  # end
end