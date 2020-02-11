require './lib/db_connection'

class BookmarkHolder 

    attr_reader :bookmarks, :bookmark_store

    def initialize(bookmark)
        @cursor = DBconnection.new('bookmark_manager', 'tobydawson')
        @bookmarks = bookmark 
    end

    def self.all
        @cursor.create_connection
        result = @cursor.select_statement('SELECT * FROM bookmarks')
        result.map { |bookmark| bookmark['url']}
        @cursor.close_con
    end

    def self.create(bookmark)
        @bookmarks = BookmarkHolder.new(bookmark)
    end

    def self.instance
        @bookmarks
    end

end
