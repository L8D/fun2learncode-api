-- Verify ftlc:attendance on pg

BEGIN;

SELECT 1/ COUNT(*) FROM pg_tables WHERE schemaname = 'ftlc' AND tablename = 'attendance';

ROLLBACK;