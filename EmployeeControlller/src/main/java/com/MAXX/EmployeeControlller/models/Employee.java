package com.MAXX.EmployeeControlller.models;


import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.stereotype.Repository;


@Entity //Declarar la clase como identidad
@Table(name = "Employees")//Especificar la tabla a la que hace referencia
@ToString @EqualsAndHashCode // Darle formato de salida a un consulta


public class Employee {
    @Id //Especifico que hablo de un id
    @GeneratedValue (strategy = GenerationType.IDENTITY) //Especifico que es autoincrementable
    @Getter @Setter @Column (name = "id") //Especifico que la propiedad tentra getter y setter, hace referencia a la columna id
    private Long id; //Long es para id muy extenso, declaro la propiedad de la bd
    @Getter @Setter @Column (name = "Nombre")
    private String Nombre;

    @Getter @Setter @Column (name = "Apellido")
    private String Apellido;

    @Getter @Setter @Column (name = "RFC")
    private  String RFC;

    @Getter @Setter @Column (name = "Telefono")
    private  String Telefono;

    @Getter @Setter @Column (name = "Correo")
    private  String Correo;

    @Getter @Setter @Column (name = "Domicilio")
    private  String Domicilio;


}
