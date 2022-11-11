class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get '/categories' do
    category = Category.all
    category.to_json(include: :notes)
  end

  post '/categories/notes' do
    notes = Note.create(
      note: params[:note],
    )
    notes.to_json
  end

  patch '/notes/:id' do
    notes = Note.find(params[:id])
    notes.update(
      note: params[:note]
    )
    notes.to_json

  end

  delete '/notes/:id' do
    notes = Note.find(params[:id])
    notes.destroy
    notes.to_json
  end


end
