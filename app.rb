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
        url = params['bookmark']
        connection = PG.connect(dbname: 'bookmark_manager_test')
        connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
        redirect '/bookmarks/new'
    end

end