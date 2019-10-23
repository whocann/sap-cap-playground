#Project created

cds init sap-cap-playground --modules srv,db --db-technology sqlite --odata-version v4 --pipeline --skip-sample-models --verbose

#Cds Commands

cds deploy && cds watch .

cds run --in-memory

#SQLite

sqlite3 sqlite.db .dump

sqlite3 sqlite.db .tables

#URLs
http://localhost/catalog/Books?$select=ID,title

http://localhost/catalog/Authors?$search=Bro

http://localhost/catalog/Authors?$expand=books($select=ID,title)

http://localhost:4004/$fiori-preview/?service=com.playground.bookshop.CatalogService&entity=Authors


#Curl

linux:

curl localhost:4004/catalog/Orders -H'Content-Type:application/json' -d'{"book_ID":201,"amount":6}'

windows:

curl localhost:4004/catalog/Orders -H "Content-Type:application/json" -d "{\"book_ID\":201,\"amount\":6}"
