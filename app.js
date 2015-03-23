var express = require('express');
var app = express();

app.get(['/', '/index.html'], function (req, res) {
  res.send('Hello Docker changed by git push and updating with script count: 2');
});

app.listen(80);
