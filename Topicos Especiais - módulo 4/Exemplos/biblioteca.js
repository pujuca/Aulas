function fatorial(n){
    let fat = 1;
    for (let i = n; i > 0; i--)
        fat *=i;
    return fat;    
}

function quadrado(n){
    return n*n;
}

function metade(n){
    return n/2;
}

module.exports = {
    metade,
    quadrado,
    fatorial
}