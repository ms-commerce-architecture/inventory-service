package com.example.inventory_service.controller;


import com.example.inventory_service.dto.InventoryCreateRequest;
import com.example.inventory_service.service.InventoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;



@RestController
@RequestMapping("/api/ineventory")
@RequiredArgsConstructor
public class InventoryController {

    private final InventoryService inventoryService;


    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public boolean isInStock(@RequestParam String productId, @RequestParam Integer quantity) {
        return inventoryService.isInStock(productId, quantity);
    }
    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public void createInventory(@RequestBody InventoryCreateRequest request) {
        inventoryService.createInventory(request);
    }
}
