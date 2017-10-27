\c Ron

ALTER TABLE threads ADD date_created DATE DEFAULT NOW();
ALTER TABLE threads ADD summary VARCHAR;
