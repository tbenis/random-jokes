class JokesController < ApplicationController

  # GET: /jokes
  get "/jokes" do
    @jokes = Joke.all
    erb :"/jokes/index.html"
  end

  # GET: /jokes/new
  get "/jokes/new" do
    redirect_if_not_logged_in
    @joke = Joke.new
    erb :"/jokes/new.html"
  end

  # POST: /jokes
  post "/jokes" do
    redirect_if_not_logged_in
    @joke = current_user.jokes.build(title: params[:jokes][:title],setup: params[:joke][:setup],puchline: params[:joke][:punchline])
    if @joke.save
      flash[:success] = "Joke successfully created."
    redirect "/jokes"
    else
      erb :"/jokes/new.html"
    end
    
  end

  # GET: /jokes/5
  get "/jokes/:id" do
    get_joke
    erb :"/jokes/show.html"
  end

  # GET: /jokes/5/edit
  get "/jokes/:id/edit" do
    get_joke
    redirect_if_not_authorized
    erb :"/jokes/edit.html"
  end

  # PATCH: /jokes/5
  patch "/jokes/:id" do
    redirect "/jokes/:id"
  end

  # DELETE: /jokes/5/delete
  delete "/jokes/:id/delete" do
    get_joke
    redirect_if_not_authorized
    @joke.destroy
    # flash[:success] = "Joke successfully deleted."
    redirect "/jokes"
  end

    redirect "/jokes"
  end
end
