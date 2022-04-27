package com.andrew.dealbois.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.andrew.dealbois.models.Item;

@Repository
public interface ItemRepository extends CrudRepository<Item, Long> {
	List<Item> findAll();

}
