/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package others;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Web application lifecycle listener.
 * @author admin
 */
public class ConnListener implements ServletContextListener {
Connection con;
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/orcl", "hr", "hr");
            sce.getServletContext().setAttribute("mycon", con);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ConnListener.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(ConnListener.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
