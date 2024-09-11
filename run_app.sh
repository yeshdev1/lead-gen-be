#!/bin/bash

# Run mypy
echo "Running mypy..."
mypy app.py

# Check if mypy was successful
if [ $? -eq 0 ]; then
    echo "Type checking passed. Starting Flask app..."
    python3 app.py
else
    echo "Type checking failed. Please fix the errors before running the app."
    exit 1
fi