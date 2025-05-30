



record_name="$1"
test_ip="$2"

if ( [ "${CLOUDHOST}" = "linode" ] )
then
  /usr/local/bin/linode-cli domains records-list 3262756 --json | /usr/bin/jq -r '.[] | select (.name == "'${record_name}'" and .target == "'${test_ip}'").id'
