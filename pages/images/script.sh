#!/bin/bash

# Directory containing PNG files (change if needed)
IMG_DIR="./"

# Loop through all PNG files in the directory
for img in "$IMG_DIR"*.png; do
    # Extract filename without extension
    filename=$(basename -- "$img" .png)
    
    # Create corresponding HTML file
    html_file="$IMG_DIR$filename.html"
    
    # Write HTML content to the file
    cat > "$html_file" <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$filename</title>
</head>
<body>
    <img src="./images/$filename.png" alt="$filename" style="max-width:100%; height:auto;">
</body>
</html>
EOF
    
    echo "Generated: $html_file"
done
