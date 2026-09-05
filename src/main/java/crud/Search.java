package crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import conexao.Conexao;

public class Search {
	//classe utilizada para retornar o registro que contenha a string que o usuário
	//digitar no arquivo searchController.jsp
	public ResultSet search(String titulo) {
		Conexao con = new Conexao();
		Connection conn = con.get_Connection();
		
		PreparedStatement ps = null;
		
		//string sql a ser executada no banco
		// "LIKE" indica que deve procurar qualquer registro que contenha a 
		//cadeia de caracteres que o usuario escrever, independente da posição
		String sql = "SELECT * FROM livros WHERE titulo LIKE ?";
		
		try {
		
		ps = conn.prepareStatement(sql);
		//essa linha insere os % antes e depois do valor que o usuario digitar
		//só pra não dar erro de sintaxe do sql
		ps.setString(1,"%"+ titulo +"%" );
		ResultSet rs= ps.executeQuery();
		System.out.println();
		return rs;
		}
		catch(Exception e) {
			System.out.println("Erro na classe Search! " + e.getMessage());
			return null;
		}
		}
}
