-- 教室マスタ
CREATE TABLE IF NOT EXISTS school_branches (
    school_branch_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(200) NOT NULL UNIQUE,
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

-- 権限マスタ
CREATE TABLE IF NOT EXISTS roles (
    role_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(50) NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- 管理者マスタ
CREATE TABLE IF NOT EXISTS administrators (
    administrator_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    full_name VARCHAR(100) NOT NULL,
    role_id BIGINT NOT NULL,
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);

-- 管理者と教室の紐付けテーブル
CREATE TABLE IF NOT EXISTS administrator_school_branches (
    administrator_id BIGINT,
    school_branch_id BIGINT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (administrator_id, school_branch_id),
    FOREIGN KEY (administrator_id) REFERENCES administrators(administrator_id),
    FOREIGN KEY (school_branch_id) REFERENCES school_branches(school_branch_id)
);

-- インデックスの作成
CREATE INDEX idx_student_school ON students(school_branch_id);
CREATE INDEX idx_study_room_school ON study_rooms(school_branch_id);
CREATE INDEX idx_opening_hours_study_room ON opening_hours(study_room_id);
CREATE INDEX idx_reservation_date ON reservations(date);
CREATE INDEX idx_reservation_student ON reservations(student_id);
CREATE INDEX idx_reservation_study_room ON reservations(study_room_id);
CREATE INDEX idx_administrator_role ON administrators(role_id);
CREATE INDEX idx_admin_school_branch ON administrator_school_branches(school_branch_id);