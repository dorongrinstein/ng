let express = require('express');

let app = express();
app.get('/', function(req, res) {
  let dn = req.get('X-SSL-CLIENT-SUBJECT-DN');
  res.send(dn);
});

app.listen(80);
console.log('app is listening on 80');