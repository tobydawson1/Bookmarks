require './lib/db_connection'

class BookmarkHolder 

    attr_reader :bookmarks, :bookmark_store, :cursor

    def initialize(bookmark)
        @cursor = DBconnection.new('bookmark_manager', 'tobydawson')
        @bookmarks = bookmark 
    end

    def all
        @cursor.create_connection
        result = @cursor.select_statement('SELECT * FROM bookmarks')
        @cursor.close_con
        result.map { |bookmark| bookmark['url']}
    end

    def self.create(bookmark)
        @bookmarks = BookmarkHolder.new(bookmark)
    end

    def self.instance
        @bookmarks
    end

end
