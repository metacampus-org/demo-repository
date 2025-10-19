#!/bin/bash
set -e

# ----------------------------------------
# MetaCampus Easy-A Hackathon Frontend Setup
# Ubuntu 24.04 on AWS EC2
# ----------------------------------------

echo "📦 Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "🧰 Installing dependencies (git, curl)..."
sudo apt install -y git curl

echo "🔧 Installing Node.js 20.x and npm (via NodeSource)..."
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

echo "✅ Node.js version:"
node -v
echo "✅ npm version:"
npm -v

# ----------------------------------------
# Clone the MetaCampus repo
# ----------------------------------------
echo "📂 Cloning MetaCampus Easy-A Hackathon repository..."
cd /var/www || cd ~
if [ -d "easy-a-hackathon" ]; then
    echo "⚠️  Directory already exists — skipping clone."
else
    git clone https://github.com/metacampus-org/easy-a-hackathon.git
fi

cd easy-a-hackathon/easy-a-hackathon-frontend

# ----------------------------------------
# Install dependencies
# ----------------------------------------
echo "📦 Installing Node dependencies..."
npm install --legacy-peer-deps

# ----------------------------------------
# Start development server
# ----------------------------------------
echo "🚀 Starting MetaCampus dev server..."
echo "💡 Note: the app will run on http://<your-server-ip>:3000"
echo "💡 Make sure port 3000 is open in your AWS Security Group."
npm run dev
