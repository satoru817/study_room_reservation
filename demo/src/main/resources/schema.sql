-- 教室マスタ
CREATE TABLE IF NOT EXITST school_branches (
    school_branch_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- 生徒マスタ
CREATE TABLE IF NOT EXISTS students (
    student_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    school_branch_id BIGINT NOT NULL,
    student_name VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    birth_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (school_branch_id) REFERENCES school_branches(school_branch_id)
);

-- 自習室マスタ
CREATE TABLE IF NOT EXISTS study_rooms (
    study_room_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    school_branch_id BIGINT NOT NULL,
    name VARCHAR(100) NOT NULL,
    capacity INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (school_branch_id) REFERENCES school_branches(school_branch_id)
);

-- 自習室営業時間(手動でも、自動でも(batch処理でも）値を挿入できるようにする。batch処理の場合先週の内容がそのまま入るようにする）
CREATE TABLE IF NOT EXISTS opening_hours (
    opening_hour_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    study_room_id BIGINT NOT NULL,
    date DATE NOT NULL,
    opening_hour TIME NOT NULL,
    closing_hour TIME NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (study_room_id) REFERENCES study_rooms(study_room_id),
    UNIQUE KEY uk_room_date (study_room_id, date)
);

-- 予約テーブル
CREATE TABLE IF NOT EXISTS reservations (
    reservation_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    student_id BIGINT NOT NULL,
    study_room_id BIGINT NOT NULL,
    date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (study_room_id) REFERENCES study_rooms(study_room_id)
);

-- インデックスの作成
CREATE INDEX idx_student_school ON students(school_branch_id);
CREATE INDEX idx_study_room_school ON study_rooms(school_branch_id);
CREATE INDEX idx_opening_hours_study_room ON opening_hours(study_room_id);
CREATE INDEX idx_reservation_date ON reservations(date);
CREATE INDEX idx_reservation_student ON reservations(student_id);
CREATE INDEX idx_reservation_study_room ON reservations(study_room_id);