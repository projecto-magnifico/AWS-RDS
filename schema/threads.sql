\c Ron

CREATE TABLE threads (
    thread_id SERIAL PRIMARY KEY,
    name VARCHAR,
    score DECIMAL NOT NULL,
    img_url VARCHAR
);

CREATE TABLE tags (
    tag_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    type VARCHAR NOT NULL,
    detail VARCHAR
);

CREATE TABLE keywords (
    keyword_id SERIAL PRIMARY KEY,
    word VARCHAR NOT NULL,
    thread_id INT NOT NULL,
    relevance DECIMAL NOT NULL,
    tag_id INT,
    FOREIGN KEY (tag_id) REFERENCES tags(tag_id),
    FOREIGN KEY (thread_id) REFERENCES threads(thread_id)
);

CREATE TABLE sources (
    source_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    logo_url VARCHAR
);


CREATE TABLE articles (
    article_id SERIAL PRIMARY KEY,
    thread_id INT NOT NULL,
    title VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    url VARCHAR NOT NULL,
    age INT NOT NULL,
    source_id INT NOT NULL,
    image_url VARCHAR,
    FOREIGN KEY (thread_id) REFERENCES threads(thread_id),
    FOREIGN KEY (source_id) REFERENCES sources(source_id)
);

CREATE TABLE snapshots (
    snapshot_id SERIAL PRIMARY KEY,
    top_story_log VARCHAR NOT NULL,
    snap_date DATE DEFAULT NOW(),
    snap_time TIME DEFAULT NOW()
);

INSERT INTO sources (name) VALUES
('abc-news-au'),
('al-jazeera-english'),
('associated-press'),
('bbc-news'),
('cnn'),
('the-guardian-uk'),
('the-huffington-post'),
('independent'),
('metro'),
('mirror'),
('newsweek'),
('new-york-magazine'),
('the-new-york-times'),
('reuters'),
('the-telegraph'),
('usa-today'),
('the-washington-post');
