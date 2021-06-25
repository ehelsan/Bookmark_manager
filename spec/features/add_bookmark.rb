feature 'adding a new bookmark' do
  scenario 'to add a new bookmark to the bookmark list' do
    visit ('/bookmarks/add')
    fill_in('url', with: 'http://www.facebook.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit')

    expect(page).to have_link('Test Bookmark', href: 'http://www.facebook.com')
  end
end