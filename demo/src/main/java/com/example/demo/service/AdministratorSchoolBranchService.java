package com.example.demo.service;

import com.example.demo.repository.AdministratorSchoolBranchRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@RequiredArgsConstructor
@Service
public class AdministratorSchoolBranchService {
    private final AdministratorSchoolBranchRepository administratorSchoolBranchRepository;

}
