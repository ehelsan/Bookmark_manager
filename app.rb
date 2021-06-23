require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader 
  end

  get '/' do
    # erb :index
    redirect "/bookmarks"
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
    # erb :"bookmarks/index"
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url])
    redirect '/bookmarks'
    # redirect '/bookmarks'
  end
    
  get '/bookmarks/add' do
    erb :bookmark_form
  end

  run! if app_file == $0

end