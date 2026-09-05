package crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import conexao.Conexao;

public class Create {
	//classe responsavel por inserir registros no banco

	//dados recebidos do arquivo createController.jsp
	public void create(String titulo, String autor, String genero, String sinopse, Integer ano) {
		//criando a conexao com o banco
		Conexao con = new Conexao();
		Connection conn = con.get_Connection();
	
		PreparedStatement ps = null;
		
		//string que carrega no ps o comando sql a ser inserido no banco
		//os "?" indicam valores variáveis na string sql
		String sql = "INSERT INTO livros(titulo, autor, genero, sinopse, ano) VALUES (?, ?, ?, ?, ?)";
		try {
			ps=conn.prepareStatement(sql);
			//insere no primeiro ? o conteudo da variavel titulo, que veio do formulario
			ps.setString(1, titulo);
			//insere no segundo ? o conteudo da variavel autor, que veio do formulario
			ps.setString(2, autor);
			//insere no terceiro ? o conteudo da variavel genero, que veio do formulario
			ps.setString(3, genero);
			//insere no quarto ? o conteudo da variavel sinopse, que veio do formulario
			ps.setString(4, sinopse);
			//insere no quinto ? o conteudo da variavel ano, que veio do formulario
			ps.setInt(5, ano);
			
			//executa o comando sql
			ps.executeUpdate();
			
			//fecha PreparedStatement
			ps.close();
			//fecha a conex~]ao com o banco
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Erro na classe Create!" + e.getMessage());
		}
		

		
		
	}
	
}
