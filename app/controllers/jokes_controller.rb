class JokesController < ApplicationController

  # GET: /jokes
  get "/jokes" do
    @jokes = Joke.all
    erb :"/jokes/index"
  end

  # GET: /jokes/new
  get "/jokes/new" do
    redirect_if_not_logged_in
    @joke = Joke.new
    erb :"/jokes/new"
  end

  # POST: /jokes
  post "/jokes" do
    redirect_if_not_logged_in
    @joke = current_user.jokes.build(title: params[:jokes][:title],setup: params[:joke][:setup],puchline: params[:joke][:punchline])
    if @joke.save
      flash[:success] = "Joke successfully created."
      redirect "/jokes"
    else
      flash[:error] = @joke.errors.full_messages.first
      erb :"/jokes/new"
    end
    
  end

  # GET: /jokes/5
  get "/jokes/:id" do
    get_joke
    erb :"/jokes/show"
  end

  # GET: /jokes/5/edit
  get "/jokes/:id/edit" do
    get_joke
    redirect_if_not_authorized
    erb :"/jokes/edit"
  end

  # PATCH: /jokes/5
  patch "/jokes/:id" do
    get_joke
    redirect_if_not_authorized
      flash[:success] = "Joke successfully updated."
      redirect "/jokes/#{@joke.id}"
    else 
      erb :"/jokes/edit"
    end
    
  end

  # DELETE: /jokes/5/delete
  delete "/jokes/:id/delete" do
    get_joke
    redirect_if_not_authorized
    @joke.destroy
    flash[:success] = "Joke successfully deleted."
    redirect "/jokes"
  end


  def get_joke 
    @joke = Joke.find_by_id(params[:id])
    if @joke.nil?
      flash[:error] = "Couldn't find a joke with id: #{params[:id]}"
      redirect "/jokes"
    end
  end
  
  def redirect_if_not_authorized
    redirect_if_not_logged_in
    if !authorize_joke(@joke) 
      flash[:error] = "Permission denied. You can only edit or delete your own jokes."
      redirect "/jokes"
    end
  end

  def authorize_joke(joke)
    # true
    current_user == joke.user
  end
end
