var express = require('express')
var app = express()

app.get('/', function (req, res) {
  res.send('Hola desde un contenedor Docker, en un posible microservicio')
})

app.listen(1337)
