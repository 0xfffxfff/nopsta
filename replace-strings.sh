#!/bin/bash

# Define a function for replacing text in files
replace_text() {
    local root_directory=$1
    local search=$2
    local replace=$3

    find $root_directory -type f -name '*.html' -exec sed -i '' "s|$search|$replace|g" {} +
    find $root_directory -type f -name '*.js' -exec sed -i '' "s|$search|$replace|g" {} +
}

# Define the root directory to start the search
root_directory="."

# Call the function with different search and replace values
replace_text "$root_directory" "https://nopsta.com/js/web3.min.js" "/js/web3.min.js"
replace_text "$root_directory" "https://cdn.jsdelivr.net/npm/web3@latest/dist/web3.min.js" "https://cdn.jsdelivr.net/npm/web3@4.6.0/dist/web3.min.js"
replace_text "$root_directory" "https://nopsta.com/icon.png" "/icon.png"
replace_text "$root_directory" "https://nopsta.com/oraand/t/" "/oraand/t/"
