require 'sinatra/base'

class Bookmarks < Sinatra::Base

    get '/' do
        'Hello World'
        'Bookmark Manager'
    end

end