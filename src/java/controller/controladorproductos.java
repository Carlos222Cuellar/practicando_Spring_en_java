/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import config.conexion;
import entidades.Productos;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;




/**
 *
 * @author cuellar
 */
@Controller
public class controladorproductos {
    conexion con=new conexion();
    JdbcTemplate jdbcTemplate=new JdbcTemplate(con.conectar());
    ModelAndView mav=new ModelAndView();
    
    @RequestMapping("productos.html")
    public ModelAndView Listar(){
    String sql="SELECT * from Productos";
    List datos=this.jdbcTemplate.queryForList(sql);
    mav.addObject("lista",datos);
    mav.setViewName("productos");
    return mav;
    }
    
   
    
    @RequestMapping(value = "nuevo.html", method = RequestMethod.GET)
    public ModelAndView Nuevo(){
    mav.addObject(new Productos());
    mav.setViewName("nuevo");
    return mav;
    }
    
    @RequestMapping(value = "nuevo.html", method = RequestMethod.POST)
    public ModelAndView Nuevo( Productos p){
    String sql="INSERT INTO Productos(IdProductos,nombre,precio,IdCategoria,esPreparado)VALUES(?,?,?,?,?)";
    this.jdbcTemplate.update(sql,p.getIdProducto(),p.getNombre(),p.getPrecio(),p.getIdCategoria(),p.isEsPreparado());
    return new ModelAndView("redirect:/index.html");
    }
  
}
