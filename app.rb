require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader 
  end

  get '/' do
    
    redirect "/bookmarks"
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
    
  end

  post '/bookmarks' do
    Bookmark.create(id: params[:id], url: params[:url], title: params[:title])
    redirect '/bookmarks'
    
  end
    
  get '/bookmarks/add' do
    erb :bookmark_form
  end

  run! if app_file == $0

end