package projetosirlon;

import java.sql.Connection;
import java.sql.DriverManager;
 
public class ConnectionFactory {
 
   private static final String USERNAME = "postgres";
 
   private static final String PASSWORD = "ifg";
 
   private static final String DATABASE_URL = "jdbc:postgresql://:5432/sirlon";

   public static Connection getConnection() throws Exception{
      DriverManager.registerDriver(new org.postgresql.Driver());
      Connection connection = DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);
 
      return connection;
   }
   public static void main(String[] args) throws Exception{
 
      Connection con = getConnection();
 
      if(con != null){
         System.out.println("Conexão obtida com sucesso!" + con);
         con.close();
      }
 
   }
}