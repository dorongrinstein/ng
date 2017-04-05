# Sign the client certificate with our CA cert.  
# Unlike signing our own server cert, this is what we want to do.
password=1234

mkdir client-cert

echo "Using client CSR and CA to generate a client certificate"
openssl x509 -req -days 365 -in ./client-csr/client.csr -CA ./ca/ca.crt -CAkey ./ca/ca.key -passin pass:$password -set_serial 01 -out ./client-cert/client.crt


# Append the private key to the ./client-cert/client.crt file
cat ./client-key/client.key >> ./client-cert/client.crt