require 'sinatra/base'
require './lib/bookmarks'

class Bookmarks < Sinatra::Base

    before do
        @bookmarks = BookmarkHolder.instance
    end

    get '/' do
        'Greetings'  
    end

    get '/bookmarks' do
        @bookmarks = BookmarkHolder.create("google")
        erb :index
    end

end