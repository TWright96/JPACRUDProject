package com.skilldistillery.pursespackage.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.pursespackage.entities.Purse;

@Service
@Transactional
public class PurseDaoImpl implements PurseDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Purse findById(int purseId) {
		return em.find(Purse.class, purseId);
	}

	@Override
	public List<Purse> findAll() {
		String jpql = "SELECT p FROM Purse p";
		return em.createQuery(jpql, Purse.class).getResultList();
	}

	@Override
	public Purse create(Purse purse) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Purse update(int purseId, Purse purse) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int purseId) {
		// TODO Auto-generated method stub
		return false;
	}

}
