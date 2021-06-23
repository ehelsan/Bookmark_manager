require 'bookmark'

describe Bookmark do
  describe 'lists bookmarks' do
    it 'returns a list of bookmarks' do
      con = PG.connect(dbname: 'bookmark_manager_test')
      con.exec("INSERT INTO bookmark (id, url) VALUES (1, 'http://www.makersacademy.com');")
      con.exec("INSERT INTO bookmark (id, url) VALUES (2, 'http://www.google.com');")
      con.exec("INSERT INTO bookmark (id, url) VALUES (3, 'http://www.destroyallsoftware.com');")
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.testbookmark.com')
      expect(Bookmark.all).to include 'http://www.testbookmark.com'
    end
  end
end