require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader 
  end

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    erb :bookmarks
  end
    
end