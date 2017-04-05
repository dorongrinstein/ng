# be careful before using this script
# it creates the following:

# 1. Certificate Authority (CA)
# 2. Server key and Certificate Signing Request (CSR)
# 3. Server Certificate
# 4. Client Certificate

# TODO: use proper crypto standards
# TODO: read defaults from a file
# TODO: prevent users from calling individual scripts (pass a token from here)

./make-ca.sh
./make-server-csr.sh
./make-server-cert.sh
./make-client-csr.sh
./make-client-cert.sh
mkdir dist
cp ./ca/ca.crt ./dist
cp ./server-key/server.key ./dist
cp ./server-cert/server.crt ./dist
echo 1234 > ./dist/global.pass

echo "certificates are ready in ./dist"

