class UsersController < ApplicationController
  
 # GET: /users
  get '/users/new' do 
    # flash[:error] = "Test new route" if !(flash[:error])
    erb :'/users/new'
  end 
  
  post '/users' do 
      flash[:error] = user.errors.full_messages.first
      flash[:error] = "Couldn't find a user with id: #{params[:id]}"
          erb :'users/new'
      end
  end

  # # GET: /users
  # get "/users" do
  #   erb :"/users/index"
  # end

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


