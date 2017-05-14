package br.com.fiap.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Usuario")
public class Usuario implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "usu_codigo")
	private Integer codigo;

	@Column(name = "usu_nome", length = 20)
	private String nome;

	@Column(name = "login", length = 20)
	private String login;

	@Column(name = "usu_senha", length = 20)
	private String senha;

	@Column(name = "usu_sorteado")
	private Integer sorteado;

	@ManyToOne
	@JoinColumn(name="usu_grupo")
	private Grupo grupo;
	
	public Integer getCodigo() {
		return codigo;
	}

	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public Integer getSorteado() {
		return sorteado;
	}

	public void setSorteado(Integer sorteado) {
		this.sorteado = sorteado;
	}

	public Grupo getGrupo() {
		return grupo;
	}

	public void setGrupo(Grupo grupo) {
		this.grupo = grupo;
	}

}
