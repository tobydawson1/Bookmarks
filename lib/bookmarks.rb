class BookmarkHolder 

    attr_reader :bookmarks, :bookmark_store

    def initialize(bookmark)
        @bookmarks = bookmark 
    end

    def self.all
        @bookmark_store = [
            "www.google.com"
        ]
    end

    def self.create(bookmark)
        @bookmarks = BookmarkHolder.new(bookmark)
    end

    def self.instance
        @bookmarks
    end

end