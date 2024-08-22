chown mysql /var/lib/mysql

cat << EOF > /tmp/init_db.sql
CREATE DATABASE IF NOT EXISTS wp_db CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER IF NOT EXISTS '$MARIADB_USER' IDENTIFIED BY '$MARIADB_PASSWORD';
GRANT ALL PRIVILEGES ON wp_db.* TO '$MARIADB_USER';
EOF

mariadbd-safe --init-file=/tmp/init_db.sql
