package br.com.fiap.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	
	@RequestMapping("/")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/cadastraUsuario") 
	public String cadastraUsuario() {
		return "cadastraUsuario";
	}
	
	@RequestMapping(value="/efetuaLogin", method=RequestMethod.POST)
	public String efetuaLogin(@RequestParam("login") String login, @RequestParam("senha") String senha, ModelMap model) {
		model.addAttribute("erroLogin", "Usuário: '" + login + "' não existe!");
		
		return "login";
	}
	
	@RequestMapping(value="/novoUsuario", method=RequestMethod.POST)
	public String novoUsuario(ModelMap model) {
		model.addAttribute("novoLogin", "Usuário incluído!");
		
		return "login";
	}
}