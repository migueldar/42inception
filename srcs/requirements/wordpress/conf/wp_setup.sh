if ! wp-cli.phar --path=/usr/share/wordpress core is-installed 2> /dev/null; then
	wp-cli.phar --path=/usr/share/wordpress core download
	wp-cli.phar --path=/usr/share/wordpress --skip-check config create --dbname=wp_db --dbuser="$MARIADB_USER" --dbpass="$MARIADB_PASSWORD" --dbhost=mariadb --dbcharset=utf8mb4 --dbcollate=utf8mb4_general_ci
	wp-cli.phar --path=/usr/share/wordpress core install --url=https://mde-arpe.42.fr --title=miaumiau --admin_user="$WP_ADMIN_USER" --admin_password="$WP_ADMIN_PASSWORD" --admin_email="$WP_ADMIN_EMAIL"
	wp-cli.phar --path=/usr/share/wordpress user create --role=author "$WP_OTHER_USER" "$WP_OTHER_EMAIL" --user_pass="$WP_OTHER_PASSWORD"
fi
