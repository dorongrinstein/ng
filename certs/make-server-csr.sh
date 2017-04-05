# Create the Server Key, CSR, and Certificate
mkdir server-csr
mkdir server-key

password=1234
subject="/C=US/ST=California/L=OakPark/O=4pc/OU=CentralArchitecture/CN=4pc.com"

echo "Generating server private key"
openssl genrsa -passout pass:$password -des3 -out ./server-key/server.key 1024

echo "Generating server certificate signing request (CSR)"
openssl req -new -key ./server-key/server.key -passin pass:$password -subj $subject -out ./server-csr/server.csr