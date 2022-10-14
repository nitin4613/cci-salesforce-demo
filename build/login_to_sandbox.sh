echo "Logging into Sandbox Salesforce Org"
mkdir keys
echo $CERT_KEY > keys/server.key
echo "Authenticating org"
sfdx force:auth:jwt:grant --clientid $APP_KEY --jwtkeyfile keys/server.key --username $SF_USERNAME --setdefaultdevhubusername -a DevHub