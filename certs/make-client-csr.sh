mkdir client-key
mkdir client-csr

password=1234
subject="/C=US/ST=CA/L=OakPark/O=4pc/OU=CentralArchitecture/CN=client1.4pc.com"

echo "Generating client private key"
openssl genrsa -passout pass:$password -des3 -out ./client-key/client.key 1024

echo "Using client private key to generate client CSR"
openssl req -new -key ./client-key/client.key -passin pass:$password -subj $subject -out ./client-csr/client.csr
