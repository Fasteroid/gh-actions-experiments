token=$(cat ./token)

curl -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Authorization: token $token" \
  https://api.github.com/repos/fasteroid/gh-actions-experiments/dispatches \
  -d '{
    "event_type": "ls"
  }'