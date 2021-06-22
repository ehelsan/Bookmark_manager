require 'bookmark'

describe Bookmark do
  describe 'lists bookmarks' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.list

      expect(bookmarks).to include("https://github.com/ehelsan/bookmark-manager")
      expect(bookmarks).to include("https://airtable.com/shryoxixfGGLxlTGr/tblU9M74TCpg89oGC?date=2021-06-21")
    end
  end
end