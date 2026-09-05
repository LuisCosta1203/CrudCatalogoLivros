package conexao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
	//classe criada para criar a conexão com o banco de dados
	//apenas utilizada para ser instanciada nas demais classes
	
	public Connection get_Connection(){
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			//carregando as informações de acesso ao banco
			con =  DriverManager.getConnection("jdbc:mysql://localhost/cadastro_livros","root", "root");
		}
		catch(Exception e) {
		System.out.println("Erro na classe Conexao!" + e.getMessage());
		}
		return con;
	}
	
}
