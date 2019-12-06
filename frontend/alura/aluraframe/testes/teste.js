// start-process "chrome.exe" .\teste.html

let numeros = [3,2,11,20,8,7];
let novosNumeros = numeros.map(item =>  item % 2 ? item * 2 : item);
console.log(novosNumeros);

// ou

let numeros = [3,2,11,20,8,7];
let novosNumeros = [];

numeros.forEach(item => {

    if(item % 2) { // só entra no IF se o resultado for diferente de zero
        novosNumeros.push(item * 2);
    } else {
        novosNumeros.push(item);
    }
});
console.log(novosNumeros);

// Utilizando o spread operator (...)

function somaDoisNumeros(numero1, numero2) {
  return numero1 + numero2;                                            
}

console.log(somaDoisNumeros(10,30)); // exibe 40!

let numeros = [10, 30];
console.log(somaDoisNumeros(numeros[0], numeros[1]));

// com o spread operator fica assim:

numeros = [10,30];
console.log(somaDoisNumeros(...numeros));

// ########################################

let sum = 0
let numeros = [1,2,3,4,6];
numeros.forEach(function(i){
    return sum = i++;    
})
console.log(sum);
// output: 10

// ########################################
// https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce

function simpleArraySum(ar) {
    const reducer = (accumulator, currentValue) => accumulator + currentValue;
    return (ar.reduce(reducer));
}

ar = [1, 2, 3, 4, 10, 11]
let result = simpleArraySum(ar);
// output: 31

// ########################################

let alice = [17, 28, 30]
let bob = [99, 16, 8]

function compareTriplets(a, b) {


}
