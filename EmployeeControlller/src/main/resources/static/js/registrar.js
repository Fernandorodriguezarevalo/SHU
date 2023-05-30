// Call the dataTables jQuery plugin
$(document).ready(function() {
    //on ready
    
});


async function registrarUsuarios(){


    let datos = {};
    datos.nombre = document.querySelector("#txtnombre").value;
    datos.apellido = document.querySelector("#txtapellido").value;
    datos.rfc = document.querySelector("#txtRFC").value;
    datos.telefono = document.querySelector("#texttelefono").value;
    datos.correo = document.querySelector("#textemail").value;
    datos.domicilio = document.querySelector("#TXTdomicilio").value;
    datos.password = document.querySelector("#txtpassword").value;
    let aux = true;
    for (const datosKey in datos) {
        if(datos[datosKey] === "") {
            alert("Debes de llenar todos los campos");
            aux = false;
        }
    }
    
    console.log(datos.password)
    console.log(document.querySelector("#txtrepetirpassword").value)
    if(datos.password !== document.querySelector("#txtrepetirpassword").value){
        alert("La password no coincide");
        return;
    }

    const requestUser = await fetch('control/administracion/Employees',{
        method: 'POST',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(datos)
    });
    
    const respuesta = await requestUser.text();
    console.log(respuesta);
    if (respuesta === "OK"){
        alert("Registro exitoso!");
        window.location.href = "login.html";
    } 
    if (respuesta === "ERROR"){
        alert(`Algunos datos ya han sido registrados anteriormente: \n RFC: ${datos.rfc} \n Correo: ${datos.correo} \n `);
        document.querySelector("#txtRFC").value = "";
        document.querySelector("#textemail").value = "";
        let objetos = document.querySelectorAll(".rederror");
        objetos.forEach((objeto)=> {
            objeto.style.border= '2px solid red';
        })
    }
    
    


}

