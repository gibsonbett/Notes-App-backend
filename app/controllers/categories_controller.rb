class CategoriesController < ApplicationController
  
    get '/users/:id/categories' do
        category = Category.where(user_id: params[:id])
        category.to_json(include: :notes)
    end


  post '/users/:id/categories/new' do
    categories = Category.where(user_id: params[:id])
    new_category = Category.create(
        cat: params[:cat],
        user_id: params[:id]
      )
    new_category.to_json
  end

  post '/users/:id/categories/notes/new' do
    categories = Category.where(user_id: params[:id])
    new_category = Category.create(
        cat: params[:cat],
        user_id: params[:id]
      )
    new_notes = new_category.notes.create(
        todos: params[:todos],
        user_id: params[:id]
    )
    new_notes.to_json
  end

  patch 'users/:id/categories/:id_category/edit' do
    categories = Category.where(user_id: params[:id])
    category = Category.find(params[:id_category])
    category.update(
      cat: params[:cat]
    )
    category.to_json
  end

  delete 'users/:id/categories/:id_category' do
    categories = Category.where(user_id: params[:id])
    category = Category.find(params[:id_category])
    category.destroy

    category.to_json
  end



end