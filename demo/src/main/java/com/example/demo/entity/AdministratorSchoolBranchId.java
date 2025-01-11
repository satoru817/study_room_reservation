package com.example.demo.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
public class AdministratorSchoolBranchId implements Serializable {
    @Column(name="administrator_id")
    private Long administratorId;

    @Column(name="school_branch_ida")
    private Long schoolBranchId;
}
