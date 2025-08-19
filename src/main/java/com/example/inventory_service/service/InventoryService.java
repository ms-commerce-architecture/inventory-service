package com.example.inventory_service.service;



import com.example.inventory_service.dto.InventoryCreateRequest;
import com.example.inventory_service.model.Inventory;
import com.example.inventory_service.repository.InventoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;
import java.time.LocalDateTime;

@Service
@Transactional
@RequiredArgsConstructor
public class InventoryService {
    private final InventoryRepository inventoryRepository;


    public boolean isInStock(String productId, Integer quantity) {

        boolean isInStock = inventoryRepository.existsByProductIdAndTotalQuantityIsGreaterThanEqual(productId, quantity);

        return isInStock;
    }

    public void createInventory(InventoryCreateRequest request) {
        Inventory inventory = new Inventory();
        inventory.setProductId(request.productId());
        inventory.setWarehouseId(request.warehouseId().intValue());
        inventory.setAvailableQuantity(request.availableQuantity());
        inventory.setReservedQuantity(request.reservedQuantity());
        inventory.setTotalQuantity(request.totalQuantity());
        inventory.setReorderLevel(request.reorderLevel());
        inventory.setMaxStockLevel(request.maxStockLevel());
        inventory.setLastRestockedDate(LocalDateTime.now());

        inventoryRepository.save(inventory);
        System.out.println("Inventory created for product: {} in warehouse: {}"+
                request.productId()+ request.warehouseId());
    }
}
