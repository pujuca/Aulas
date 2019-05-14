// Utiliza
use preferencias
// Povoa
db.pessoa.insertMany([
  {nome:"Denival", gosto:["musica","esporte"]},
  {nome:"Antonio", gosto:["series","anime","gibi"]}  
])

// Busca
db.pessoa.find({})
// Busca que goste de musica ou de gibi
db.pessoa.find({
    gosto:{$in:["musica","gibi"]}
})
// Busca que goste de series e de gibi
db.pessoa.find({
    gosto:{$all:["series","gibi"]}
})

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
 
 


