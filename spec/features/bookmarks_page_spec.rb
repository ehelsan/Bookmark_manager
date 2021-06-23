feature 'bookmarks page' do 
  scenario 'view bookmarks' do
    con = PG.connect(dbname: 'bookmark_manager_test')
    con.exec("INSERT INTO bookmark (url) VALUES ('http://www.makersacademy.com');")
    con.exec("INSERT INTO bookmark (url) VALUES ('http://www.google.com');")
    con.exec("INSERT INTO bookmark (url) VALUES ('http://www.destroyallsoftware.com');")
    visit '/bookmarks'
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
  end
  
end