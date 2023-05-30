package com.MAXX.EmployeeControlller.dao;

import com.MAXX.EmployeeControlller.models.Employee;

import java.util.List;

public interface EmployeeDao {

    List<Employee> getEmployees(); //Especifico que debe existir el metodo "getEmployees"

    Employee getEmployee(Long id);//Especifico que debe existir el metodo "getEmployee" y recibe un parametro llamdo id

    void setEmployee(Employee employee);//Especifico que debe de exixistir el metodo "setEmployee" y recibe un parametro tipo de Employee de nombre employee

    void deleteEmployee(Long id);

    String registerEmployee(Employee employee);

}
