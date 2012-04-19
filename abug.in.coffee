fs = require 'fs'
cons = require 'consolidate'
express = require 'express'
app = express.createServer()

app.engine 'html', cons.hogan
app.set 'view engine', 'html'
app.use express.static(__dirname + '/public')

app.get '/', (req, res) ->
  res.render 'index'
  
app.get '/:abug', (req, res) ->
  res.render 'index', {"abug": req.params.abug}

app.listen 8080