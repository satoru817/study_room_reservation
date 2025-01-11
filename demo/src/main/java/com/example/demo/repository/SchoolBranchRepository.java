package com.example.demo.repository;

import com.example.demo.entity.SchoolBranch;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SchoolBranchRepository extends JpaRepository<SchoolBranch,Long> {
}
