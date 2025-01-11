package com.example.demo.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.persistence.*;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.LocalDate;
import java.time.LocalDateTime;

@EntityListeners(AuditingEntityListener.class)
@Entity
@Table(name = "students")
@Data
@NoArgsConstructor
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long studentId;

    @ManyToOne
    @JoinColumn(name = "school_branch_id")
    private SchoolBranch schoolBranch;

    private String studentName;
    private String password;
    private LocalDate birthDate;

    @Column(insertable = false,updatable = false)
    private LocalDateTime createdAt;

    @Column(insertable = false,updatable = false)
    private LocalDateTime updatedAt;
}