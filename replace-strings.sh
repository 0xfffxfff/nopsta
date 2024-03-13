#!/bin/bash

# Define the root directory to start the search
# "." means the current directory. Adjust if needed.
root_directory="."

# Define the string to search for and the string to replace it with
search="https://nopsta.com/js/web3.min.js"
replace="/js/web3.min.js"

# Use find to locate all HTML files in the directory and subdirectories
# and use sed to replace the text in each file
find $root_directory -type f -name '*.html' -exec sed -i '' "s|$search|$replace|g" {} +
