require 'pg'

class Bookmark
  def self.all
    con = PG.connect(dbname: 'bookmark_manager')
    rs = con.exec('SELECT * FROM bookmark;')
    rs.map {|bookmark| bookmark['url'] }
   end  
end


# [
#   "https://github.com/ehelsan/bookmark-manager",
#   "https://airtable.com/shryoxixfGGLxlTGr/tblU9M74TCpg89oGC?date=2021-06-21",
#  ]