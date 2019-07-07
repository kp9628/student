/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect2;

import java.sql.Connection;
import java.sql.DriverManager;



public final class ConnectionProvider 
{
    
    static Connection con=null;
    private ConnectionProvider()
    {}
    
    public static Connection getConn()
    {
        try {
            if(con==null)
            {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentaj","root","root");
            return con;
            }
            else
            {
                return con;
            
            }
        } catch (Exception ex) {
           ex.printStackTrace();
        }
 
        return con;
            
        
    
}
    
     
    
    
}
