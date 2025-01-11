package com.example.demo.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.persistence.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.LocalDateTime;

@Entity
@Table(name = "study_rooms")
@Data
@NoArgsConstructor
public class StudyRoom {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long studyRoomId;

    @ManyToOne
    @JoinColumn(name = "school_branch_id")
    private SchoolBranch schoolBranch;

    private String name;
    private Integer capacity;

    @Column(insertable = false,updatable = false)
    private LocalDateTime createdAt;

    @Column(insertable = false,updatable = false)
    private LocalDateTime updatedAt;
}
