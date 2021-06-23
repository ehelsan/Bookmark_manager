require 'pg'

class Bookmark
  def self.all

    if ENV['ENV'] = 'test'
      con = PG.connect(dbname: 'bookmark_manager_test')
    else 
      con = PG.connect(dbname: 'bookmark_manager')
    end

    rs = con.exec('SELECT * FROM bookmark;')
    rs.map {|bookmark| bookmark['url'] }
  end  

  def self.create(url:)
    if ENV['ENV'] = 'test'
      con = PG.connect(dbname: 'bookmark_manager_test')
    else 
      con = PG.connect(dbname: 'bookmark_manager')
    end

    con.exec("INSERT INTO bookmark (url) VALUES('#{url}')")
  end
end
