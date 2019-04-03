create database vendas

use vendas

db.produtos.insertOne({
 genero:"Embalagens",
 codigo:"0103EM",
 nome:"Caixa de papelão",
 marca:"AA",
 qtde:100,
 unid:"PC",
 valor_unit:1.5
})

db.produtos.insertMany([
 { genero:"Periféricos",
 codigo:"02131PE",
 nome:"Mouse sem fio",
 marca:"BB",
 qtde:20,
 unid:"PC",
 valor_unit:18
 },
 { genero:"Suprimentos",
 codigo:"03209SU",
 nome:"Toner HP 6112",
 marca:"CC",
 qtde:2,
 unid:"CX",
 valor_unit:300
 },
 { genero:"Hardware",
 codigo:"04146HA",
 nome:"Placa de vídeo 256MB",
 marca:"EE",
 qtde:3,
 unid:"PC",
 valor_unit:180
 },
 { genero:"Ferramentas",
 codigo:"05010FE",
 nome:"Alicate de Bico",
 marca:"XX",
 qtde:5,
 unid:"PC",
 valor_unit:11.6
 },
 { genero:"Embalagens",
 codigo:"01190EM",
 nome:"Saco Plástico 20L",
 marca:"AA",
 qtde:20,
 unid:"CT",
 valor_unit:35.5
 },
 { genero:"Embalagens",
 codigo:"01038EM",
 nome:"Cesto de Arame",
 marca:"BB",
 qtde:20,
 unid:"PC",
 valor_unit:22
 },
 { genero:"Ferramentas",
 codigo:"01032FE",
 nome:"Chave de Fenda",
 marca:"XX",
 qtde:45,
 unid:"PC",
 valor_unit:2.3
 },
 { genero:"Hardware",
 codigo:"04139HA",
 nome:"Memória 1GB 667Mhz",
 marca:"EE",
 qtde:30,
 unid:"PC",
 valor_unit:45
 },
 { genero:"Hardware",
 codigo:"04081HA",
 nome:"HD Sata 250M",
 marca:"MM",
 qtde:10,
 unid:"PC",
 valor_unit:230
 }
])