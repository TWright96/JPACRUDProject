package com.skilldistillery.pursespackage.data;

import java.util.List;

import com.skilldistillery.pursespackage.entities.Purse;

public interface PurseDAO {
	Purse findById(int purseId);
	List<Purse> findAll();
	Purse create(Purse purse);
	Purse update(int purseId, Purse purse);
	boolean deleteById(int purseId);

}
