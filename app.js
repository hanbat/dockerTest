var express = require('express');
var app = express();

app.get(['/', '/index.html'], function (req, res) {
  res.send('Hello Docker changed by git push and updating with script count: 5');
});

app.get(['/test', '/index1.html'], function (req, res) {
  res.send('test Docker count: 8591');
});

app.listen(80);
