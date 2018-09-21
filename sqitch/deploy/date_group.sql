-- Deploy ftlc:date_group to pg
-- requires: date_inverval

BEGIN;

CREATE TABLE ftlc.date_group(
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    registration_time_frame UUID REFERENCES ftlc.date_interval(id)
);

COMMIT;
