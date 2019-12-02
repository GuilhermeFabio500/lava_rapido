/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.lava_rapido;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author guilh
 */
public class Cliente {
    String Nome;
    String CPF;
    
    public static ArrayList<Cliente> getList() throws Exception{
        ArrayList<Cliente> list = new ArrayList();
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        String url = "jdbc:derby://localhost:1527/sample";
        String user = "app";
        String password = "app";                
        Connection con = DriverManager.getConnection(url, user, password);
        Statement stmt = con.createStatement();
        String sql = "SELECT NOME, CPF, FROM APP.CLIENTE";
        ResultSet rs = stmt.executeQuery(sql);
        while(rs.next()){
            Cliente c = new Cliente(
                    rs.getString("NOME"),
                    rs.getString("CPF")
            );
            list.add(c);
        }
        rs.close();stmt.close();con.close();
        return list;
    }

    public Cliente(String Nome, String CPF) {
        this.Nome = Nome;
        this.CPF = CPF;
    }

    public String getNome() {
        return Nome;
    }

    public void setNome(String Nome) {
        this.Nome = Nome;
    }

    public String getCPF() {
        return CPF;
    }

    public void setCPF(String CPF) {
        this.CPF = CPF;
    }
    
}
