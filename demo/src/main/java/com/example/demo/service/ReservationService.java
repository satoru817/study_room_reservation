package com.example.demo.service;

import com.example.demo.repository.OpeningHourRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ReservationService {
    private final OpeningHourRepository openingHourRepository;
}
