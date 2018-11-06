
//1
db.produto.find().count()
//2
db.produto.distinct("genero")
//3
db.produto.find({marca:"TT"}).count()
//4
db.produto.find({genero:{$in:["periféricos","Suprimentos"]}})
//5
db.produto.find({genero:{$not:{$eq:"Embalagens"}}})
//6
db.produto.find().sort({"nome":1})
//7
db.produto.aggregate([{
    $group:{_id:"$genero", val_min:{$min:"$valor_unit"}}
}])
//8
db.produto.aggregate([{
    $group:{_id:"$genero", val_max:{$max:"$valor_unit"}}
}])
//9
db.produto.aggregate([{
    $group:{_id:"$genero", val_med:{$avg:"$valor_unit"}}
}])
//10
db.produto.aggregate([{
    $group:{_id:"$genero", val_soma:{$sum:"$valor_unit"}}
}])
//11
db.produto.aggregate([{
    $project:{total:{$multiply:["$valor_unit","$qtde"]}}
}])








