package com.example.demo.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.persistence.*;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.LocalDateTime;
import java.util.Set;

@Entity
@Table(name = "administrators")
@Data
@NoArgsConstructor
public class Administrator {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long administratorId;
    private String username;
    private String password;
    private String email;
    private String fullName;

    @ManyToOne
    @JoinColumn(name = "role_id")
    private Role role;

    private Boolean isActive;

    @Column(insertable = false,updatable = false)
    private LocalDateTime createdAt;

    @Column(insertable = false,updatable = false)
    private LocalDateTime updatedAt;

    @OneToMany(mappedBy = "administrator",fetch = FetchType.LAZY)
    private Set<AdministratorSchoolBranch> schoolBranchLinks;
}
