package com.example.demo.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.LocalDateTime;

@Entity
@Table(name = "reservations")
@Data
@NoArgsConstructor
public class Reservation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long reservationId;

    @ManyToOne
    @JoinColumn(name = "student_id")
    private Student student;

    @ManyToOne
    @JoinColumn(name = "study_room_id")
    private StudyRoom studyRoom;

    private LocalDate date;
    private LocalTime startTime;
    private LocalTime endTime;

    @Column(insertable = false,updatable = false)
    private LocalDateTime createdAt;

    @Column(insertable = false,updatable = false)
    private LocalDateTime updatedAt;
}

