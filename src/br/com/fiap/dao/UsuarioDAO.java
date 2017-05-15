package br.com.fiap.dao;

import javax.persistence.Query;

import br.com.fiap.model.Usuario;

public class UsuarioDAO extends GenericDao<Usuario> {

	public UsuarioDAO() {
		super(Usuario.class);
		populaAdmin();
	}

	public Usuario buscarUsuario(String login, String senha){
		try {
			em = JpaUtil.getEntityManager();
			em.getTransaction().begin();
			
			Query query = em.createQuery("select u from Usuario u where login = :login and senha = :senha");
			query.setParameter("login", login);
			query.setParameter("senha", senha);
			
			return (Usuario) query.getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}	
	}
	
	private void populaAdmin() {
		if(this.buscarUsuario("admin", "admin") == null){
			Usuario usuario = new Usuario();
			
			usuario.setNome("Administrador");
			usuario.setLogin("admin");
			usuario.setSenha("admin");
			usuario.setAutorizado("S");
			
			this.adicionar(usuario);
		}
	}
}