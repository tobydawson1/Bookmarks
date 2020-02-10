require 'sinatra/base'

class Bookmarks < Sinatra::Base

    get('/') do
        'Testing infrastructure working!'
    end

end