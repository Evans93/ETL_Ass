
#!/bin/bash


# Directories
SOURCE_DIR="C:/Users/evansehis/Documents/Raw/Files"  
DEST_DIR="C:/Users/evansehis/Documents/Raw/Json_and_Csv"     

# if the destination folder does not exist, create it 
mkdir -p $DEST_DIR

# Transfer all the CSV and JSON files

echo "Transferring CSV and JSON files..."

mv $SOURCE_DIR/*.csv $SOURCE_DIR/*.json $DEST_DIR/

# verifying the success of the movement

if [[ $? -eq 0 ]]; then
  echo "Files moved successfully!"
else
  echo "files was not successfully transferred."
  exit 1
fi
