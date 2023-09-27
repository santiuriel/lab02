/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author estudiante
 */
public class ProductosDAOImpl implements ProductosDAO{
    static List<Productos> dbProductos = new ArrayList<>();
    
    @Override
    public Productos save(Productos productos) {
        dbProductos.add(productos);
        
        return productos;
    }

    @Override
    public List<Productos> listar() {
        return dbProductos;
    }

    @Override
    public Productos buscar(int id) {
        for (Productos dbProducto : dbProductos) {
            if(dbProducto.getId() == id){
                return new Productos(id, dbProducto.getNombre(), dbProducto.getCantidad(), (int) dbProducto.getPrecio());
            }
        }
                
        return null;
    }
    
}
