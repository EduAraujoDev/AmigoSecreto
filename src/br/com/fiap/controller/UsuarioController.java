package br.com.fiap.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {
	
	@RequestMapping("/")
	public String login() {
		return "paginaUsuario";
	}
}