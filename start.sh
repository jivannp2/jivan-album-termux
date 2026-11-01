#!/bin/bash

# Jivan Album - Termux Server Launcher
# Is script se aap apne phone par photo album web server chala sakte hain.

PORT=8080

echo "----------------------------------------"
echo "  Jivan Album - Termux Server Setup"
echo "----------------------------------------"

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "[!] Python3 nahi mila. Installing python..."
    pkg update && pkg install -y python
fi

# Get IP address if available
IP=$(ifconfig 2>/dev/null | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' | head -n 1)

echo "[+] Server start ho raha hai..."
echo "[+] Local URL:  http://localhost:${PORT}"
if [ -n "$IP" ]; stream
    echo "[+] Wi-Fi URL:  http://${IP}:${PORT}"
fi
echo "----------------------------------------"
echo "Press Ctrl+C to stop the server."
echo "----------------------------------------"

# Start HTTP Server
python3 -m http.server ${PORT}
