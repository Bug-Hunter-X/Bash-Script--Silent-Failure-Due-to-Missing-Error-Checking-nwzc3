#!/bin/bash

# Improved script with proper error handling

file_to_process="/path/to/your/file.txt"

# Check if the file exists
if [ ! -f "$file_to_process" ]; then
  echo "Error: File '$file_to_process' not found." >&2
exit 1
fi

# Run grep and check the exit status
grep "pattern" "$file_to_process"
if [ $? -ne 0 ]; then
  echo "Error: Pattern not found in file." >&2
exit 1
fi

echo "Processing complete."