/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package libreria;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Rodriigo SSJ
 */
public class Conexion {
    private static Connection con;
    private  static final String driver = "com.mysql.jdbc.Driver";
    private static final String user = "root";
    private static final String pass ="";
    private static final String url = "jdbc:mysql://localhost/libreria";
    public static void conectar() throws ClassNotFoundException {
         con=null;
        try{
            Class.forName(driver);
            con=(Connection) DriverManager.getConnection(url,user,pass);
            if(con!=null){
                System.out.print("Conexion exitosa");
            }
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.print("Error"+e);
            
        }
}
     public static void consultarBaseDatos() throws SQLException, ClassNotFoundException {
        Statement stmt = null;
        ResultSet rs = null;
        try {
            conectar(); // Conectar a la base de datos si aún no está conectado
            stmt = con.createStatement();
            String query = "Call ConsultarLibro()"; // Reemplaza "nombre_de_tabla" con el nombre de la tabla que deseas consultar
            rs = stmt.executeQuery(query);
            // Iterar sobre los resultados y mostrarlos
            while (rs.next()) {
                // Suponiendo que la tabla tiene columnas "columna1" y "columna2"
                String columna1 = rs.getString("LibroId");
                String columna2 = rs.getString("Libro_Nombre");
                System.out.println("Columna1: " + columna1 + ", Columna2: " + columna2);
            }
        } catch (SQLException e) {
            System.out.println("Error al ejecutar la consulta: " + e);
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (con != null) {
                con.close();
            }
        }
    }
}


