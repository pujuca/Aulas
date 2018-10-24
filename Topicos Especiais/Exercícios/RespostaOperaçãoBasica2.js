
   //1. Exibir a quantidade de produtos cadastrados.
   db.produtos.count()
   //2. Exibir a quantidade de produtos que são ferramentas.
   db.produtos.find({generoFamilia:"Ferramentas"}).count()
   //3. Exibir as distintas unidades de medida.
   db.produtos.distinct("uni")
   //4. Exibir o nome dos distintos gêneros.
   db.produtos.distinct("generoFamilia")
   //5. Exibir a quantidade de produtos que sejam da marca TT.
   db.produtos.find({marca:
                          {$in:["TT"]}}).count()
   //6. Exibir os produtos que são do grupo de periféricos ou suprimentos.
   db.produtos.find({generoFamilia:{$in:["Perifericos","Suprimentos"]}})
   //7. Exibir os produtos que não são embalagens.
   db.produtos.find({generoFamilia:{$nin:["Embalagens"]}})
   //8. Exibir os produtos ordenados pelo nome em ordem crescente.
   db.produtos.find().sort({"nome":1})


