package br.edu.appTp3Joao.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.appTp3Joao.model.negocio.Usuario;
import br.edu.appTp3Joao.model.service.UsuarioService;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@GetMapping(value = "/")
	public String iniciar (Model model) {
		
		model.addAttribute("nome", "Joao Pedro");
		model.addAttribute("email", "joao.sousa@al.infnet.edu.br");
		model.addAttribute("git", "");
		return "index";
	}
	
	@GetMapping(value = "/usuario")
	public String cadastrar(Model model) {
		
		model.addAttribute("usuarios", usuarioService.obterLista());
		
		usuarioService.obterLista();
		
		return "usuario/detalhe";		
	}
	
	@PostMapping(value = "/usuario/incluir")
	public String incluir(Usuario usuario) {
	
		usuarioService.incluir(usuario);
		
		return "redirect:/usuario";
	}
	
	@GetMapping(value ="/usuario/{id}/excluir")
	public String excluir(@PathVariable Integer id) {
		
		usuarioService.excluir(id);
		
		return "redirect:/usuario";
		
	}
}
