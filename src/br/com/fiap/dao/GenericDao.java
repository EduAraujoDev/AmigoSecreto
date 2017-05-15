package br.com.fiap.dao;

import java.util.List;

import javax.persistence.EntityManager;

public class GenericDao<T> implements Dao<T> {

	private final Class<T> classe;
	protected EntityManager em;

	public GenericDao(Class<T> classe) {
		em = JpaUtil.getEntityManager();
		em.getTransaction().begin();
		this.classe = classe;
	}
	
	@Override
	public void adicionar(T entidade) {
		em.persist(entidade);
		em.getTransaction().commit();
		em.close();	
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> listar() {
		return em.createQuery("From " + classe.getSimpleName()).getResultList();
	}

	@Override
	public T buscar(int id) {
		T entidade = em.find(classe, id);
		em.getTransaction().commit();
		em.close();

		return entidade;
	}

	@Override
	public void editar(T entidade) {
		em.merge(entidade);
		em.getTransaction().commit();
		em.close();
	}
}