feature 'bookmarks page' do 
  scenario 'view bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content "https://github.com/ehelsan/bookmark-manager"
  end
  
end