DROP TABLE IF EXISTS urls;

CREATE table IF NOT EXISTS urls (id serial, original_url varchar NOT NULL, count int DEFAULT 0);

INSERT INTO urls (original_url, count) VALUES ('www.google.com', 2);
INSERT INTO urls (original_url, count) VALUES ('www.facebook.com', 5);
INSERT INTO urls (original_url, count) VALUES ('www.hulu.com', 20);
INSERT INTO urls (original_url, count) VALUES ('www.netflix.com', 25);
INSERT INTO urls (original_url, count) VALUES ('www.amazon.com', 77);


select * from urls;
select original_url from urls;
select * from urls where id=3;
select * from urls where 'original_url'='www.hulu.com';
update urls set count='100' where id=3;
delete from urls where original_url='www.netflix.com';
