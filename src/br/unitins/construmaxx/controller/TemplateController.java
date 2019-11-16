package br.unitins.construmaxx.controller;

import java.io.Serializable;

import javax.faces.view.ViewScoped;
import javax.inject.Named;

import br.unitins.construmaxx.application.Session;
import br.unitins.construmaxx.model.Usuario;

@Named
@ViewScoped
public class TemplateController implements Serializable {
	private static final long serialVersionUID = 2094946522521114529L;
	
	private Usuario usuarioLogado;

	public Usuario getUsuarioLogado() {
		if (usuarioLogado == null) {
			// buscando o usuario da sessao
			usuarioLogado = (Usuario)Session.getInstance().getAttribute("usuarioLogado");
			if (usuarioLogado == null)
				usuarioLogado = new Usuario();
		}
		return usuarioLogado;
	}

	public void setUsuarioLogado(Usuario usuarioLogado) {
		this.usuarioLogado = usuarioLogado;
	}
	
	public String encerrarSessao() {
		Session.getInstance().invalidateSession();
		return "login.xhtml?faces-redirect=true";
	}
	
	public static String redMarketplace() {
		return "vendaproduto.xhtml?faces-redirect=true";
	}
	
	public static String redProduto() {
		return "produto.xhtml?faces-redirect=true";
	}

	public static String redPedido() {
		return "login.xhtml?faces-redirect=true";
	}

	public static String redCarrinho() {
		return "carrinho.xhtml?faces-redirect=true";
	}

	public static String redCadastro() {
		return "usuario.xhtml?faces-redirect=true";
	}

	public static String redLogin() {
		return "login.xhtml?faces-redirect=true";
	}

}
