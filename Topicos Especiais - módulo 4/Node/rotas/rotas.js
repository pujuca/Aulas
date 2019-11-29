const express = require('express');
const conexao = require('../conexao');
const mongoose = require('../model/amigo');
const bodyParser = require('body-parser');

// variaveis globais
route = express(express.json);
const contatos = mongoose.model('amigo');
route.use(bodyParser.json());

// Rotas
route.get('/amigo', (req, res) => {
    contatos.find((err, contatos) => {
        if (err){
            res.send(err);
            res.status(505);
        } else {
            res.status(200);
            res.json(contatos);    
        }
    })
});

route.get('/amigo/:contatos_id', (req, res) => {
    contatos.findOne({_id:req.params.contatos_id}, (err, contatos) => {
        if (err){
            res.send(err);
            res.status(405);
        } else {
            res.status(200);
            res.json(contatos);    
        }
    })
})

route.put('/amigo/:contatos_id', (req, res) => {
    var id =  req.params.contatos_id;
    contatos.updateOne({_id: id},
                       {$set: { nome: req.body.nome,
                                idade: req.body.idade}}, (err, contato) => {
                                    if (err){
                                        res.send(err);
                                        res.status(505);
                                    } else {
                                        res.status(201);
                                        res.json("Amigo Salvo.");    
                                    }                           
                                })
})

route.delete('/amigo/:contatos_id', (req, res) => {
    var id =  req.params.contatos_id;
    contatos.deleteOne({_id: id}, (err, contatos) =>{
        if (err){
            res.send(err);
            res.status(405);
        } else {
            res.status(200);
            res.json("Amigo Removido com sucesso.");    
        }        
    })
})

route.post('/amigo', (req, res) => {
    var pessoa = new contatos();
    pessoa.nome = req.body.nome;
    pessoa.idade = req.body.idade;

    pessoa.save(pessoa, (err, contatos) => {
        if (err){
            res.send(err);
            res.status(400);
        } else {
            res.status(201);
            res.json(contatos);    
        }
    })
})

// Cria servidor básico
route.listen(3000, () => {
    console.log('Sevidor rodando na porta 3000');
})
