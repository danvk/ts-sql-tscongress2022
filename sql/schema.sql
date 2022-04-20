CREATE TABLE IF NOT EXISTS users (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  name varchar NOT NULL,
  pronoun varchar
);

CREATE TABLE IF NOT EXISTS book (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  created_by uuid not null references users(id),
  title varchar,
  publication_year int not null,
  contents text
);

CREATE TABLE IF NOT EXISTS reviews (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  book_id uuid not null references book(id),
  reviewer_id uuid not null references users(id),
  created_at timestamp with time zone default now(),
  modified_at timestamp with time zone default now(),
  rating int not null,
  content_md text not null
);

COMMENT ON TABLE reviews IS 'Book reviews. Is it worth reading?';
COMMENT ON COLUMN reviews.content_md IS 'Content of the review, formatted with Markdown. May contain @mentions.';
COMMENT ON COLUMN reviews.rating IS 'Rating of the book (1-5 stars)';
