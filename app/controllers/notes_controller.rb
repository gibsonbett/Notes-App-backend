class NotesController < ApplicationController
    get '/users/:id/:category_id/notes' do
        notes =  Note.where(user_id: params[:id])
        note = notes.where(category_id: params[:category_id])
        note.to_json
    end

    post '/users/:id/:category_id/notes' do
        notes =  Note.where(user_id: params[:id])
        note = notes.where(category_id: params[:category_id])
        note.create(
            todos: params[:todos],
            category_id: params[:category_id],
            user_id: params[:user_id]
        )
        note.to_json
    end

    patch '/users/:id/:category_id/notes/:note_id' do
        notes =  Note.where(user_id: params[:id])
        note = notes.where(category_id: params[:category_id])
        edit_note = note.find(params[:note_id])
        edit_note.update(
            todos: params[:todos]
        )
        edit_note.to_json
    end

    delete '/users/:id/:category_id/notes/:note_id' do
        notes =  Note.where(user_id: params[:id])
        note = notes.where(category_id: params[:category_id])
        edit_note = note.find(params[:note_id])
        edit_note.destroy
        edit_note.to_json
    end



end