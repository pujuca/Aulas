 // Resposta do ultimo exercicio Opereção basicas //
 
// Questão 01
db.pessoa.find({})

// Questão 02
db.pessoa.find({},{_id:0,nome:1,idade:1})

// Questão 03

db.pessoa.find({nome:"Brenda"})

// Questão 04
db.pessoa.find({nome:"Gerson"},{nome:1,salario:1})

// Questão 05
db.pessoa.find({nome:{$regex:"^A"}})

// Questão 07
db.pessoa.find({nome:{$regex:"ci"}})

// Questão 08
db.pessoa.find({nome:{$regex:"ta\$"}})

// Questão 09
db.pessoa.find({salario:{$gt:10.000}})

// Questão 10
db.pessoa.find({salario:{$gte:2000.00}})

// Questão 11
db.pessoa.find({salario:{$lt:1000.00}})

// Questão 12
db.pessoa.find({idade:{$lt:20}})

// Questão 13
db.pessoa.find({salario:{$gt:1000.00},idade:18})

// Questão 14
db.pessoa.find({idade:{$gt:20,$lt:30}})

// Questão 15
db.pessoa.find({salario:{$gt:1000.00},idade:{$gt:40}})


