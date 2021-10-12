# https://developer.wordpress.org/cli/commands/core/update/
# force: update or downgrade to a specific release
wp core update --version=x.x --force

# Update database after code update
# https://developer.wordpress.org/cli/commands/core/update-db/
wp core update-db --network
