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

		
		em.persist(purse);
		
		return purse;

	}

	@Override
	public Purse update(int purseId, Purse purse) {
		

		Purse purse1 = em.find(Purse.class, purseId);
		purse1.setColor(purse.getColor());
		purse1.setBrand(purse.getBrand());
		purse1.setStyle(purse.getStyle());
		purse1.setSize(purse.getSize());
		purse1.setMaterial(purse.getMaterial());
		purse1.setPicture(purse.getPicture());
		purse1.setPrice(purse.getPrice());
		
	

		return purse1;

	}

	@Override
	public boolean deleteById(int purseId) {
		Purse purse = em.find(Purse.class, purseId);
		em.remove(purse); // performs the delete on the managed entity

		if(purse == null) {
			return true;
	}else {
		return false;
	}
	
	}

}
