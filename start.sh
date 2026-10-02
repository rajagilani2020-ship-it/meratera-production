#!/bin/bash

# Start MT5 VNC background service
/entrypoint.sh &

# Wait 30 seconds for MT5 and Wine to initialize
echo "Waiting for MT5 to start..."
sleep 30

# Run your Python bot
echo "Starting Python script..."
python3 /app/main.py
