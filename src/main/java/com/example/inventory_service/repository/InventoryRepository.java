package com.example.inventory_service.repository;

import com.example.inventory_service.model.Inventory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;

@Repository
public interface InventoryRepository extends JpaRepository<Inventory, BigInteger> {
    boolean existsByProductIdAndTotalQuantityIsGreaterThanEqual(String productId, Integer quantityIsGreaterThan);
}
