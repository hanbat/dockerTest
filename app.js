var express = require('express');
var app = express();

app.get(['/', '/index.html'], function (req, res) {
  res.send('Hello Docker changed by git push and updating with script');
});

app.listen(80);
