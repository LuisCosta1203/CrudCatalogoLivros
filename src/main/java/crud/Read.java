package crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet; 

import conexao.Conexao;

public class Read {
	//vlasse utilizada para ler e retornar os valores dos registros do banco
	//ela retorna um resultset que posteriormente é tratado nas paginas .jsp
	
	public ResultSet read() {
		Conexao con = new Conexao();
		Connection conn = con.get_Connection();
		
		PreparedStatement ps = null;
		
		//string sql pra ser executada no banco
		String sql = "SELECT * FROM livros";
		try {
		
		ps = conn.prepareStatement(sql);
		ResultSet rs= ps.executeQuery();
		
		return rs;
		}
		catch(Exception e) {
			System.out.println("Erro na classe Read! " + e.getMessage());
			return null;
		}
		}
}
