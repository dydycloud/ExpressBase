express = require 'express'

app = express()

#### Middleware
#what is use beetwin call and response

#serving static files
app.use express.static __dirname + '/public'

app.get '/', (req, res) ->
  hello = 'Wah Gwon People'
  res.render 'default.jade', ({hello: hello})

app.get '/:name', (req, res) ->
  greeting = 'Wah Gwon ' + req.params.name
  res.render 'greeting.jade', ({greeting: greeting})

port = process.env.PORT || 8000
app.listen(port)
console.log('Listening on port ' + port)