package br.com.fiap.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.fiap.dao.UsuarioDAO;
import br.com.fiap.model.Usuario;

@Controller
public class LoginController {
	
	private UsuarioDAO usuarioDAO;
	private Usuario usuario;
	
	@RequestMapping("/")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/cadastraUsuario") 
	public String cadastraUsuario() {
		return "cadastraUsuario";
	}
	
	@RequestMapping(value="/efetuaLogin", method=RequestMethod.POST)
	public String efetuaLogin(@RequestParam("login") String login, @RequestParam("senha") String senha, ModelMap model,
			HttpServletRequest request) {
		
		String retorno = "login";
		
		usuarioDAO = new UsuarioDAO();
		usuario = usuarioDAO.buscarUsuario(login, senha);
		
		if (usuario == null) {
			model.addAttribute("erroLogin", "Usuário: '" + login + "' não existe!");
		} else {
			if (usuario.getAutorizado().equals("N") && !usuario.getLogin().equals("admin")){
				model.addAttribute("erroLogin", "Usuário: '" + login + "' não autorizado, favor entrar em contato com o Administrador!");
			} else {
				HttpSession session = request.getSession();
				session.setAttribute("session_usuario", usuario);
				
				if (usuario.getLogin().equals("admin")) {
					retorno = "/admin/paginaAdmin";
				} else {
					retorno = "/usuario/paginaUsuario";
				}
			}
		}
		
		return retorno;
	}
	
	@RequestMapping(value="/novoUsuario", method=RequestMethod.POST)
	public String novoUsuario(Usuario usuario, @RequestParam("confirmarSenha") String confirmarSenha, ModelMap model) {
		
		if (!usuario.getSenha().equals(confirmarSenha)) {
			model.addAttribute("senhaError", "Senhas diferentes!");
			
			return "cadastraUsuario";
		}
		
		try {
			usuario.setAutorizado("N");
			
			usuarioDAO = new UsuarioDAO();
			usuarioDAO.adicionar(usuario);
			
			model.addAttribute("novoLogin", "Usuário incluído!");
		} catch (Exception e) {
			model.addAttribute("erroLogin", e.getMessage());
			e.printStackTrace();
		}
		
		return "login";
	}
}