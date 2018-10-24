//questao1
db.produtos.find({})

//questao2
db.produtos.find({},{_id:0,"nome":1,"codigo":1,"valorUnit":1,"generoFamilia":1})
//questao3
db.produtos.find({$or:[{unid:"PC"},{unid:"CX"}]})
//questao4
db.produtos.find({$and:[{marca:"AA"},{qtde:{$gt:50}}]})
//questao5
db.produtos.find({generoFamilia:"Hardware"},{_id:0,"nome":1,"valorUnit":1})
[{
//questao6    
db.produtos.updateOne({nome:"Chave de Fenda"},{$set:{valorUnit:2.50}})
//questao7
db.produtos.updateMany({generoFamilia:"Embalagens"},{$set:{marca:"TT"}})
//questao8
db.produtos.deleteOne({nome:"Chave de Fenda"})
//questao9

db.produtos.deleteMany({generoFamilia:"Ferramentas"})