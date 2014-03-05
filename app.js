(function() {
  var app, express, port;

  express = require('express');

  app = express();

  app.use(express["static"](__dirname + '/public'));

  app.get('/', function(req, res) {
    var hello;
    hello = 'Wah Gwon People';
    return res.render('default.jade', {
      hello: hello
    });
  });

  app.get('/:name', function(req, res) {
    var greeting;
    greeting = 'Wah Gwon ' + req.params.name;
    return res.render('greeting.jade', {
      greeting: greeting
    });
  });

  port = process.env.PORT || 8000;

  app.listen(port);

  console.log('Listening on port ' + port);

}).call(this);
