package crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import conexao.Conexao;

public class Search {
	public ResultSet search(String titulo) {
		Conexao con = new Conexao();
		Connection conn = con.get_Connection();
		
		PreparedStatement ps = null;
		
		String sql = "SELECT * FROM livros WHERE titulo LIKE ?";
		
		try {
		
		ps = conn.prepareStatement(sql);
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
