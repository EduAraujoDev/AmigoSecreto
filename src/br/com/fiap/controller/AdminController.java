package br.com.fiap.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.fiap.dao.UsuarioDAO;
import br.com.fiap.model.Usuario;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	private UsuarioDAO usuarioDAO;

	@RequestMapping("/")
	public String login() {
		return "paginaAdmin";
	}
	
	@RequestMapping(value="/ativarUsuario", method=RequestMethod.GET)
	public String ativarUsuario(@RequestParam("id") int id, ModelMap model) {
		
		usuarioDAO = new UsuarioDAO();
		Usuario usuario = usuarioDAO.buscar(id);
		usuario.setAutorizado("S");
		
		usuarioDAO = new UsuarioDAO();
		usuarioDAO.editar(usuario);
		
		model.addAttribute("usuarioAtivo", "Usuário ativo!");
		
		return "/admin/paginaAdmin";
	}
	
	@RequestMapping(value="/realizaSorteio")
	public String realizaSorteio(ModelMap model) {
		
		usuarioDAO = new UsuarioDAO();
		List<Usuario> usuarios = usuarioDAO.listar();
		
		HashMap<Integer, Integer> sorteados = new HashMap<Integer, Integer>();
		Integer codigo = usuarios.size();
		
		for (int i = 0; i < usuarios.size(); i++) {	
			if(usuarios.get(i).getId() != codigo) {
				
				for (Entry<Integer, Integer> entry : sorteados.entrySet()) {
					if (codigo == entry.getValue()) {
						codigo = codigo - 1;
					}
				}
				
				sorteados.put(usuarios.get(i).getId(), codigo);
				codigo = codigo - 1;
			} else {
				sorteados.put(usuarios.get(i).getId(), codigo - 1);
			}
		}
		
		for (Entry<Integer, Integer> entry : sorteados.entrySet()) {
			UsuarioDAO dao = new UsuarioDAO();
			Usuario usuario = dao.buscar(entry.getKey());
			usuario.setSorteado(entry.getValue());
	
			new UsuarioDAO().editar(usuario);
		}
		
		model.addAttribute("usuarioAtivo", "Sorteio realizado!");
		
		return "/admin/paginaAdmin";
	}
}