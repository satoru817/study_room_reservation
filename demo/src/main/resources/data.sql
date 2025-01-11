-- Rolesの初期データ
INSERT INTO roles (role_name, description) VALUES
('ROLE_SUPER_ADMIN', 'システム全体の管理者権限'),
('ROLE_ADMIN', '教室の管理者権限'),
('ROLE_STAFF', '一般スタッフ権限');

-- School Branchesの初期データ
INSERT INTO school_branches (username, name, comment) VALUES
('tokyo_main', '東京本校', '本部校舎です'),
('shibuya', '渋谷校', '2023年開校'),
('shinjuku', '新宿校', '最大規模の校舎'),
('ikebukuro', '池袋校', 'アクセス便利'),
('akihabara', '秋葉原校', '新規開校予定'),
('ebisu', '恵比寿校', 'リニューアル完了'),
('meguro', '目黒校', '自習室拡張予定'),
('nakano', '中野校', '進学特化型'),
('kichijoji', '吉祥寺校', '個別指導メイン'),
('shimokitazawa', '下北沢校', 'アットホームな雰囲気');

-- Administratorsの初期データ
INSERT INTO administrators (username, password, email, full_name, role_id, is_active) VALUES
('admin1', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', 'admin1@example.com', '管理者一郎', 1, true),
('admin2', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', 'admin2@example.com', '管理者二郎', 2, true),
('admin3', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', 'admin3@example.com', '管理者三郎', 2, true),
('staff1', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', 'staff1@example.com', 'スタッフ一郎', 3, true),
('staff2', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', 'staff2@example.com', 'スタッフ二郎', 3, true);

-- Administrator School Branchesの紐付け
INSERT INTO administrator_school_branches (administrator_id, school_branch_id) VALUES
(1, 1), (1, 2), (1, 3),
(2, 1),
(3, 2),
(4, 1),
(5, 2);

-- Study Roomsの初期データ
INSERT INTO study_rooms (school_branch_id, name, capacity) VALUES
(1, '本校自習室A', 30),
(1, '本校自習室B', 25),
(1, '本校自習室C', 20),
(2, '渋谷自習室A', 35),
(2, '渋谷自習室B', 30),
(3, '新宿自習室A', 40),
(3, '新宿自習室B', 35),
(3, '新宿自習室C', 30),
(4, '池袋自習室A', 25),
(4, '池袋自習室B', 20);

-- Studentsの初期データ
INSERT INTO students (school_branch_id, student_name, password, birth_date) VALUES
-- 東京本校の生徒（20名）
(1, '生徒1A', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2005-04-01'),
(1, '生徒1B', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2005-05-15'),
(1, '生徒1C', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2005-06-20'),
(1, '生徒1D', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2005-07-10'),
(1, '生徒1E', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2005-08-22'),
(1, '生徒1F', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2005-09-05'),
(1, '生徒1G', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2005-10-15'),
(1, '生徒1H', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2005-11-20'),
(1, '生徒1I', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2005-12-03'),
(1, '生徒1J', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-01-15'),
(1, '生徒1K', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-02-28'),
(1, '生徒1L', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-03-10'),
(1, '生徒1M', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-04-22'),
(1, '生徒1N', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-05-07'),
(1, '生徒1O', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-06-18'),
(1, '生徒1P', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-07-30'),
(1, '生徒1Q', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-08-12'),
(1, '生徒1R', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-09-25'),
(1, '生徒1S', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-10-08'),
(1, '生徒1T', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-11-19'),
-- 渋谷校の生徒（15名）
(2, '生徒2A', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-04-01'),
(2, '生徒2B', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-05-15'),
(2, '生徒2C', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-06-20'),
(2, '生徒2D', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-07-05'),
(2, '生徒2E', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-08-18'),
(2, '生徒2F', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-09-22'),
(2, '生徒2G', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-10-12'),
(2, '生徒2H', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-11-25'),
(2, '生徒2I', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2006-12-08'),
(2, '生徒2J', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2007-01-15'),
(2, '生徒2K', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2007-02-20'),
(2, '生徒2L', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2007-03-18'),
(2, '生徒2M', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2007-04-05'),
(2, '生徒2N', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2007-05-12'),
(2, '生徒2O', '$2a$10$DQVxwrh7w3zBkfOHJ4I6JOLQNHHkQ9s9GcPv9USsvtxs4DFvBB/qe', '2007-06-28');

-- Opening Hoursの初期データ（1週間分）
INSERT INTO opening_hours (study_room_id, date, opening_hour, closing_hour) VALUES
-- 本校自習室Aの1週間
(1, '2024-01-15', '09:00', '22:00'),
(1, '2024-01-16', '09:00', '22:00'),
(1, '2024-01-17', '09:00', '22:00'),
(1, '2024-01-18', '09:00', '22:00'),
(1, '2024-01-19', '09:00', '22:00'),
(1, '2024-01-20', '09:00', '18:00'),
(1, '2024-01-21', '09:00', '18:00'),
-- 渋谷自習室Aの1週間
(4, '2024-01-15', '10:00', '21:00'),
(4, '2024-01-16', '10:00', '21:00'),
(4, '2024-01-17', '10:00', '21:00'),
(4, '2024-01-18', '10:00', '21:00'),
(4, '2024-01-19', '10:00', '21:00'),
(4, '2024-01-20', '10:00', '17:00'),
(4, '2024-01-21', '10:00', '17:00');

-- Reservationsの初期データ（30件）
INSERT INTO reservations (student_id, study_room_id, date, start_time, end_time) VALUES
-- 本校自習室Aの予約
(1, 1, '2024-01-15', '10:00', '12:00'),
(2, 1, '2024-01-15', '13:00', '15:00'),
(3, 1, '2024-01-15', '16:00', '18:00'),
(4, 1, '2024-01-15', '18:30', '20:30'),
(5, 1, '2024-01-16', '09:30', '11:30'),
(6, 1, '2024-01-16', '13:00', '15:00'),
(7, 1, '2024-01-16', '15:30', '17:30'),
(8, 1, '2024-01-16', '18:00', '20:00'),
(9, 1, '2024-01-17', '10:00', '12:00'),
(10, 1, '2024-01-17', '14:00', '16:00'),
-- 渋谷自習室Aの予約
(21, 4, '2024-01-15', '10:00', '12:00'),
(22, 4, '2024-01-15', '13:00', '15:00'),
(23, 4, '2024-01-15', '16:00', '18:00'),
(24, 4, '2024-01-15', '18:30', '20:30'),
(25, 4, '2024-01-16', '10:30', '12:30'),
(26, 4, '2024-01-16', '13:30', '15:30'),
(27, 4, '2024-01-16', '16:00', '18:00'),
(28, 4, '2024-01-16', '18:30', '20:30'),
(29, 4, '2024-01-17', '11:00', '13:00'),
(30, 4, '2024-01-17', '14:00', '16:00'),
-- 本校自習室Bの予約
(11, 2, '2024-01-15', '09:30', '11:30'),
(12, 2, '2024-01-15', '13:00', '15:00'),
(13, 2, '2024-01-15', '16:00', '18:00'),
(14, 2, '2024-01-16', '10:00', '12:00'),
(15, 2, '2024-01-16', '14:00', '16:00'),
-- 渋谷自習室Bの予約
(31, 5, '2024-01-15', '10:30', '12:30'),
(32, 5, '2024-01-15', '13:30', '15:30'),
(33, 5, '2024-01-15', '16:30', '18:30'),
(34, 5, '2024-01-16', '11:00', '13:00'),
(35, 5, '2024-01-16', '14:30', '16:30');