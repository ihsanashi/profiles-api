CREATE DATABASE malaysian_profiles;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(254) NOT NULL,
  created_at timestamp with time zone default CURRENT_TIMESTAMP NOT NULL,
  updated_at timestamp with time zone
);

CREATE TABLE profiles (
  id SERIAL PRIMARY KEY,
  user_id integer NOT NULL REFERENCES users (id),
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255),
  email VARCHAR(254) NOT NULL,
  birthdate date NOT NULL,
  gender VARCHAR(10) NOT NULL,
  is_deletable BOOLEAN NOT NULL,
  created_at timestamp with time zone default CURRENT_TIMESTAMP NOT NULL,
  updated_at timestamp with time zone
);