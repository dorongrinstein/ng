# We're self signing our own server cert here.  
# This is a no-no in production.

password=1234

mkdir server-cert

echo "Using CA and CSR to generate a server certificate"
openssl x509 -req -days 365 -in ./server-csr/server.csr -CA ./ca/ca.crt -CAkey ./ca/ca.key -passin pass:$password -set_serial 01 -out server-cert/server.crt

