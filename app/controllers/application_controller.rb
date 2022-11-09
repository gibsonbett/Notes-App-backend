class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/notes' do
    notes = Note.all
    notes.to_json(include: :categories)
  end

end
