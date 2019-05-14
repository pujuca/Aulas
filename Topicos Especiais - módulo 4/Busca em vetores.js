// Utiliza
use preferencias

// Povoa
db.pessoa2.insertMany([
  {nome:"Denival", contato:[{residencial:"33236005",celular:"998277464"}]},
  {nome:"Antonio", contato:[{residencial:"33236003",celular:"998277465"}]}  
])

// Busca
db.pessoa2.find({"contato.celular":"998277464"})

  

