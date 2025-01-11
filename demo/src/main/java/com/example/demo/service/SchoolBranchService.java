package com.example.demo.service;

import com.example.demo.repository.SchoolBranchRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@RequiredArgsConstructor
@Service
public class SchoolBranchService {
    private final SchoolBranchRepository schoolBranchRepository;
}
