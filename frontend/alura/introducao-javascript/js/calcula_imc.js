var titulo = document.querySelector(".titulo")
titulo.textContent = "Aparecida Nutricionista"

var pacientes = document.querySelectorAll(".paciente")
for(i = 0; i < pacientes.length; i++){
    paciente = pacientes[i]

    var tdPeso = paciente.querySelector(".info-peso")
    var peso = tdPeso.textContent 

    var tdAlutura = paciente.querySelector(".info-altura")
    var altura = tdAlutura.textContent 

    var tdImc = paciente.querySelector(".info-imc")

    pesoEhValido = validaPeso(peso)
    alturaEhValida = validaAltura(altura)

    if(!pesoEhValido){
        console.log("Peso inválida!")
        pesoEhValido = false
        tdImc.textContent = "Peso inválido"
        paciente.classList.add("paciente-invalido")
    }

    if(!alturaEhValida){
        console.log("Altura inválida!")
        pesoEhValido = false
        tdImc.textContent = "Altura inválida!"
        paciente.classList.add("paciente-invalido")
    }

    if(pesoEhValido && alturaEhValida){
        tdImc.textContent = calculaImc(altura, peso)
    }

}

function calculaImc(altura, peso){
    var imc = 0
    imc = peso / (altura * altura)

    return imc.toFixed(2)
}

function validaPeso(peso){
    if(peso >= 0 && peso < 1000){
        return true
    }else{
        return false
    }
}

function validaAltura(altura){
    if(altura >= 0 && altura <= 3){
        return true
    }else{
        return false
    }
}