CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    age INT,
    gender VARCHAR(10)
);


CREATE TABLE Mental_Health_Assessments (
    assessment_id INT PRIMARY KEY,
    user_id INT,
    mood_score INT,
    stress_level INT,
    anxiety_level INT,
    date DATE,
    assessment_notes TEXT
);


CREATE TABLE Wearable_Data (
    data_id INT PRIMARY KEY,
    user_id INT,
    heart_rate INT,
    sleep_hours FLOAT,
    steps INT,
    date DATE
);


CREATE TABLE Recommendations (
    recommendation_id INT PRIMARY KEY,
    user_id INT,
    recommendation_text TEXT,
    category VARCHAR(50),
    date DATE
);


CREATE TABLE Emergency_Alerts (
    alert_id INT PRIMARY KEY,
    user_id INT,
    alert_type VARCHAR(50),
    alert_status VARCHAR(50),
    triggered_on DATE
);


INSERT INTO Users (user_id, name, email, password, age, gender) VALUES
(1, 'John Doe', 'johndoe@gmail.com', 'password123', 28, 'Male'),
(2, 'Jane Smith', 'janesmith@gmail.com', 'password456', 34, 'Female'),
(3, 'Emily Davis', 'emilyd@gmail.com', 'password789', 25, 'Female'),
(4, 'Mark Johnson', 'markj@gmail.com', 'password101', 40, 'Male'),
(5, 'Sophia Brown', 'sophiab@gmail.com', 'password102', 29, 'Female'),
(6, 'Chris Evans', 'chrise@gmail.com', 'password103', 32, 'Male'),
(7, 'Olivia Lee', 'olivial@gmail.com', 'password104', 22, 'Female'),
(8, 'David Kim', 'davidk@gmail.com', 'password105', 37, 'Male'),
(9, 'Lily Turner', 'lilyt@gmail.com', 'password106', 26, 'Female'),
(10, 'Noah Clark', 'noahc@gmail.com', 'password107', 31, 'Male');


INSERT INTO Mental_Health_Assessments (assessment_id, user_id, mood_score, stress_level, anxiety_level, date, assessment_notes) VALUES
(1, 1, 6, 7, 5, '2024-09-01', 'User reported moderate stress due to work.'),
(2, 2, 4, 8, 6, '2024-09-01', 'User is dealing with anxiety due to personal issues.'),
(3, 3, 9, 2, 1, '2024-09-02', 'User is feeling well and emotionally stable.'),
(4, 4, 5, 6, 4, '2024-09-03', 'User reported feeling slightly anxious.'),
(5, 5, 8, 3, 2, '2024-09-03', 'User is in a good mood with minimal stress.'),
(6, 6, 7, 5, 3, '2024-09-04', 'User is managing stress but feeling a little anxious.'),
(7, 7, 3, 9, 7, '2024-09-05', 'High stress reported due to exam pressure.'),
(8, 8, 10, 1, 1, '2024-09-06', 'User is feeling great, no stress or anxiety.'),
(9, 9, 6, 7, 5, '2024-09-07', 'Moderate stress due to workload.'),
(10, 10, 4, 8, 6, '2024-09-08', 'High stress and anxiety due to a personal issue.');


INSERT INTO Wearable_Data (data_id, user_id, heart_rate, sleep_hours, steps, date) VALUES
(1, 1, 75, 7.5, 8000, '2024-09-01'),
(2, 2, 85, 6.0, 6000, '2024-09-01'),
(3, 3, 65, 8.0, 10000, '2024-09-02'),
(4, 4, 80, 6.5, 7500, '2024-09-03'),
(5, 5, 72, 7.0, 8200, '2024-09-03'),
(6, 6, 90, 5.5, 5000, '2024-09-04'),
(7, 7, 85, 6.0, 6200, '2024-09-05'),
(8, 8, 70, 7.8, 9000, '2024-09-06'),
(9, 9, 75, 7.2, 8100, '2024-09-07'),
(10, 10, 95, 5.0, 4500, '2024-09-08');


INSERT INTO Recommendations (recommendation_id, user_id, recommendation_text, category, date) VALUES
(1, 1, 'Try a 10-minute meditation session to reduce stress.', 'meditation', '2024-09-01'),
(2, 2, 'Go for a short walk to clear your mind.', 'physical activity', '2024-09-01'),
(3, 3, 'Continue with your current mindfulness routine.', 'relaxation', '2024-09-02'),
(4, 4, 'Practice breathing exercises to help with anxiety.', 'meditation', '2024-09-03'),
(5, 5, 'Take a short break and stretch to relieve stress.', 'physical activity', '2024-09-03'),
(6, 6, 'Try a guided meditation to manage your anxiety.', 'meditation', '2024-09-04'),
(7, 7, 'Take a break from studying and do something fun.', 'recreation', '2024-09-05'),
(8, 8, 'Keep up the good work, continue with your relaxation routine.', 'relaxation', '2024-09-06'),
(9, 9, 'Schedule regular breaks to manage your workload better.', 'time management', '2024-09-07'),
(10, 10, 'Focus on breathing techniques to calm your anxiety.', 'meditation', '2024-09-08');


INSERT INTO Emergency_Alerts (alert_id, user_id, alert_type, alert_status, triggered_on) VALUES
(1, 2, 'High Stress Level', 'pending', '2024-09-01'),
(2, 4, 'Anxiety Spike', 'resolved', '2024-09-03'),
(3, 6, 'Critical Heart Rate', 'pending', '2024-09-04'),
(4, 7, 'High Stress Level', 'pending', '2024-09-05'),
(5, 10, 'Anxiety Spike', 'resolved', '2024-09-08'),
(6, 1, 'High Stress Level', 'pending', '2024-09-01'),
(7, 3, 'Low Heart Rate', 'resolved', '2024-09-02'),
(8, 5, 'High Stress Level', 'pending', '2024-09-03'),
(9, 8, 'Critical Heart Rate', 'resolved', '2024-09-06'),
(10, 9, 'Anxiety Spike', 'pending', '2024-09-07');
