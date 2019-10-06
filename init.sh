#!/bin/bash

echo "Installing and updating dependencies..."
npm install && npm update

echo
echo "Enter your project details: "
echo
read -p 'Project name: ' name
read -p 'Version: ' version
read -p 'Description: ' description
read -p 'Author: ' author
read -p 'License: ' license

echo
echo "Updating package.json..."
# Replace values in package.json
npx json -I -f package.json -e \
	'this.name = "'"$name"'"; this.version = "'"$version"'"; this.description = "'"$description"'"; this.author = "'"$author"'"; this.license = "'"$license"'"'

# Add init.sh to .gitignore
echo "init.sh" >> .gitignore

echo
echo "Project initialized, you're ready to code!"
echo
echo "'$ npm run dev' to start the server."
echo
echo "'$ npm run build' to bundle your application for production."
echo
