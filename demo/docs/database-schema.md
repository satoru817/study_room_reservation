```mermaid
erDiagram
school_branches ||--o{ students : "has"
school_branches ||--o{ study_rooms : "has"
school_branches ||--o{ administrator_school_branches : "has"
administrators ||--o{ administrator_school_branches : "manages"
roles ||--o{ administrators : "assigned_to"
study_rooms ||--o{ opening_hours : "has"
study_rooms ||--o{ reservations : "has"
students ||--o{ reservations : "makes"

    school_branches {
        bigint school_branch_id PK
        string username
        string name
        text comment
        timestamp created_at
        timestamp updated_at
    }

    students {
        bigint student_id PK
        bigint school_branch_id FK
        string student_name
        string password
        date birth_date
        timestamp created_at
        timestamp updated_at
    }

    study_rooms {
        bigint study_room_id PK
        bigint school_branch_id FK
        string name
        int capacity
        timestamp created_at
        timestamp updated_at
    }

    opening_hours {
        bigint opening_hour_id PK
        bigint study_room_id FK
        date date
        time opening_hour
        time closing_hour
        timestamp created_at
        timestamp updated_at
    }

    reservations {
        bigint reservation_id PK
        bigint student_id FK
        bigint study_room_id FK
        date date
        time start_time
        time end_time
        timestamp created_at
        timestamp updated_at
    }

    roles {
        bigint role_id PK
        string role_name
        text description
        timestamp created_at
        timestamp updated_at
    }

    administrators {
        bigint administrator_id PK
        string username
        string password
        string email
        string full_name
        bigint role_id FK
        boolean is_active
        timestamp created_at
        timestamp updated_at
    }

    administrator_school_branches {
        bigint administrator_id PK,FK
        bigint school_branch_id PK,FK
        timestamp created_at
    }