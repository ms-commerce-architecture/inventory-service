create table `t_inventory`(
    `inventory_id` bigint(20) not null AUTO_INCREMENT,
    `product_id` varchar(255) unique not NULL,
     `warehouse_id` int(11) not NULL,
    `available_quantity` Int not null DEFAULT 0,
    `reserved_quantity` Int not null  DEFAULT 0,
    `total_quantity` Int not null  Default 0,
    `reorder_level` Int DEFAULT 0,
    `max_stock_level` INT Null,
    `last_restocked_date` TIMESTAMP null,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`inventory_id`)
)

create table `t_inventory_movements`(
    `movement_id` BIGINT(20) AUTO_INCREMENT,
    `product_id`BIGINT(20) not null ,
    `warehouse_id` BIGINT(20) not null,
    `movement_type` ENUM('IN', 'OUT', 'TRANSFER', 'ADJUSTMENT') not null,
    `quantity` INT NOT NULL ,
    `reference_id` VARCHAR(100) NULL,
    `reference_type` VARCHAR(50) null,
    `reason` TEXT   null ,
    `performed_by` VARCHAR(100) null,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,,
    primary key (`movement_id`)
)

create Table `t_warehouses`(
    `warehouse_id` BIGINT(20) AUTO_INCREMENT ,
    `warehouse_code` VARCHAR(20) unique  not null ,
    `warehouse_name` VARCHAR(100) not null ,
    `address` JSON not null ,
    `manager_name` VARCHAR(100) null,
    `contact_email` VARCHAR(255) null,
    `contact_phone` VARCHAR(20) null,
    `status` ENUM('ACTIVE', 'INACTIVE') DEFAULT 'ACTIVE',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,,
    primary key (`warehouse_id`)

)