/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author cuellar
 */
public class conexion {
    
  public DriverManagerDataSource conectar(){
  DriverManagerDataSource dataSource=new DriverManagerDataSource();
  dataSource.setDriverClassName("com.mysql.jdbc.Driver");
  dataSource.setUrl("jdbc:mysql://localhost:3306/DBpos");
  dataSource.setUsername("root");
  dataSource.setPassword("123456");
  return dataSource;
  }   
}
