set -x

# Create a customer
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"name":"BETA","city":"Berlin"}' \
  http://$1/customers/

# Read the customer
HTTP_GET=$(curl -o /dev/null -s -w "%{http_code}\n" http://$1/customers/BETA)
if [[ "$HTTP_GET" != "200" ]]; then
    echo "ERROR: expected a 200 HTTP code"
    exit 1
fi

# Delete the customer
HTTP_DELETE=$(curl -o /dev/null -s -w "%{http_code}\n" --request DELETE http://$1/customers/BETA)
if [[ "$HTTP_DELETE" != "200" ]]; then
    echo "ERROR: expected a 200 HTTP code"
    exit 2
fi