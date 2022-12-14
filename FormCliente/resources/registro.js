const url = "http://localhost:3000/api/cliente/";
let resultados = '';
const formArticulo = document.querySelector("form");
const usercli = document.getElementById("USERCLI");
const emaicli = document.getElementById("EMAICLI");
const celcli = document.getElementById("CELCLI");
const infocli = document.getElementById("INFOCLI");
const msgcli = document.getElementById("MSGCLI");
var opcion = '';

btnCrear.addEventListener('click', () => {
    console.log("Acción de listar activada");
    opcion = 'crear';
});

formArticulo.addEventListener('submit',
    (e) => {
   	 e.preventDefault();
   	 if (opcion == 'crear') {
   		 if (USERCLI.value == "" || EMAICLI.value == "" || CELCLI.value == "" || INFOCLI.value == "" || MSGCLI.value == "") {
            alert("Asegúrese de que todos los campos estén completos");
       		 return false;
   		 } else {
       		 console.log("Todos los campos están completos");
       		 fetch(
           		 url,
           		 {
               		 method: 'POST',
               		 headers: {
                   		 'content-Type':'application/json'
               		 },
               		 body: JSON.stringify(
                   		 {
                       		 USERCLI: USERCLI.value,
                       		 EMAICLI: EMAICLI.value,
                       		 CELCLI: CELCLI.value,
                       		 INFOCLI: INFOCLI.value,
                       		 MSGCLI: MSGCLI.value
                   		 }
               		 )
           		 }
       		 )
       		 .then(
           		 response => response.json()
       		 )
       		 .then(
           		 response => location.reload()
       		 );
   		 }
   	 } else if(opcion == 'editar'){
   		 console.log("Activado el ");
   	 }
    }
);