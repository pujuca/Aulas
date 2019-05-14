//
use preferencias
//
db.pessoa.insertMany([
  {nome:"Denival", gosto:["musica","esporte"]},
  {nome:"Antonio", gosto:["series","anime","gibi"]}  
])

//
db.pessoa.find({})

//
db.pessoa.update(
 {nome:"Antonio"},
 {$push:{gosto:"balada"}}
)

db.pessoa.update(
 {nome:"Denival"},
 {$pull:{gosto:"musica"}} 
) 
 
 


