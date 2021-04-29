class JokesController < ApplicationController

  # GET: /jokes
  get "/jokes" do
    @jokes = Joke.all
    erb :"/jokes/index.html"
  end

  # GET: /jokes/new
  get "/jokes/new" do
    erb :"/jokes/new.html"
  end

  # POST: /jokes
  post "/jokes" do
    redirect "/jokes"
  end

  # GET: /jokes/5
  get "/jokes/:id" do
    erb :"/jokes/show.html"
  end

  # GET: /jokes/5/edit
  get "/jokes/:id/edit" do
    erb :"/jokes/edit.html"
  end

  # PATCH: /jokes/5
  patch "/jokes/:id" do
    redirect "/jokes/:id"
  end

  # DELETE: /jokes/5/delete
  delete "/jokes/:id/delete" do
    redirect "/jokes"
  end
end
