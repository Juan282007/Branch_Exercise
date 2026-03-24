CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE person (
    person_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(40) NOT NULL,
    created_at timestamptz NOT NULL DEFAULT now(),
    updated_at timestamptz NOT NULL DEFAULT now(),
    deleted_at timestamptz NOT NULL DEFAULT now(),
    created_by uuid NOT NULL,
    updated_by uuid NOT NULL,
    deleted_by uuid NOT NULL,
    CONSTRAINT uq_person_email UNIQUE (email)
);