// Utiliza
use preferencias
// Povoa
db.pessoa.insertMany([
  {nome:"Denival", gosto:["musica","esporte"]},
  {nome:"Antonio", gosto:["series","anime","gibi"]}  
])

// Busca
db.pessoa.find({})

// Inseri novo gosto
db.pessoa.update(
 {nome:"Antonio"},
 {$push:{gosto:"balada"}}
)

// Remove gosto
db.pessoa.update(
 {nome:"Denival"},
 {$pull:{gosto:"musica"}} 
) 
 
 


