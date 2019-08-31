/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import config.conexion;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author cuellar
 */
@Controller
public class controladordashboard {
     conexion con=new conexion();
    JdbcTemplate jdbcTemplate=new JdbcTemplate(con.conectar());
    ModelAndView mav=new ModelAndView();
    
     @RequestMapping("index.html")
    public ModelAndView ListarOrdenes(){
    String sql="SELECT * from Ordenes";
    List dato=this.jdbcTemplate.queryForList(sql);
    mav.addObject("listar",dato);
    mav.setViewName("index");
    return mav;
    }
}
