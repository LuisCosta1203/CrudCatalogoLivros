package crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import conexao.Conexao;

public class Delete {
	public void delete(Integer id) {
		Conexao con = new Conexao();
		Connection conn = con.get_Connection();
	
		PreparedStatement ps = null;
		
		String sql = "DELETE FROM cadastro_livros.livros WHERE idlivros = ?";
		
		try {
			ps=conn.prepareStatement(sql);
			
			ps.setInt(1, id);
			
			ps.executeUpdate();
			
			ps.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Deu merda na classe Delete!" + e.getMessage());
		}
}
}
