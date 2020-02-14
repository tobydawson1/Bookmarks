require 'customisation'

feature 'bookmark manager can be altered' do
    scenario 'bookmark added' do
        visit '/bookmarks/new'
        fill_in :bookmark, with: "http://www.makersacademy.com"
        click_button 'submit'
        expect(page).to have_content "http://www.makersacademy.com"
    end
end