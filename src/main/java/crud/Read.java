package crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet; 

import conexao.Conexao;

public class Read {

	public static void main(String[] args) {
		Read reader = new Read();
		
		reader.read();
	}
	
	public ResultSet read() {
		Conexao con = new Conexao();
		Connection conn = con.get_Connection();
		
		PreparedStatement ps = null;
		
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
