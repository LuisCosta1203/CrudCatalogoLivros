package login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conexao.Conexao;

public class Sessao {
	//classe responsavel por inserir registros no banco

		//dados recebidos do arquivo createController.jsp
		public void createSession(String user, String tipoUser) {
			//criando a conexao com o banco
			Conexao con = new Conexao();
			Connection conn = con.get_Connection();
		
			PreparedStatement ps = null;
			
			//string que carrega no ps o comando sql a ser inserido no banco
			//os "?" indicam valores variáveis na string sql
			String sql = "INSERT INTO sessao(user, tipoUser) VALUES (?, ?)";
			try {
				ps=conn.prepareStatement(sql);
				//insere no primeiro ? o conteudo da variavel titulo, que veio do formulario
				ps.setString(1, user);
				//insere no segundo ? o conteudo da variavel autor, que veio do formulario
				ps.setString(2, tipoUser);
				
				//executa o comando sql
				ps.executeUpdate();
				
				//fecha PreparedStatement
				ps.close();
				//fecha a conex~]ao com o banco
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("Erro na classe Sessão!" + e.getMessage());
			}
			

			
			
		}
		
		public void deleteSession() {
			//classe utilizada para deletar um registro com base no valor recebido
			//do formulario do arquivo deleteController.jsp
			Conexao con = new Conexao();
			Connection conn = con.get_Connection();
		
			PreparedStatement ps = null;
			
			//string sql a ser enviada pra execução no banco
			String sql = "DELETE FROM cadastro_livros.sessao WHERE idsessao >= 1";
			
			try {
				ps=conn.prepareStatement(sql);
				
				ps.executeUpdate();
				
				ps.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("Erro na classe Sessão!" + e.getMessage());
			}
	}
		
		public String tipoUsuarioSessao() {
			Conexao con = new Conexao();
			Connection conn = con.get_Connection();
			
			PreparedStatement ps = null;
			
			//string sql pra ser executada no banco
			String sql = "SELECT * FROM sessao";
			try {
			
			ps = conn.prepareStatement(sql);
			ResultSet rs= ps.executeQuery();
			
			String tipo = null;
			while (rs.next()) {
			    tipo = rs.getString(3);
			    
			   //System.out.println(idusuario + " - " + tipo + " - " + login+ " - " + senha);
			}
			
			return tipo;
			}
			catch(Exception e) {
				System.out.println("Erro no metodo tipoUsuarioSessao! " + e.getMessage());
				return null;
			}
		}
		public String usuarioSessao() {
			Conexao con = new Conexao();
			Connection conn = con.get_Connection();
			
			PreparedStatement ps = null;
			
			//string sql pra ser executada no banco
			String sql = "SELECT * FROM sessao";
			try {
			
			ps = conn.prepareStatement(sql);
			ResultSet rs= ps.executeQuery();
			
			String user = null;
			while (rs.next()) {
			    user = rs.getString(2);
			    
			   //System.out.println(idusuario + " - " + tipo + " - " + login+ " - " + senha);
			}
			
			return user;
			}
			catch(Exception e) {
				System.out.println("Erro no metodo usuarioSessao! " + e.getMessage());
				return null;
			}
		}
	
			}

