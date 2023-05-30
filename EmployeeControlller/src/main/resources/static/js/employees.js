// Call the dataTables jQuery plugin
$(document).ready(function() {
  cargarEmployees();
  $('#employees').DataTable();
});


async function cargarEmployees(){
  const requestUser = await fetch('control/administracion/Employees',{
    method: 'GET',
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    }
  });
  const Employees = await requestUser.json();
  console.log(Employees);
  let listHtml = ``;

  for (let employeeElement of Employees) {
    let deleteButton = `<a href="#" onclick="eliminarUsuario(${employeeElement.id})" class="btn btn-danger btn-circle btn-sm">
              <i class="fas fa-trash"></i>
          </a>`;
    let employee =`<tr>
      <td>${employeeElement.id}</td>
      <td>${employeeElement.nombre} ${employeeElement.apellido}</td>
      <td>${employeeElement.rfc}</td>
      <td>${employeeElement.telefono}</td>
      <td>${employeeElement.correo}</td>
      <td>${employeeElement.domicilio}</td>
      <td>
          ${deleteButton}
      </td>
  </tr>`;
    listHtml += employee;
  }
  document.querySelector("#employees tbody").outerHTML = listHtml;

}




async function eliminarUsuario(id){

  if(!confirm(`Desea eliminar este usuario?`)){
    return;
  }
  const requestDeleteEntrances = await fetch(`control/administracion/entrances/${id}`,{
    method: 'DELETE',
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    }
  });
  const requestDeleteEmployee = await fetch(`control/administracion/Employee/${id}`,{
    method: 'DELETE',
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    }
  });

  location.reload();

}

async function searchEmployee(){
  let id = document.querySelector("#idsearch").value;
  console.log(id);
  if(id === ""){
    cargarEmployees();
    return;
  }
  const requestSearch = await fetch(`control/administracion/Employee/${id}`, {
    method : 'GET',
    headers: {
      'Accept':'application/json',
      'Content-Type':'application/json'
    }
  });
  const Employee = await requestSearch.json();
  console.log(Employee);
  let listHtml = `<tbody>
</tbody>`;
  if (Employee.id === null){
    alert("Ningun resultado");
  }
  else{

    listHtml = ``;
    let deleteButton = `<a href="#" onclick="eliminarUsuario(${Employee.id})" class="btn btn-danger btn-circle btn-sm">
              <i class="fas fa-trash"></i>
          </a>`;
    let employee =`<tr>
      <td>${Employee.id}</td>
      <td>${Employee.nombre} ${Employee.apellido}</td>
      <td>${Employee.rfc}</td>
      <td>${Employee.telefono}</td>
      <td>${Employee.correo}</td>
      <td>${Employee.domicilio}</td>
      <td>
          ${deleteButton}
      </td>
  </tr>`;
    listHtml += employee;
  }
  document.querySelector("#employees tbody").outerHTML = listHtml;


}


