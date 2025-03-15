#!/bin/bash

# Exit script on error
set -e

# Function to remove directories if they exist
remove_dir() {
  if [ -d "$1" ]; then
    echo "Removing directory: $1"
    rm -r "$1"
  else
    echo "Directory $1 does not exist, skipping..."
  fi
}

# Clean build, dist, and egg-info directories
remove_dir "./build"
remove_dir "./dist"
remove_dir "./working_date.egg-info"

# Create distribution archives
echo "Building distribution..."
python setup.py sdist bdist_wheel

# Upload the package to PyPI using Twine
echo "Uploading to PyPI..."
twine upload dist/*

echo "Deployment completed successfully!"