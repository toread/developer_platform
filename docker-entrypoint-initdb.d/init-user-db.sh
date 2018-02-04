psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    -- gitlab
    CREATE USER gitlab PASSWORD 'gitlab';
    CREATE DATABASE gitlab;
	CREATE EXTENSION pg_trgm;
    GRANT ALL PRIVILEGES ON DATABASE gitlab TO gitlab;
    -- mattermost
    CREATE USER mattermost PASSWORD 'mattermost';
    CREATE DATABASE mattermost;
    GRANT ALL PRIVILEGES ON DATABASE mattermost TO mattermost;
    -- sonarqube
    CREATE USER sonarqube PASSWORD 'sonarqube';
    CREATE DATABASE sonarqube;
    GRANT ALL PRIVILEGES ON DATABASE sonarqube TO sonarqube;
    -- owncloud
    CREATE USER owncloud PASSWORD 'owncloud';
    CREATE DATABASE owncloud;
    GRANT ALL PRIVILEGES ON DATABASE owncloud TO owncloud;
EOSQL