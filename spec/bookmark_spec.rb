require 'bookmark'
require 'db_helper'


describe Bookmark do
  describe 'lists bookmarks' do
    it 'returns a list of bookmarks' do
      con = PG.connect(dbname: 'bookmark_manager_test')
      bookmark = Bookmark.create(id: 1, url: 'http://www.makersacademy.com', title: 'Makers Academy')
      Bookmark.create(id: 2, url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
      Bookmark.create(id: 3, url: "http://www.google.com", title: "Google")
      bookmarks = Bookmark.all
      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(id: '0', url: 'http://www.facebook.com', title: 'Test Bookmark')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.title).to eq 'Test Bookmark'
      expect(bookmark.url).to eq 'http://www.facebook.com'
    end
  end
end