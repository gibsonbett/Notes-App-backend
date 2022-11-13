class NotesController < ApplicationController
    get '/users/:id/notes' do
        notes =  Note.where(user_id: params[:id])
        notes.to_json
    end

    post '/users/:id/notes' do
        notes =  Note.where(user_id: params[:id])
        notes.create(
            category: params[:category],
            todos: params[:todos],
            user_id: params[:id]
        )
        notes.to_json
    end

    patch '/users/:id/notes/:note_id' do
        notes =  Note.where(user_id: params[:id])
        edit_note = notes.find(params[:note_id])
        edit_note.update(
            category: params[:category],
            todos: params[:todos]
        )
        edit_note.to_json
    end

    delete '/users/:id/notes/:note_id' do
        notes =  Note.where(user_id: params[:id])
        edit_note = notes.find(params[:note_id])
        edit_note.destroy
        edit_note.to_json
    end



end