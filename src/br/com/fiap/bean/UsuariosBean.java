package br.com.fiap.bean;

import java.util.List;

import br.com.fiap.dao.GenericDao;
import br.com.fiap.model.Usuario;

public class UsuariosBean {
	public List<Usuario> getListaUsuarios(){
		GenericDao<Usuario> dao = new GenericDao<Usuario>(Usuario.class);
		return dao.listar();
	}
}