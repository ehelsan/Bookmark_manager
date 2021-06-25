require 'pg'

class Bookmark

  def self.all

    if ENV['ENV'] == 'test'
      con = PG.connect(dbname: 'bookmark_manager_test')
    else 
      con = PG.connect(dbname: 'bookmark_manager')
    end

    rs = con.exec('SELECT * FROM bookmark;')
    rs.map do |bookmark|
      Bookmark.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url'])
    end
  end  

  def self.create(id:, url:, title:)
    if ENV['ENV'] == 'test'
      con = PG.connect(dbname: 'bookmark_manager_test')
    else 
      con = PG.connect(dbname: 'bookmark_manager')
    end

    rs = con.exec("INSERT INTO bookmark (id, url, title) VALUES('#{id}', '#{url}', '#{title}') RETURNING id, url, title;")
    Bookmark.new(id: rs[0]['id'], title: rs[0]['url'], url: rs[0]['title'])
  end


  attr_reader :id, :url, :title

  def initialize(id:, url:, title:)
    @id  = id
    @url = url
    @title = title
  end

end
