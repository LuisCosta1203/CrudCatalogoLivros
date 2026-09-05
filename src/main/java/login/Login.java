package login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

import conexao.Conexao;

public class Login {

	public boolean verificaLogin(String usuario, String senha) {
		//criando a conexao com o banco
		Conexao con = new Conexao();
		Connection conn = con.get_Connection();
	
		PreparedStatement ps = null;
		
		//string que carrega no ps o comando sql a ser inserido no banco
		//os "?" indicam valores variáveis na string sql
		String sql = "SELECT * FROM usuario WHERE login = ? AND senha = ?";
		try {
			ResultSet resultado;
			ps=conn.prepareStatement(sql);
			//insere no primeiro ? o conteudo da variavel titulo, que veio do formulario
			ps.setString(1, usuario);
			//insere no segundo ? o conteudo da variavel autor, que veio do formulario
			ps.setString(2, senha);
			
			
			//executa o comando sql
			resultado = ps.executeQuery();
			
			if(!resultado.next()) {
				//System.out.println("Usuário não cadastrado!");
				return false;
			}
			else {
				//System.out.println("Login efetuado com Sucesso!");
				return true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Usuário Não cadastrado!" + e.getMessage());
			return false;
		}
		

		
		
	}
	
	public void register(String tipo, String usuario, String senha) {
		//criando a conexao com o banco
		Conexao con = new Conexao();
		Connection conn = con.get_Connection();
			
		PreparedStatement ps = null;
		
		String sql = "INSERT INTO usuario(tipo, login, senha) VALUES (?, ?, ?)";
		try {
			ps=conn.prepareStatement(sql);
			//insere no primeiro ? o conteudo da variavel titulo, que veio do formulario
			ps.setString(1, tipo);
			//insere no segundo ? o conteudo da variavel autor, que veio do formulario
			ps.setString(2, usuario);
			//insere no segundo ? o conteudo da variavel autor, que veio do formulario
			ps.setString(3, senha);
			//executa o comando sql
			ps.executeUpdate();
			
			//fecha PreparedStatement
			ps.close();
			//fecha a conex~]ao com o banco
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Erro na classe Login!" + e.getMessage());
		}
				
	}
	
	public boolean verificaUsuario(String usuario) {
		//criando a conexao com o banco
		Conexao con = new Conexao();
		Connection conn = con.get_Connection();
			
		PreparedStatement ps = null;
				
		//string que carrega no ps o comando sql a ser inserido no banco
		//os "?" indicam valores variáveis na string sql
		String sql = "SELECT * FROM usuario WHERE login = ?";
		
		try {
			ResultSet resultado;
			ps=conn.prepareStatement(sql);
			//insere no primeiro ? o conteudo da variavel titulo, que veio do formulario
			ps.setString(1, usuario);
			
			
			//executa o comando sql
			resultado = ps.executeQuery();
			
			if(!resultado.next()) {
				//caso não encontre nenhum registro, retorna true pra dizer que 
				//pode inserir o novo usuario no banco
				return true;
			}
			else {
				return false;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Erro na criação de usuario!" + e.getMessage());
			return false;
		}
	}
	
}
