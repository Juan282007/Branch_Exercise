INSERT INTO person (
    first_name,
    last_name,
    email,
    created_by,
    updated_by,
    deleted_by
) VALUES (
    'Juan',
    'Gomez',
    'juanpablogomezperdomo@gmail.com',
    gen_random_uuid(),
    gen_random_uuid(),
    gen_random_uuid()
);