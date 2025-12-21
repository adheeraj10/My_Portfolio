#!/bin/bash

# 1. Add all changes
git add .

# 2. Commit with a timestamp (so you don't have to type a message every time)
timestamp=$(date "+%Y-%m-%d %H:%M:%S")
git commit -m "Site update: $timestamp"

# 3. Push to GitHub
git push origin main

echo "---------------------------------------------------"
echo "✅ Success! Changes are live on GitHub."
echo "🚀 Netlify will now verify the updates along with any deployments."
echo "---------------------------------------------------"
