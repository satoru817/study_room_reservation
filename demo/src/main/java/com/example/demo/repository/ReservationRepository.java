package com.example.demo.repository;

import com.example.demo.entity.OpeningHour;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReservationRepository extends JpaRepository<OpeningHour,Integer> {
}
