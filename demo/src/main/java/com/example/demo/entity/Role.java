package com.example.demo.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "roles")
@Data
@NoArgsConstructor
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long roleId;
    private String roleName;
    private String description;

    @Column(insertable = false,updatable = false)
    private LocalDateTime createdAt;

    @Column(insertable = false,updatable = false)
    private LocalDateTime updatedAt;
}
