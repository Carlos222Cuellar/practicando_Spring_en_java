/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

/**
 *
 * @author cuellar
 */
public class Productos {
    int IdProducto;
    String nombre;
    double precio;
    int IdCategoria;
    boolean esPreparado;

    public Productos() {
    }

    public Productos(int IdProducto, String nombre, double precio, int IdCategoria, boolean esPreparado) {
        this.IdProducto = IdProducto;
        this.nombre = nombre;
        this.precio = precio;
        this.IdCategoria = IdCategoria;
        this.esPreparado = esPreparado;
    }
    
    

    public int getIdProducto() {
        return IdProducto;
    }

    public void setIdProducto(int IdProducto) {
        this.IdProducto = IdProducto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getIdCategoria() {
        return IdCategoria;
    }

    public void setIdCategoria(int IdCategoria) {
        this.IdCategoria = IdCategoria;
    }

    public boolean isEsPreparado() {
        return esPreparado;
    }

    public void setEsPreparado(boolean esPreparado) {
        this.esPreparado = esPreparado;
    }
    
}
