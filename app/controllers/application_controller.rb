class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json' 
 
  configure do
    set :sessions, true
    set :session_secret, ENV["SESSION_SECRET"]
  end
end
