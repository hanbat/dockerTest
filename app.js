var express = require('express');
var app = express();

app.get(['/', '/index.html'], function (req, res) {
  res.send('Hello Docker changed by git push and updating with script count: 5');
  console.log('someone in / page!');
});

app.get(['/test', '/index1.html'], function (req, res) {
  res.send('test Docker count: 8591');
  console.log('someone in /test page!');
});

app.listen(80);
