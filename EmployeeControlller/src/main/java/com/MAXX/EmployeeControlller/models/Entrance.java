package com.MAXX.EmployeeControlller.models;


import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity // Declarar clase como indentidad
@Table(name = "entrance")// Especificar la tabla a la que hace referrencia
@ToString @EqualsAndHashCode //Darle formato de salidaa una consulta en forma de texto
public class Entrance {
    @Id // Se especifica qe habla de un id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Especifico que es auto incrementable y se habla ede un id
    @Getter @Setter @Column(name = "id")//Busca la propiedad en la base de datos se declara que la propiedad tendra getter y setter y hace referancvia a la columna id
    private Long id; // Se declara la propiedad que se encuentra en la base de datos Se utiliza con long para numeros enteros largos y haci el puerto no se satura

    @Getter @Setter @Column(name = "id_employee")
    private Long id_employee;

    @Getter @Setter @Column(name = "fecha")
    private String fecha;

    @Getter @Setter @Column(name = "hora_entrada")
    private String hora_entrada;

    @Getter @Setter @Column(name = "hora_salida")
    private String hora_salida;
}
