feature 'index page' do
  scenario 'visit index page' do
    visit '/'
    expect(page).to have_content('Bookmark Manager')
  end
    
  scenario 'expect page to be working' do
    visit '/'
    expect(page.status_code) == 200
  end
end