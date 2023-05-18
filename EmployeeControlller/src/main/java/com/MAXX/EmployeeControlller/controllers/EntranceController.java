package com.MAXX.EmployeeControlller.controllers;

import com.MAXX.EmployeeControlller.dao.EntranceDao;
import com.MAXX.EmployeeControlller.models.Entrance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController //Indico que voy a manejar url(endpoints)
public class EntranceController {

    @Autowired //Va a cionfigurar la conexion de "beans"
    private EntranceDao entranceDao;

    @RequestMapping(value = "control/administracion/entrances", method = RequestMethod.GET)
    public List<Entrance> getEntrances(){
        return entranceDao.getEntrances();



    }
    @RequestMapping(value = "control/administracion/entrances/{id}")
    public Entrance getEntrance(@PathVariable Long id){
        return entranceDao.getEntrance(id);
    }
}
