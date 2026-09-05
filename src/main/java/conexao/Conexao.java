package conexao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
	
	public static void main(String args[]) {
		Conexao con = new Conexao();
		
		System.out.println(con.get_Connection());
	}
	
	public Connection get_Connection(){
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con =  DriverManager.getConnection("jdbc:mysql://localhost/cadastro_livros","root", "root");
		}
		catch(Exception e) {
		System.out.println("Deu merda na Conexao!" + e.getMessage());
		}
		return con;
	}
	
}
