echo "Logging into Salesforce Org"
mkdir keys
echo "-----BEGIN RSA PRIVATE KEY-----" > keys/server.key
echo $CERT_KEY >> keys/server.key
echo "-----END RSA PRIVATE KEY-----" >> keys/server.key
echo "Authenticating org"
sfdx force:auth:jwt:grant --clientid $APP_KEY --jwtkeyfile keys/server.key --username $SF_USERNAME --setdefaultdevhubusername -a DevHub