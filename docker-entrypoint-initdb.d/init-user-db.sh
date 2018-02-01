psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    -- gitlab
    CREATE USER gitlab PASSWORD 'gitlab';
    CREATE DATABASE gitlab;
	CREATE EXTENSION pg_trgm;
    GRANT ALL PRIVILEGES ON DATABASE gitlab TO gitlab;
EOSQL