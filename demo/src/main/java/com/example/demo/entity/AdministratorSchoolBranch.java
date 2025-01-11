package com.example.demo.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.persistence.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import java.time.LocalDateTime;

@Entity
@Table(name = "administrator_school_branches")
@Data
@NoArgsConstructor
public class AdministratorSchoolBranch {
    @EmbeddedId
    private AdministratorSchoolBranchId id;

    @Column(updatable = false, insertable = false)
    private LocalDateTime createdAt;

    @ManyToOne
    @MapsId("administratorId")  // ここが重要！
    @JoinColumn(name = "administrator_id")
    private Administrator administrator;

    @ManyToOne
    @MapsId("schoolBranchId")   // ここが重要！
    @JoinColumn(name = "school_branch_id")
    private SchoolBranch schoolBranch;
}