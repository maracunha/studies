var pacientes = document.querySelectorAll("table")

pacientes.forEach(function(paciente){
    paciente.addEventListener("dblclick", function(event){
        event.target.parentNode.classList.add("fadeOut")

        setTimeout(function(){
            event.target.parentNode.remove()
        },500)
       
       // event.target.parentNode.remove()
       
    })
})



 /*
    event.target.parentNode.remove()    
 
    é o mesmo que:
    alvoEvento = event.target
    paiEvento = alvoEvento.parentNode
    paiEvento.remove( )
        
*/