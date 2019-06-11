const express = require('express')
const bodyParser = require('body-parser')
const conexao = require('../conexao')
const mongoose = require('../model/amigo')
// criar um amigo do modelo amigo
const amigo = mongoose.model('amigo');

// Configurações
router = express(express.json())
router.use(bodyParser.urlencoded({ extended: false }))
router.use(bodyParser.json())
var jsonParser = bodyParser.json({ type: 'application/*+json' } );

// Rota get
router.get('/amigos', (req, res) => {
    console.log('Rota GET executando');
    // pesquisa todos os amigos
    amigo.find((err, amigos) => {
        // Em caso de erros, envia o erro na resposta
        if (err)
            res.send(err)
        // Retorna todos os amigos encontrados no BD
        res.json(amigos); 
    });
});
// Rota salvar amigo
router.post('/amigos', jsonParser, (req,res) => {
    // cria um novo amigo
    novoAmigo = new amigo({
        nome: req.body.nome,
        apelido: req.body.apelido,
        idade: req.body.idade
    })

    // salva o novo amigo
    novoAmigo.save()
      .then(() => {
          console.log('Amigo salvo ...')
          res.status(201)
          res.json('Amigo Salvo')
          
      }).catch((err) => {
          res.status(505)
          console.log('Erro ao salvar amigo ...'+err)
      })
});

// Busca um contato p
router.get('/amigos/:amigo_id', function(req, res) {
    // Busca o contato no Model pelo parâmetro id
    amigo.findOne({
        _id : req.params.amigo_id
    }, function(err, amigo) {
        if (err)
            res.send(err);
        res.json(amigo);
    });
});



// Atualiza
router.put('/amigos/:amigo_id', jsonParser, (req,res) => {
    // Busca o contato no Model pelo parâmetro id
    var amigoData = req.body;
    var id = amigoData._id;
    //node
    console.log(id);

    amigo.findByIdAndUpdate( 
        {_id: id }, 
        {
            nome:req.body.nome,
            apelido:req.body.apelido,
            idade: req.body.idade
        }, 
        { upsert: true}, 
        function(err, amigo) {
            if (err) 
                res.send(err);
            res.json(amigo);
    }); 

 


});
  

// Starta o servidor
router.listen(3000, () => {
    console.log('Servidor rodando na porta 3000.')
});
