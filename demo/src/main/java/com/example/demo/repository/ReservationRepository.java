package com.example.demo.repository;

import com.example.demo.entity.OpeningHour;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReservationRepository extends JpaRepository<OpeningHour,Long> {
}
