$(document).ready(function () {
    cargarEntrances();
    $('#entrances').DataTable();
});

async function cargarEntrances(){
    //----------------------------------------------------------------------------------------------
    const requestEntrance = await fetch('control/administracion/entrances', {           //
        method: 'GET',                                                                            //
        headers: {                                                                                //
            'Accept' : 'application/json',                                                        //    conexión con el servidor
            'Content-Type' : 'application/json'                                                   //
        }                                                                                         //
    });                                                                                           //
    //----------------------------------------------------------------------------------------------
    const Entrances = await requestEntrance.json();
    console.log(Entrances);
    let listHtml = ``;

    for (let entranceElement of Entrances){
        let entrance = `
                <tr>
                    <td>${entranceElement.id_employee}</td>
                    <td>${entranceElement.fecha}</td>
                    <td>${entranceElement.hora_entrada}</td>
                    <td>${entranceElement.hora_salida}</td>
                </tr>
        `;
        listHtml += entrance;
    }
    for(let entrance of Entrances){
        if( entrance === null){
            return;
        }
    }
    document.querySelector("#entrances tbody").outerHTML = listHtml;

}

async function searchEmployee(){
    let id = document.querySelector("#idsearch").value;
    console.log(id);
    if(id === ""){
        cargarEntrances();
        return;
    }
    //----------------------------------------------------------------------------------------------//
    const requestSearch = await fetch(`control/administracion/entranceByEmployee/${id}`, {//
        method : 'GET',                                                                             //
        headers: {                                                                                  //
            'Accept':'application/json',                                                            //   conexión con el servidor
            'Content-Type':'application/json'                                                       //
        }                                                                                           //
    });                                                                                             //
    //----------------------------------------------------------------------------------------------//
    const Entrances = await requestSearch.json();
    console.log(Entrances);
    let listHtml = `<tbody>
</tbody>`;
    if (Entrances.length === 0){
        alert("Ningun resultado")
    }
    else{

        listHtml = ``;
        for (let entranceElement of Entrances) {
            let entrance = `
                <tr>
                    <td>${entranceElement.id_employee}</td>
                    <td>${entranceElement.fecha}</td>
                    <td>${entranceElement.hora_entrada}</td>
                    <td>${entranceElement.hora_salida}</td>
                </tr>
        `;
            listHtml += entrance;
        }
    }
    document.querySelector("#entrances tbody").outerHTML = listHtml;
    

}