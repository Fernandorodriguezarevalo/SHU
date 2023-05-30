package com.MAXX.EmployeeControlller.controllers;

import com.MAXX.EmployeeControlller.dao.EntranceDao;
import com.MAXX.EmployeeControlller.models.Entrance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController //Indico que voy a manejar url(endpoints)
public class EntranceController {

    @Autowired //Va a cionfigurar la conexion de "beans"
    private EntranceDao entranceDao;

    @RequestMapping(value = "control/administracion/entrances", method = RequestMethod.GET)
    public List<Entrance> getEntrances(){
        return entranceDao.getEntrances();



    }
    @RequestMapping(value = "control/administracion/entrances/{id}", method = RequestMethod.GET)
    public Entrance getEntrance(@PathVariable Long id){
        return entranceDao.getEntrance(id);
    }

    @RequestMapping(value = "control/administracion/entrances/{id}", method = RequestMethod.DELETE)
    public void deleteEntrances(@PathVariable Long id){
        entranceDao.deleteEntrances(id);
    }
    @RequestMapping(value = "control/administracion/entrances", method = RequestMethod.POST)
    public void registerEntrance(@RequestBody Entrance entrance){
        entranceDao.registerEntrance(entrance);
    }

    @RequestMapping(value = "control/administracion/entranceByEmployee/{id_employee}" , method = RequestMethod.GET)
    public List<Entrance> getEntranceByEmployee(@PathVariable Long id_employee){
        return entranceDao.getEntrancesByEmployees(id_employee);
    }
}
