package com.MAXX.EmployeeControlller.dao;

import com.MAXX.EmployeeControlller.models.Entrance;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

import java.util.List;

public class EntranceDaoimp implements EntranceDao{
    @PersistenceContext //Voy a utilizar SQL
    EntityManager entityManager; // Es una variable manejadora de DB

    @Override //Especifico que mi metodo esta ejecutandose esperando interaccion
    @Transactional //Especifico q mi metodo es una transaccion de datos

    public List<Entrance> getEntrance() { //Metodo que devuelbe todos los usuarios en forma de lista
        String query = "FROM Entrance where 1"; //Guardo en texto una cosulta sql para mi DB, MI CONSULTA SELECCIONADA TODOS LOS USUARIOS
        return entityManager.createQuery(query).getResultList(); //Retorno la respuesta de mi Consulta de sql
    }

    @Override
    @Transactional
    public Entrance getEntrance(Long id) { //Especifico que devuelbe un usuario segun el id
        String query = "FROM Entrance WHERE id="+id; // Guardo en texto una cosulta sql para mi DB, MI CONSULTA seleccionada un usrio segun el id
        return entityManager.createQuery(query, Entrance.class).getSingleResult(); //retorno la respuesta de mi consulta sql(query)
    }

    @Override
    public void setEntrance(Entrance entrance) { //Metodo que recibe un usuario añadae usuario
        entityManager.merge(entrance); //Instruccion que une a la base de datos el usuraio que recibe el metodo
    }
}
