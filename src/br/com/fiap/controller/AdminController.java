package br.com.fiap.controller;

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
}