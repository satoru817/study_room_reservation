package com.example.demo.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.LocalDateTime;

@Entity
@Table(name = "opening_hours")
@Data
@NoArgsConstructor
public class OpeningHour {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long openingHourId;

    @ManyToOne
    @JoinColumn(name = "study_room_id")
    private StudyRoom studyRoom;

    private LocalDate date;
    private LocalTime openingHour;
    private LocalTime closingHour;

    @Column(insertable = false,updatable = false)
    private LocalDateTime createdAt;

    @Column(insertable = false,updatable = false)
    private LocalDateTime updatedAt;
}