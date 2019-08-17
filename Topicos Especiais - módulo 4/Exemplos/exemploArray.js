let vet = [1,3,5,7,9];
console.log('Tamanho do array: '+vet.length);
let soma = 0;
for (let i = 0; i < vet.length; i++){
    console.log(vet[i]);
    soma += vet[i];
}
let media = soma/(vet.length); //calcula a média
console.log('A media é:' + media);
console.log(`A média é ${media}`); //template string

