feature 'adding a new bookmark' do
  scenario 'to add a new bookmark to the bookmark list' do
    visit ('/bookmarks/add')
    fill_in('url', with: 'http://www.facebook.com')
    click_button('Submit')
  end
end