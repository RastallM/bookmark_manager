require 'sinatra/base'
require_relative './bookmarks.rb'


class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.all
    erb :bookmarks
  end


  run! if app_file == $0
end