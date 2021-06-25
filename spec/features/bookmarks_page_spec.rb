feature 'bookmarks page' do 
  scenario 'view bookmarks' do
    Bookmark.create(id: 1, url: 'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmark.create(id: 2, url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
    Bookmark.create(id: 3, url: 'http://www.google.com', title: 'Google')
    visit '/bookmarks'
    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy All Software',  href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
  end 
end