var express = require('express');
var app = express();

app.get('/', function(req, res) {
  res.send('Olá Mundo GET');
});

app.get('/amigo', function(req, res) {
  res.sendFile(__dirname +"/html/index.html")

});
  
app.listen(3000, function() {
  console.log('App de Exemplo escutando na porta 3000!');
});