package com.MAXX.EmployeeControlller.dao;

import com.MAXX.EmployeeControlller.models.Entrance;

import java.util.List;

public interface EntranceDao {

    List<Entrance> getEntrances(); //Especifico que debe existir el metodo "gertUsuario"

    Entrance getEntrance(Long id); //Especifico que debe existir el metodo "get Entance" y recibe un parametro llamdo id

    void setEntrance(Entrance entrance); //Especifico que debe de exixistir el metodo "setEntrance" y recibe un parametro tipo de Entrance de nombre entrance

    void deleteEntrances(Long id_employee);

    void registerEntrance(Entrance entrance);

    List<Entrance> getEntrancesByEmployees(Long id_employee);
}
