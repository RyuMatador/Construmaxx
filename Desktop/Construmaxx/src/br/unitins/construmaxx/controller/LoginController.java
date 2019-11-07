package br.unitins.construmaxx.controller;

import javax.enterprise.context.RequestScoped;
import javax.inject.Named;

import br.unitins.construmaxx.application.Util;
import br.unitins.construmaxx.dao.UsuarioDAO;
import br.unitins.construmaxx.model.Usuario;

@Named
@RequestScoped
public class LoginController {

	private Usuario usuario;

	public String logar() {
		UsuarioDAO dao = new UsuarioDAO();
		String hashSenha = Util.hashSHA256(getUsuario().getSenha());
		Usuario usuario = 
			dao.login(getUsuario().getLogin(), hashSenha);
		
		if (usuario != null) {
			return "usuario.xhtml?faces-redirect=true";
		}
		Util.addMessageError("Usuario ou Senha Invalido.");
		return null;
	}

	public void limpar() {
		setUsuario(new Usuario());
	}

	public Usuario getUsuario() {
		if (usuario == null)
			usuario = new Usuario();
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

}
