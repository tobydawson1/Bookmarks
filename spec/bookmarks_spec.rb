require './lib/bookmarks'


describe BookmarkHolder do

    
    it 'returns a list of bookmarks' do
        connection = PG.connect(dbname: 'bookmark_manager_test')

        connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
        connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
        connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
    
        bookmarks = BookmarkHolder.create.all

        expect(bookmarks).to include "http://www.makersacademy.com"
        expect(bookmarks).to include "http://www.google.com"
        expect(bookmarks).to include "http://www.destroyallsoftware.com"
    end
end

