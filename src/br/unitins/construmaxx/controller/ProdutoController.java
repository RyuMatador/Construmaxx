package br.unitins.construmaxx.controller;

import java.io.Serializable;
import java.sql.SQLException;

import javax.faces.context.FacesContext;
import javax.faces.context.Flash;
import javax.faces.view.ViewScoped;
import javax.inject.Named;

import br.unitins.construmaxx.application.Util;
import br.unitins.construmaxx.dao.DAO;
import br.unitins.construmaxx.dao.ProdutoDAO;
import br.unitins.construmaxx.model.Perfil;
import br.unitins.construmaxx.model.Produto;
import br.unitins.construmaxx.model.TipoProduto;

@Named
@ViewScoped
public class ProdutoController implements Serializable {

	private static final long serialVersionUID = -6521198943457165212L;

	private Produto produto;

	public ProdutoController() {
		Flash flash = FacesContext.getCurrentInstance().getExternalContext().getFlash();
		flash.keep("produtoFlash");
		produto = (Produto) flash.get("produtoFlash");
	}

	public void incluir() {
		DAO<Produto> dao = new ProdutoDAO();
		try {
			dao.create(getProduto());
			dao.getConnection().commit();
			Util.addMessageInfo("Inclusao realizada com sucesso.");
			limpar();
		} catch (SQLException e) {
			dao.rollbackConnection();
			dao.closeConnection();
			Util.addMessageInfo("Erro ao incluir o produto no Banco de Dados.");
			e.printStackTrace();
		} catch (java.lang.NullPointerException e) {
			Util.addMessageError("N�o � poss�vel incluir seu produto. Verifique se existe algum campo vazio.");
		}
	}

	public void alterar() {
		DAO<Produto> dao = new ProdutoDAO();
		try {
			dao.update(getProduto());
			dao.getConnection().commit();
			Util.addMessageInfo("Alteracao realizada com sucesso.");
			limpar();
		} catch (SQLException e) {
			dao.rollbackConnection();
			dao.closeConnection();
			Util.addMessageInfo("Erro ao alterar o produto no Banco de Dados.");
			e.printStackTrace();
		}
	}

	public TipoProduto[] getListaTipoProduto() {
		return TipoProduto.values();
	}

	public Produto getProduto() {
		if (produto == null) {
			produto = new Produto();
		}
		return produto;
	}

	public void setProduto(Produto Produto) {
		this.produto = Produto;
	}

	public void limpar() {
		produto = null;
	}

}
