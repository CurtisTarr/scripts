#!/bin/sh

# WARNING - This permanently deletes files, use at own risk!
# Designed to remove files from macOS

echo "WARNING - This permanently deletes files, use at own risk!"
echo "What would you like to purge:\n * ss - screenshots\n * dl - downloads\n * all - screenshots and downloads\n * <anything else> - quit"

read option

function deleteScreenshots {
    echo "Deleting Screenshots in ~/Desktop"
    echo "Screenshots deleted:"
    find ~/Desktop -name 'Screenshot*.png' -delete -print
}

function deleteDownloads {
    echo "Deleting all non-hidden files in ~/Downloads"
    echo "Files deleted:"
    find ~/Downloads ! -path ~/Downloads ! -name '.*' -delete -print
}

case $option in
    
    ss)
        deleteScreenshots
        ;;

    dl)
        deleteDownloads
        ;;
    
    all)
        deleteScreenshots
        deleteDownloads
        ;;
    
    *)
        echo "No actions performed"
        ;;
esac