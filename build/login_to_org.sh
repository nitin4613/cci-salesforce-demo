echo "Logging into Salesforce Org"
mkdir keys
echo $SFDX_JWT_KEY | base64 --decode --d > keys/server.key
echo "Authenticating org"
sfdx force:auth:jwt:grant --clientid $SFDX_CONSUMER_KEY --jwtkeyfile keys/server.key --username $SF_USERNAME --setdefaultdevhubusername -a DevHub