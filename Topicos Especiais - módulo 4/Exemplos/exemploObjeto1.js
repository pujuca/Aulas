let array = [];
let comp = {
    tombamento:'045756',
    localizacao:'L4',
    processador:'i7',
    ativo:true
};
array.push(comp);

comp = new Object;
comp.tombamento = '045756';
comp.localizacao = 'L3';
comp.processador = 'i5';
comp.ativo = false;
array.push(comp);

comp = new Object;
comp.tombamento = '045759';
comp.localizacao = 'L2';
comp.processador = 'i5';
comp.ativo = true;
array.push(comp);

function computadores(){
    let ativos = [];
    let objeto;
    for (let i = 0; i < array.length; i++){
        objeto = array[i];
        if (objeto.ativo === true)
            ativos.push(objeto);
    }
    return ativos;
}

let ativos = [];
ativos = computadores();
console.log(ativos);
