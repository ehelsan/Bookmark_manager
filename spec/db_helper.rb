require 'pg'

def persisted_data(id:)
  con = PG.connect(dbname: 'bookmark_manager_test')
  rs = con.query("SELECT * FROM bookmark WHERE id = #{id};")
  rs.first
end