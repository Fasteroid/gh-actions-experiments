git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"

mkdir -p __time
cd __time

# Initialize a new git repo in the subdirectory
git init
git remote add origin ${{ github.server_url }}/${{ github.repository }}.git

# Get the time
date > time

# Add and commit the single file
git add "time"
git commit -m "update the time"

# Force push to target branch
git push origin HEAD:data.time --force