feature 'bookmarks page' do 
  scenario 'view bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content "https://github.com/ehelsan/bookmark-manager"
    expect(page).to have_content "https://airtable.com/shryoxixfGGLxlTGr/tblU9M74TCpg89oGC?date=2021-06-21"
  end
  
end