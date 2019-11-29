const mongoose = require('mongoose');
var Schema = mongoose.Schema;
var amigoSchema = new Schema({
    nome : {
            type: String,
            require:true }, 
    idade : {
            type: Number,
            require:true}    
});

module.exports = mongoose.model('amigo', amigoSchema);

