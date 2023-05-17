package com.MAXX.EmployeeControlller.controllers;


import com.MAXX.EmployeeControlller.dao.EmployeeDao;
import com.MAXX.EmployeeControlller.models.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController //Indico que voy a manejar url(endpoints)
public class EmployeeController {

    @Autowired //Va configurar automaticamente la conexión de "beans"
    private EmployeeDao employeeDao;

    @RequestMapping(value = "control/administracion/Employees", method = RequestMethod.GET)
    public List<Employee> getEmployees(){
        return employeeDao.getEmployees();
    }

    @RequestMapping(value = "control/administracion/Employee/{id}")
    public Employee getEmployee(@PathVariable Long id){
        return employeeDao.getEmployee(id);
    }

}
