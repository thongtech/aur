#!/usr/bin/env bash

# Define the API endpoint
api_url="https://api2.cursor.sh/updates/api/update/linux-x64/cursor/0.0.0/"

# Fetch the JSON data from the API
json_data=$(curl -s "$api_url")

# Extract the version using jq
version=$(echo "$json_data" | jq -r '.version')

# Extract the URL using jq and remove .zsync
url=$(echo "$json_data" | jq -r '.url' | sed 's/\.zsync$//')

# Print the version and URL
echo "Version: $version"
echo "URL: $url"
