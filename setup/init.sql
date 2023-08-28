-- +migrate Up
create table product_changelogs  (
    id SERIAL PRIMARY KEY,
    product text,
    title text,
    content text,
    github_url text,
    thumbnail_url text,
    file_name text,
    created_at timestamp not null default now(),
    updated_at timestamp not null default now()
);

create table product_changelog_views  (
    id SERIAL PRIMARY KEY,
    key text,
    changelog_name text,
    metadata json,
    created_at timestamp not null default now(),
    updated_at timestamp not null default now()
);

-- +migrate Down
drop table product_changelogs;
drop table product_changelog_views;
