// 1
use backFriday

db.produto.insertMany([{cod:1, nome:"Arroz"},
                       {cod:2, nome:"Feijão"},
                       {cod:3, nome:"Farinha"}])


db.venda.insertMany([{num:1, produto:1, valor:5.00},
                     {num:2, produto:2, valor:3.50},
                     {num:3, produto:1, valor:7.00}
])

// 2
use backFriday
db.createUser({
    user:"comprador",
    pwd:"jesus",
    roles:["readWrite", {role:"readWrite", db:"backFriday"}],
    passwordDigestor:"server"
})                     
// 
db.getUsers()


// 3
mongodump --db backFriday --out d:\ionic\backup
mongorestore --db BF d:\ionic\backup\backupbackFriday
    
//4
db.venda.aggregate([{
        $group:{_id:"$produto", maior:{$max:"$valor"}}
}])

//5
db.venda.aggregate([{
        $group:{_id:"$produto", menor:{$min:"$valor"}}
}])

                 
               

                     





