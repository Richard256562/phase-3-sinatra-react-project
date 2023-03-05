class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    "WELCOME TO CHEECH AND CHONG MEME WORLD"
  end

  # Get all memes from the database
  get "/memes"  do
    memes =Meme.all
    memes.to_json
  end

end
