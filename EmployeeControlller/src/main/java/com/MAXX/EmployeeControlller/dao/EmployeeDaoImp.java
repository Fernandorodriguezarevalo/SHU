package com.MAXX.EmployeeControlller.dao;

import
        com.MAXX.EmployeeControlller.models.Employee;
import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Transactional

public class EmployeeDaoImp implements EmployeeDao {
    @PersistenceContext //Voy a utilizar SQL
    EntityManager entityManager;  // Es una variable manejadora de DB


    @Override //Especifico que mi metodo esta ejecutandose esperando interaccion
    @Transactional//Especifico q mi metodo es una transaccion de datos
    public List<Employee> getEmployees() { //Metodo que devuelbe todos los usuarios en forma de lista
        String query = "FROM Employee";//Guardo en texto una cosulta sql para mi DB, MI CONSULTA SELECCIONADA TODOS LOS USUARIOS
        return entityManager.createQuery(query).getResultList();//Retorno la respuesta de mi Consulta de sql
    }

    @Override
    @Transactional
    public Employee getEmployee(Long id) { //Especifico que devuelbe un usuario segun el id
        String query = "FROM Employee WHERE id = "+id;  // Guardo en texto una cosulta sql para mi DB, MI CONSULTA seleccionada un usrio segun el id
        Employee employee =  new Employee();
        try {
            employee = entityManager.createQuery(query, Employee.class).getSingleResult();
            System.out.println("Si se encontró un resultado");
        }catch (NoResultException e){
            System.out.println("No se encontró ningún valor");
        }
        return  employee; //retorno la respuesta de mi consulta sql(query)
    }

    @Override
    public void setEmployee(Employee employee) {  //Metodo que recibe un usuario añadae usuario
        entityManager.merge(employee); //Instruccion que une a la base de datos el usuraio que recibe el metodo
    }

    @Override
    public void deleteEmployee(Long id) {
        String query = "FROM Employee WHERE id = "+ id;
        Employee employee = entityManager.createQuery(query, Employee.class).getSingleResult();
        System.out.println(employee);
        entityManager.remove(employee);
    }

    @Override
    public String registerEmployee(Employee employee) {
        String queryComplement = "'"+employee.getCorreo()+"'" ;
        String query = "FROM Employee WHERE Correo = '" + employee.getCorreo() +"' AND RFC = '"+employee.getRFC()+"'";
        String result = "NULL";
        try {
            Employee remployee = entityManager.createQuery(query, Employee.class).getSingleResult();
            result = "ERROR";
        }catch (NoResultException e){
            System.out.println("No hay coincidencias se procede");
            entityManager.merge(employee);
            result = "OK";
        }
        return result;
    }

}
