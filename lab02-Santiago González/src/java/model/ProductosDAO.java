/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package model;

import java.util.List;

/**
 *
 * @author estudiante
 */
public interface ProductosDAO {
    
    Productos save(Productos productos);
    
    List<Productos> listar();
    
    Productos buscar(int id);
    
}
