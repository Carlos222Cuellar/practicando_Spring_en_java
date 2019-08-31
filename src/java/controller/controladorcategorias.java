/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import config.conexion;
import entidades.Categorias;
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
public class controladorcategorias {
    
    conexion con=new conexion();
    JdbcTemplate jdbcTemplate=new JdbcTemplate(con.conectar());
    ModelAndView mav=new ModelAndView();
    
    @RequestMapping("categorias.html")
    public ModelAndView ListarCategorias(){
    String sql="SELECT * from Categorias";
    List datos=this.jdbcTemplate.queryForList(sql);
    mav.addObject("listarcategorias",datos);
    mav.setViewName("categorias");
    return mav;
    }
    
    @RequestMapping(value = "nuevacategoria.html", method = RequestMethod.GET)
    public ModelAndView NuevaCategoria(){
    mav.addObject(new Categorias());
    mav.setViewName("nuevacategoria");
    return mav;
    }
    
    @RequestMapping(value = "nuevacategoria.html", method = RequestMethod.POST)
    public ModelAndView NuevaCategoria( Categorias c){
    String sql="INSERT INTO Categorias(IdCategoria,nombre)VALUES(?,?)";
    this.jdbcTemplate.update(sql,c.getIdcategoria(),c.getNombre());
    return new ModelAndView("redirect:/categorias.html");
    }
    
}
