package com.ships.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ships.model.OrderInfo;

//An interface to the OrderInfo object
@Repository
public interface OrderInterface extends CrudRepository<OrderInfo, Long> {

}
