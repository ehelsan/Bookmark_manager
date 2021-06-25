require 'pg'
def truncate
  con = PG.connect(dbname: 'bookmark_manager_test')
  rs = con.exec('TRUNCATE TABLE bookmark;')
end