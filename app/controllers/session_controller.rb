class SessionsController < ApplicationController
    post '/users/login' do 
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        user.to_json
        else
        {error: "No account associated with those credentials. Please try again."}.to_json
        end
    end

    delete '/users/logout' do
        session.clear
        session.to_json
    end
end