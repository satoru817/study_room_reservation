package com.example.demo.repository;

import com.example.demo.entity.AdministratorSchoolBranch;
import com.example.demo.entity.AdministratorSchoolBranchId;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdministratorSchoolBranchRepository extends JpaRepository<AdministratorSchoolBranch, AdministratorSchoolBranchId> {
}
