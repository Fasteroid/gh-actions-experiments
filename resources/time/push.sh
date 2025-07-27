git config set advice.defaultBranchName false
git config --global user.email "223176432+fasteroidbot@users.noreply.github.com"
git config --global user.name "FasteroidBot"

mkdir -p __time
cd __time

# Initialize a new git repo in the subdirectory
git init
git remote add origin "https://x-access-token:$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git"

echo "https://x-access-token:$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git"

# Get the time
date > time

# Add and commit the single file
git add "time"
git commit -m "update the time"

# Force push to target branch
git push origin HEAD:data.time --force