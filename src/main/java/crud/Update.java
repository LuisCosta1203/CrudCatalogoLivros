package crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conexao.Conexao;

public class Update {
	
	//classe responsavel por atualizar os dados do registro que o usuario escolher
	//vindo do arquivo updateController.jsp
	
	//recebe os dados vindos do formulário digitados pelo usuario
	public void update(String titulo, String autor, String genero, String sinopse, Integer ano, Integer idlivros) {
		Conexao con = new Conexao();
		Connection conn = con.get_Connection();
		
		PreparedStatement ps = null;
		
		String sql = "UPDATE livros SET titulo = ?, autor = ?, genero = ?, sinopse = ?, ano = ? WHERE idlivros = ?";
		
		try {
			//inserindo os valores entregues pelo formulario nos lugares dos ? da string sql
			ps=conn.prepareStatement(sql);
			ps.setString(1, titulo);
			ps.setString(2, autor);
			ps.setString(3, genero);
			ps.setString(4, sinopse);
			ps.setInt(5, ano);
			ps.setInt(6, idlivros);
			
			
			ps.executeUpdate();
			
			ps.close();
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Deu erro na classe Update!" + e.getMessage());
		}
		}
	
	public ResultSet updateRead(Integer id) {
		//metodo que verifica se o valor de id digitado pelo usuário existe
		//no banco
		Conexao con = new Conexao();
		Connection conn = con.get_Connection();
		
		PreparedStatement ps = null;
		
		String sql = "SELECT * FROM livros WHERE idlivros = ?";
		try {
		
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs= ps.executeQuery();
		return rs;
		}
		catch(Exception e) {
			System.out.println("Erro na classe Update! " + e.getMessage());
			return null;
		}
		}
}
