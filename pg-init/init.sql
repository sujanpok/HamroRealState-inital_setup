-- rootユーザー用データベース作成
CREATE DATABASE root OWNER root;

-- アプリ用ユーザーとデータベース作成
CREATE USER appuser WITH PASSWORD 'apppass';
CREATE DATABASE appdb OWNER appuser;
GRANT ALL PRIVILEGES ON DATABASE appdb TO appuser;

-- Kong用ユーザーとデータベース作成
CREATE USER kong WITH PASSWORD 'kongpass';
CREATE DATABASE kong OWNER kong;
GRANT ALL PRIVILEGES ON DATABASE kong TO kong;
