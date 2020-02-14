require 'sinatra/base'
require './lib/bookmarks'

class Bookmarks < Sinatra::Base

    before do
        @bookmarks = BookmarkHolder.instance
    end

    get '/' do
        'Greetings' 
        
    end

    get '/bookmarks/new' do
        @bookmarks = BookmarkHolder.create
        erb :index
    end

    post '/bookmarks' do 
        @bookmarks.add(url: params[:bookmark])
        redirect '/bookmarks/new'
    end

end