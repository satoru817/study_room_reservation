package com.example.demo.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.Set;

@Entity
@Table(name = "school_branches")
@Data
@NoArgsConstructor
public class SchoolBranch {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long schoolBranchId;
    private String username;
    private String name;
    private String comment;

    @Column(insertable = false,updatable = false)
    private LocalDateTime createdAt;

    @Column(insertable = false,updatable = false)
    private LocalDateTime updatedAt;
}