
//1
use leilao
db.carros.insertMany([
{marca:"Fiat", modelo:"Uno", ano:2017, valor: 37000.00},
{marca:"Toyota", modelo:"Etios", ano:2016, valor: 45000.00},
{marca:"Vw", modelo:"Gol", ano:2007, valor: 12000.00},
{marca:"Toyota", modelo:"Hilux", ano:2009, valor: 70000.00},
{marca:"Fiat", modelo:"Palio", ano:2012, valor: 24000.00},
{marca:"Fiat", modelo:"Fusca", ano:1995, valor: 5000.00}, 
{marca:"Fiat", modelo:"Siena", ano:2014, valor: 28000.00}
])

//2
db.carros.updateOne({modelo:"Fusca"},{$set:{marca:"Vw"}})

//3
db.carros.deleteOne({modelo:"Siena"})

//4
db.carros.find()

//5
db.carros.find({marca:"Fiat"},{_id:0,modelo:1,valor:1})

//6
db.carros.find({modelo:/t/i})

//7
db.carros.find({$or:[{marca:"Vw"},{marca:"Toyota"}]})

//8
db.carros.find({$and:[{ano:{$gte:2012}},{valor:{$lt:40000}}]})

//9
db.carros.find().sort({marca:1,modelo:-1})

//10
db.carros.distinct("marca")