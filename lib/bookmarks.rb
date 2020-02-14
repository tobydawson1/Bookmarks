require './lib/db_connection'
require 'pg'

class BookmarkHolder 

    attr_reader :bookmarks, :cursor

    def initialize
        @cursor = DBconnection.new(db_name = 'bookmark_manager', user_name = 'tobydawson')
        
    end

    def add(url:)
      if ENV['ENVIRONMENT'] == 'test'
        connection = PG.connect(dbname: 'bookmark_manager_test')
      else
        connection = PG.connect(dbname: 'bookmark_manager')
      end
    
      connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    end

    def all
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'bookmark_manager_test')
          else
            connection = PG.connect(dbname: 'bookmark_manager')
          end
        @cursor.create_connection
        result = @cursor.select_statement('SELECT * FROM bookmarks')
        @cursor.close_con
        result.map { |bookmark| bookmark['url']}
    end


    def self.create
        @bookmarks = BookmarkHolder.new
    end

    def self.instance
        @bookmarks
    end

end
