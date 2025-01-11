package com.example.demo.service;

import com.example.demo.repository.AdministratorRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@RequiredArgsConstructor
@Service
public class AdministratorService {
    private final AdministratorRepository administratorRepository;
}
