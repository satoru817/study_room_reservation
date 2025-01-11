package com.example.demo.service;

import com.example.demo.repository.StudyRoomRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class StudyRoomService {
    private final StudyRoomRepository studyRoomRepository;
}
