package group.faf.bookstore.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {
    Connection connect;
    protected void hasDriver() throws ClassNotFoundException{
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            throw new ClassNotFoundException ("Invalid Driver!!Please check this drver....");
        }
    }
    protected Connection openConnect() throws ClassNotFoundException, SQLException {
        if(connect == null){
            hasDriver();
            this.connect = DriverManager.getConnection("jdbc:mysql://localhost/bookstoreweb?" +
                    "user=root&password=");
        }
        return connect;
    }

    public Connection getConnect() throws SQLException, ClassNotFoundException {
        openConnect();
        return connect;
    }
}
