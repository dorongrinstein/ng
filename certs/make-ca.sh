# Create the CA Key and Certificate for signing Client Certs

echo "Generating CA"

password=1234
subject="/C=US/ST=CA/L=OakPark/O=4pc/OU=CentralArchitecture/CN=4pc.com"

mkdir ./ca

openssl genrsa -des3 -passout pass:$password -out ./ca/ca.key 4096
openssl req -new -subj $subject -passout pass:$password -x509 -days 365 -key ./ca/ca.key -passin pass:$password -out ./ca/ca.crt