#takes as input the name of the output var in TF
export BASE_URL="https://app.terraform.io/api/v2"
export TOKEN=$TF_API_TOKEN
export WORKSPACE_ID="ws-vjsSZ83EY1bfvSVh"
curl -s \
    --header "Authorization: Bearer ${TOKEN}" \
    --header "Content-Type: application/vnd.api+json" \
    --request GET \
    "${BASE_URL}/workspaces/${WORKSPACE_ID}/current-state-version?include=outputs" | jq -r ".included[].attributes | select(.name | contains(\"$1\")).value"

## now filter me with this: 
#sh get_TFcloud_vars.sh | jq -r ".included[].attributes | select(.name | contains(\"vpc_id\")).value"
