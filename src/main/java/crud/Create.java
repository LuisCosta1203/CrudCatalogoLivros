package crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import conexao.Conexao;

public class Create {

	public void create(String titulo, String autor, String genero, String sinopse, Integer ano) {
		Conexao con = new Conexao();
		Connection conn = con.get_Connection();
	
		PreparedStatement ps = null;
		
		String sql = "insert into livros(titulo, autor, genero, sinopse, ano) values (?, ?, ?, ?, ?)";
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, titulo);
			ps.setString(2, autor);
			ps.setString(3, genero);
			ps.setString(4, sinopse);
			ps.setInt(5, ano);
			
			ps.executeUpdate();
			
			ps.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Deu merda na classe Create!" + e.getMessage());
		}
		

		
		
	}
	
}
