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
#get all the available memes in the database
  get "/memes" do
    memes = Meme.available_memes
    memes.to_json
  end

  delete '/memes/:id' do |id|
    meme = Meme.find_by(id: id)
  
    if meme
      meme.destroy
      { message: "Meme with id #{id} deleted successfully" }.to_json
    else
      halt 404, { error: "Meme with id #{id} not found" }.to_json
    end
  


end
