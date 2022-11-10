class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/notes' do
    notes = Note.all
    notes.to_json
  end

  get '/categories' do
    category = Category.all
    category.to_json
  end

  post '/notes' do
    notes = Note.create(
      category: params[:category],
      note: params[:note]
    )
    notes.to_json
  end

  patch '/notes/:id' do
    notes = Note.find(params[:id])
    notes.updates(
      note: params[:note]
    )
    notes.to_json

  end

  delete '/note/:id' do
    notes = Note.find(params[:id])
    notes.destroy
    notes.to_json
  end


end
