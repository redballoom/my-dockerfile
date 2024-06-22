#!/bin/sh

cd /app

if [ -f requirements.txt ]; then
    echo "Installing/Updating dependencies..."
    pip install --no-cache-dir -r requirements.txt
else
    echo "requirements.txt not found, skipping dependency installation."
fi

python hello.py


tail -f /dev/null
