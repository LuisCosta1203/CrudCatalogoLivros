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
		Sessao session = new Sessao();
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
				//System.out.println(resultado.getInt(1));
				//System.out.println(resultado.getString(2));
				//System.out.println(resultado.getString(3));
				
				//session.createSession(resultado.getString(2), resultado.getString(3));
			
				return true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Erro na classe Login!" + e.getMessage());
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
	public String retornaTipoUsuarioSessao(String usuario) {
		Conexao con = new Conexao();
		Connection conn = con.get_Connection();
		
		PreparedStatement ps = null;
		
		//string sql pra ser executada no banco
		String sql = "SELECT * FROM sessao";
		try {
		ResultSet rs;
		ps = conn.prepareStatement(sql);
		
		
		//executa o comando sql
		rs = ps.executeQuery();
		
		if(!rs.next()) {
			System.out.println("Sem registros na tabela sessao metodo retornaTipoUsuarioSessao");
			return usuario;
		}
		else {
			System.out.println("tabela sessão com registros");
			String tipoUser = null;
			while (rs.next()) {
			    tipoUser = rs.getString(2);
			    
			    System.out.println(tipoUser);
			}
			return tipoUser;
		}
		
		
		}
		catch(Exception e) {
			System.out.println("Erro no metodo retornaTipoUsuarioSessao! " + e.getMessage());
			return "null";
		}
		}
	
	public String retornaTipoUsuario(String usuario) {
		Conexao con = new Conexao();
		Connection conn = con.get_Connection();
		
		PreparedStatement ps = null;
		
		//string sql pra ser executada no banco
		String sql = "SELECT * FROM usuario WHERE login = ?";
		try {
		
		ps = conn.prepareStatement(sql);
		ps.setString(1, usuario);
		ResultSet rs= ps.executeQuery();
		
		String tipo = null;
		while (rs.next()) {
		    tipo = rs.getString(2);
		    
		   //System.out.println(idusuario + " - " + tipo + " - " + login+ " - " + senha);
		}
		
		return tipo;
		}
		catch(Exception e) {
			System.out.println("Erro no metodo retornaTipoususario! " + e.getMessage());
			return null;
		}
		}
	}
	

