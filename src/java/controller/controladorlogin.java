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
public class controladorlogin {
    
     conexion con=new conexion();
    JdbcTemplate jdbcTemplate=new JdbcTemplate(con.conectar());
    ModelAndView mav=new ModelAndView();
    
    @RequestMapping("login.html")
    public ModelAndView ListarCategorias(){
    //String sql="SELECT * from Usuarios";
    //List datos=this.jdbcTemplate.queryForList(sql);
    //mav.addObject("listar",datos);
    mav.setViewName("login");
    return mav;
    }
}
