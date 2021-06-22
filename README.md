# Bookmark Manager

week 6, pair programming challenge.


Process model diagram:



![bookmarks-mamanger-process-modell-US1](https://user-images.githubusercontent.com/74785447/122811831-db54ec00-d2c8-11eb-900f-e1e9f0f13089.png)


The syntax required to create a database is: createdb <name>

Use psql to create a table called bookmarks in the bookmark_manager database, with two columns: id, a SERIAL PRIMARY KEY, and url, a VARCHAR with a maximum length of 60.

The syntax required to create a table with the requirements listed above is: CREATE TABLE bookmarks(id serial PRIMARY KEY, url VARCHAR ( 60 )); 
