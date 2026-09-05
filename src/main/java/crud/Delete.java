package crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import conexao.Conexao;

public class Delete {
	public void delete(Integer id) {
		//classe utilizada para deletar um registro com base no valor recebido
		//do formulario do arquivo deleteController.jsp
		Conexao con = new Conexao();
		Connection conn = con.get_Connection();
	
		PreparedStatement ps = null;
		
		//string sql a ser enviada pra execução no banco
		String sql = "DELETE FROM livros WHERE idlivros = ?";
		
		try {
			ps=conn.prepareStatement(sql);
			
			//setando o valor do id no ? da string sql
			ps.setInt(1, id);
			
			ps.executeUpdate();
			
			ps.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Erro na classe Delete!" + e.getMessage());
		}
}
}
