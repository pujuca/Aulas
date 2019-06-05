const mongoose = require('mongoose')

mongoose.connect('mongodb://localhost/testeMongose', {useNewUrlParser: true})
        .then(() => {
           console.log('Conectado com sucesso')     
        })
        .catch((err) => {
            console.log('Erro de conexao'+err)
        })

