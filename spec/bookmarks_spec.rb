require './lib/bookmarks'

describe BookmarkHolder do

    it 'should receive one arugment' do
        expect(BookmarkHolder).to respond_to(:new).with(1).argument
    end

    
end