package com.example.inventory_service.dto;


public record InventoryCreateRequest(
        String productId,
        Long warehouseId,
        Integer availableQuantity,
        Integer reservedQuantity,
        Integer totalQuantity,
        Integer reorderLevel,
        Integer maxStockLevel
) {}