list_recent_files() {
    echo "Searching for files modified in the last 24 hours..."
    recent_files=$(find "$HOME" -type f -mtime -1)

    if [ -z "$recent_files" ]; then
        echo "No files modified in the last 24 hours."
    else
        echo "$recent_files"
    fi
}

# Call the function
list_recent_files
