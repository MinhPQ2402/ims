Use ims;

-- benefit, skill, job, user, rspw, candidate, candidate_skill,job_benefit,job_skill,offer,interview_schedule,interview_schedule_user

-- Insert into users table
INSERT INTO `users` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `deleted`, `address`, `department`, `dob`, `email`, `full_name`, `gender`, `note`, `password`, `phone`, `user_role`, `user_status`, `username`)
VALUES
('admin', NOW(), NULL, NULL, 0, 'FSoft', 'COMMUNICATION', '1980-05-15', 'longvd211103@gmail.com', 'Long Vu', 'MALE', 'Admin user', '$2a$10$1Dz/hOHbM/WoSdjoDtEk4.WpwFhBahXidfg7c.IpA0beoDLsF5zZK', '123-456-7890', 'ROLE_ADMIN', 'ACTIVE', 'admin1'),
('admin', NOW(), NULL, NULL, 0, 'FSoft', 'MARKETING', '1990-03-22', 'thanhnam@gmail.com', 'Thanh Nam', 'MALE', 'Marketing lead', '$2a$10$1Dz/hOHbM/WoSdjoDtEk4.WpwFhBahXidfg7c.IpA0beoDLsF5zZK', '0879-345-678', 'ROLE_MANAGER', 'ACTIVE', 'namct'),
('admin', NOW(), NULL, NULL, 0, 'FSoft', 'MARKETING', '1990-03-22', 'quangminh@gmail.com', 'Quang Minh', 'MALE', 'Marketing lead', '$2a$10$1Dz/hOHbM/WoSdjoDtEk4.WpwFhBahXidfg7c.IpA0beoDLsF5zZK', '234-567-8901', 'ROLE_MANAGER', 'ACTIVE', 'minhpq'),
('admin', NOW(), NULL, NULL, 0, 'FSoft', 'ACCOUNTING', '1985-07-08', 'trangdinh@gmail.com', 'Trang Dinh', 'MALE', 'Sales manager', '$2a$10$1Dz/hOHbM/WoSdjoDtEk4.WpwFhBahXidfg7c.IpA0beoDLsF5zZK', '345-678-9012', 'ROLE_RECRUITER', 'ACTIVE', 'trangdh'),
('admin', NOW(), NULL, NULL, 0, 'FSoft', 'ACCOUNTING', '1985-07-08', 'kieuanh@gmail.com', 'Kieu Anh', 'FEMALE', 'Sales manager', '$2a$10$1Dz/hOHbM/WoSdjoDtEk4.WpwFhBahXidfg7c.IpA0beoDLsF5zZK', '345-678-9012', 'ROLE_RECRUITER', 'ACTIVE', 'anhkn'),
('admin', NOW(), NULL, NULL, 0, 'FSoft', 'HR', '1975-11-30', 'ngocanh@gmail.com', 'Ngoc Anh', 'FEMALE', 'HR head', '$2a$10$1Dz/hOHbM/WoSdjoDtEk4.WpwFhBahXidfg7c.IpA0beoDLsF5zZK', '456-789-0123', 'ROLE_INTERVIEWER', 'ACTIVE', 'anhnn'),
('admin', NOW(), NULL, NULL, 0, 'FSoft', 'HR', '1975-11-30', 'thuthao@gmail.com', 'Thu Thao', 'FEMALE', 'HR head', '$2a$10$1Dz/hOHbM/WoSdjoDtEk4.WpwFhBahXidfg7c.IpA0beoDLsF5zZK', '456-789-0123', 'ROLE_INTERVIEWER', 'ACTIVE', 'thaodt'),
('admin', NOW(), NULL, NULL, 0, 'FSoft', 'HR', '1975-11-30', 'vananh@gmail.com', 'Van Anh', 'FEMALE', 'HR head', '$2a$10$1Dz/hOHbM/WoSdjoDtEk4.WpwFhBahXidfg7c.IpA0beoDLsF5zZK', '456-789-0123', 'ROLE_INTERVIEWER', 'ACTIVE', 'anhvv');

-- Insert into skill table
INSERT INTO `skill` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `deleted`, `skill_name`)
VALUES
('admin', NOW(), NULL, NULL, 0,  'Java'),
('admin', NOW(), NULL, NULL, 0,  'Nodejs'),
('admin', NOW(), NULL, NULL, 0,  '.net'),
('admin', NOW(), NULL, NULL, 0,  'C++'),
('admin', NOW(), NULL, NULL, 0,  'Business analysis'),
('admin', NOW(), NULL, NULL, 0,  'Communication');


-- Insert into benefit table
INSERT INTO `benefit` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `deleted`, `benefit`)
VALUES
('admin', NOW(), NULL, NULL, 0, 'Lunch'),
('admin', NOW(), NULL, NULL, 0, '25-day leave'),
('admin', NOW(), NULL, NULL, 0, 'Healthcare insurance'),
('admin', NOW(), NULL, NULL, 0, 'Hybrid working'),
('admin', NOW(), NULL, NULL, 0, 'Travel')
;
INSERT INTO `job` 
(`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `deleted`, `description`, `end_date`, `job_level`, `job_status`, `job_title`, `salary_from`, `salary_to`, `start_date`, `working_address`) 
VALUES
('admin', NOW(), NULL, NULL, 0, 'Develop and maintain backend services', '2024-12-31', 'FRESHER', 'DRAFT', 'Backend Developer', 60000, 80000, '2024-07-01', 'Dong Da, F2'), 
('admin', NOW(), NULL, NULL, 0, 'Design and develop frontend interfaces', '2024-12-31', 'JUNIOR', 'OPEN', 'Frontend Developer', 50000, 70000, '2024-07-01', 'Cau Giay, F2'), 
('admin', NOW(), NULL, NULL, 0, 'Analyze and interpret complex data', '2024-12-31', 'SENIOR', 'OPEN', 'Data Scientist', 55000, 75000, '2024-07-01', 'Long Bien,F2'), 
('admin', NOW(), NULL, NULL, 0, 'Manage and automate infrastructure', '2024-12-30', 'LEADER', 'CLOSED', 'DevOps Engineer', 65000, 85000, '2024-07-01', 'Hoan Kiem, F3'), 
('admin', NOW(), NULL, NULL, 0, 'Develop and Analyze data', '2024-11-30', 'TRAINER', 'OPEN', 'Frontend Developer', 85000, 105000, '2024-07-03', 'F3'), 
('admin', NOW(), NULL, NULL, 0, 'Manage and projectlist', '2024-12-21', 'MENTOR', 'DRAFT', 'Analyze and interpret', 65000, 95000, '2024-07-04', 'Nam Tu Liem, F2'),
('admin', NOW(), NULL, NULL, 0, 'Coordinate marketing strategies', '2024-12-31', 'JUNIOR', 'OPEN', 'Marketing Coordinator', 45000, 65000, '2024-07-01', ' FPT DANANG'), 
('admin', NOW(), NULL, NULL, 0, 'Oversee customer service operations', '2024-12-31', 'SENIOR', 'OPEN', 'Customer Service Manager', 70000, 90000, '2024-06-01', ' FPT QUYNHON'), 
('admin', NOW(), NULL, NULL, 0, 'Design and implement network solutions', '2024-12-31', 'LEADER', 'OPEN', 'Network Architect', 80000, 100000, '2024-08-01', 'FPT HANAM'), 
('admin', NOW(), NULL, NULL, 0, 'Develop mobile applications', '2024-12-31', 'JUNIOR', 'DRAFT', 'Mobile Developer', 55000, 75000, '2024-08-02', ' FPT HUE'), 
('admin', NOW(), NULL, NULL, 0, 'Lead and mentor engineering teams', '2024-12-31', 'SENIOR', 'OPEN', 'Engineering Manager', 90000, 110000, '2024-08-01', ' FPTHCM'),
('admin', NOW(), NULL, NULL, 0, 'Lead and mentor engineering teams', '2024-12-31', 'SENIOR', 'OPEN', 'Engineering Manager', 90000, 110000, '2024-08-01', ' FSoft Cau Giay');

-- Insert into candidate table
INSERT INTO `candidate` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `deleted`, `address`, `attach_file`, `candidate_position`, `candidate_status`, `dob`, `email`, `full_name`, `gender`, `highest_level`, `note`, `phone`, `year_experience`, `recruiter_id`)
VALUES  
('admin', NOW(), NULL, NULL, 0, 'Nam Dinh', NULL, 'BACKEND_DEVELOPER', 'OPEN', '1990-05-15', 'anhhk@gmail.com', 'Hoang Kieu Anh', 'FEMALE', 'HIGH_SCHOOL', 'Strong skills in backend development.', '123-456-7890', 5, 4),
('admin', NOW(), NULL, NULL, 0, 'TP Ho Chi Minh', NULL, 'HR', 'OPEN', '1988-03-22', 'anhhn@gmail.com', 'Hoang Nguyet Anh', 'FEMALE', 'BACHELOR_DEGREE', 'Expert in frontend technologies.', '234-567-8901', 7, 5),
('admin', NOW(), NULL, NULL, 0, 'Ha Noi', NULL, 'BUSINESS_ANALYST', 'BANNED', '1992-07-08', 'cuongmanh34@gmail.com', 'Nguyen Manh Cuong', 'MALE', 'MASTER_DEGREE', 'Proficient in data analysis.', '345-678-9012', 3, 4),
('admin', NOW(), NULL, NULL, 0, 'Ha Noi', NULL, 'TESTER', 'OPEN', '1985-11-30', 'dung383@gmail.com', 'Le Thi Dung', 'FEMALE', 'PHD', 'Experienced in DevOps practices.', '456-789-0123', 8, 5),

('admin', NOW(), NULL, NULL, 0, 'Hai Duong', NULL, 'BUSINESS_ANALYST', 'OPEN', '1999-05-15', 'hanhtre6@gmail.com', 'Phan Hoang Hanh', 'FEMALE', 'HIGH_SCHOOL', 'good', '0895865783', 5, 4),
('admin', NOW(), NULL, NULL, 0, 'TP Ho Chi Minh', NULL, 'HR', 'OPEN', '1998-03-22', 'anhhn@gmail.com', 'Nguyen Thi Hoa', 'FEMALE', 'BACHELOR_DEGREE', 'not bad', '0334567321', 7, 5),
('admin', NOW(), NULL, NULL, 0, 'Phu Tho', NULL, 'BACKEND_DEVELOPER', 'BANNED', '1999-07-08', 'huycv@gmail.com', 'Nguyen Vu Huy', 'MALE', 'MASTER_DEGREE', 'many experience', '0865667612', 3, 4),
('admin', NOW(), NULL, NULL, 0, 'Hoa Binh', NULL, 'TESTER', 'OPEN', '1980-11-30', 'nguyet9274@gmail.com', 'Le Thi Nguyet', 'FEMALE', 'PHD', 'Experienced ', '0684690208', 8, 5),

('admin', NOW(), NULL, NULL, 0, 'Hai Phong', NULL, 'BACKEND_DEVELOPER', 'OPEN', '1990-05-15', 'anhhk@gmail.com', 'Hoang Kieu Anh', 'FEMALE', 'MASTER_DEGREE', 'Tung lam manager', '0683838383', 5, 4),
('admin', NOW(), NULL, NULL, 0, 'Thai Binh', NULL, 'HR', 'OPEN', '1988-03-22', 'mytra9273@gmail.com', 'Nguyen Tra My', 'FEMALE', 'BACHELOR_DEGREE', 'Kha binh thuong', '0890034021', 7, 5),
('admin', NOW(), NULL, NULL, 0, 'Nam Dinh', NULL, 'BUSINESS_ANALYST', 'BANNED', '1992-07-08', 'thaick342@gmail.com', 'Chu Le Khang Thai', 'MALE', 'MASTER_DEGREE', 'Co tu duy va trinh do tot', '30899456290', 3, 4),
('admin', NOW(), NULL, NULL, 0, 'Quang Ninh', NULL, 'TESTER', 'OPEN', '2001-11-30', 'soncao@gmail.com', 'Cao Truong Son', 'MALE', 'PHD', 'Thuc tap sinh ', '0967521341', 8, 5);

-- Insert into candidate_skill table
INSERT INTO `candidate_skill` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `deleted`, `candidate_id`, `skill_id`)
VALUES
('admin', NOW(), NULL, NULL, 0, 1, 1),
('admin', NOW(), NULL, NULL, 0, 2, 6),
('admin', NOW(), NULL, NULL, 0, 3, 5),
('admin', NOW(), NULL, NULL, 0, 4, 4),
('admin', NOW(), NULL, NULL, 0, 5, 5),
('admin', NOW(), NULL, NULL, 0, 6, 6),
('admin', NOW(), NULL, NULL, 0, 7, 2),
('admin', NOW(), NULL, NULL, 0, 8, 3),
('admin', NOW(), NULL, NULL, 0, 9, 4),
('admin', NOW(), NULL, NULL, 0, 10, 5),
('admin', NOW(), NULL, NULL, 0, 11, 5),
('admin', NOW(), NULL, NULL, 0, 12, 2),
('admin', NOW(), NULL, NULL, 0, 2, 2),

('admin', NOW(), NULL, NULL, 0, 1, 2),
('admin', NOW(), NULL, NULL, 0, 2, 5),
('admin', NOW(), NULL, NULL, 0, 3, 6),
('admin', NOW(), NULL, NULL, 0, 4, 3),
('admin', NOW(), NULL, NULL, 0, 5, 6),
('admin', NOW(), NULL, NULL, 0, 6, 5),
('admin', NOW(), NULL, NULL, 0, 7, 1),
('admin', NOW(), NULL, NULL, 0, 8, 4),
('admin', NOW(), NULL, NULL, 0, 9, 2),
('admin', NOW(), NULL, NULL, 0, 10, 6),
('admin', NOW(), NULL, NULL, 0, 11, 6),
('admin', NOW(), NULL, NULL, 0, 12, 1),
('admin', NOW(), NULL, NULL, 0, 2, 1);




-- Insert into interview_schedule table
INSERT INTO `interview_schedule` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `deleted`, `interview_result`, `interview_status`, `location`, `meeting_id`, `note`, `interview_position`, `schedule_time_from`, `schedule_time_to`, `title`, `candidate_id`, `job_id`, `user_id`)
VALUES
('admin', NOW(), NULL, NULL, 0, 'FAIL', 'OPEN', 'Conference Room A', 'meet123', 'Initial interview', 'BACKEND_DEVELOPER', '2024-07-10 09:00:00', '2024-07-10 10:00:00', 'Backend Developer Interview', 1, 1, 6),
('admin', NOW(), NULL, NULL, 0, 'FAIL', 'INVITED', 'Conference Room B', 'meet456', 'Technical interview', 'HR', '2024-07-11 11:00:00', '2024-07-11 12:00:00', 'Frontend Developer Interview', 2, 2, 5),
('admin', NOW(), NULL, NULL, 0, 'PASS',  'INTERVIEWED', 'Conference Room C', 'meet789', 'Final interview', 'TESTER', '2024-07-12 14:00:00', '2024-07-12 15:00:00', 'Data Scientist Interview', 3, 3, 6),
('admin', NOW(), NULL, NULL, 0, 'PASS',  'CANCELLED', 'Conference Room D', 'meet012', 'HR interview', 'HR', '2024-07-13 16:00:00', '2024-07-13 17:00:00', 'DevOps Engineer Interview', 4, 4, 5),
('admin', NOW(), NULL, NULL, 0, 'FAIL', 'OPEN', 'Conference Room A', 'meet123', 'Initial interview', 'BACKEND_DEVELOPER', '2024-07-10 09:00:00', '2024-07-10 10:00:00', 'Backend Developer Interview', 5, 5, 6),
('admin', NOW(), NULL, NULL, 0, 'FAIL', 'INVITED', 'Conference Room B', 'meet456', 'Technical interview', 'HR', '2024-07-11 11:00:00', '2024-07-11 12:00:00', 'Frontend Developer Interview', 6, 6, 5),
('admin', NOW(), NULL, NULL, 0, 'PASS',  'INTERVIEWED', 'Conference Room C', 'meet789', 'Final interview', 'TESTER', '2024-07-12 14:00:00', '2024-07-12 15:00:00', 'Data Scientist Interview', 7, 7, 6),
('admin', NOW(), NULL, NULL, 0, 'PASS',  'CANCELLED', 'Conference Room D', 'meet012', 'HR interview', 'HR', '2024-07-13 16:00:00', '2024-07-13 17:00:00', 'DevOps Engineer Interview', 8, 8, 5),
('admin', NOW(), NULL, NULL, 0, 'FAIL', 'OPEN', 'Conference Room A', 'meet123', 'Initial interview', 'BACKEND_DEVELOPER', '2024-07-10 09:00:00', '2024-07-10 10:00:00', 'Backend Developer Interview', 9, 9, 6),
('admin', NOW(), NULL, NULL, 0, 'FAIL', 'INVITED', 'Conference Room B', 'meet456', 'Technical interview', 'HR', '2024-07-11 11:00:00', '2024-07-11 12:00:00', 'Frontend Developer Interview', 10, 10, 5),
('admin', NOW(), NULL, NULL, 0, 'PASS',  'INTERVIEWED', 'Conference Room C', 'meet789', 'Final interview', 'TESTER', '2024-07-12 14:00:00', '2024-07-12 15:00:00', 'Data Scientist Interview', 11, 11, 6),
('admin', NOW(), NULL, NULL, 0, 'PASS',  'CANCELLED', 'Conference Room D', 'meet012', 'HR interview', 'HR', '2024-07-13 16:00:00', '2024-07-13 17:00:00', 'DevOps Engineer Interview', 12, 12, 5);


-- Insert into interview_schedule_user table
INSERT INTO `interview_schedule_user` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `deleted`, `interview_schedule_id`, `user_id`)
VALUES
('admin', NOW(), NULL, NULL, 0, 1, 9),
('admin', NOW(), NULL, NULL, 0, 1, 7),
('admin', NOW(), NULL, NULL, 0, 1, 8),
('admin', NOW(), NULL, NULL, 0, 2, 7),
('admin', NOW(), NULL, NULL, 0, 2, 8),
('admin', NOW(), NULL, NULL, 0, 3, 8),
('admin', NOW(), NULL, NULL, 0, 4, 9);




-- Insert into job_benefit table
INSERT INTO `job_benefit` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `deleted`, `benefit_name`, `benefit_id`, `job_id`)
VALUES
('admin', NOW(), NULL, NULL, 0, 'Health Insurance', 1, 1),
('admin', NOW(), NULL, NULL, 0, 'Health Insurance', 2, 2),
('admin', NOW(), NULL, NULL, 0, 'Health Insurance', 3, 3),
('admin', NOW(), NULL, NULL, 0, 'Paid Time Off', 2, 4),
('admin', NOW(), NULL, NULL, 0, '401k Matching', 3, 5),
('admin', NOW(), NULL, NULL, 0, 'Flexible Work Hours', 4, 6),
('admin', NOW(), NULL, NULL, 0, 'Health Insurance', 1, 7),
('admin', NOW(), NULL, NULL, 0, 'Health Insurance', 2, 8),
('admin', NOW(), NULL, NULL, 0, 'Health Insurance', 3, 9),
('admin', NOW(), NULL, NULL, 0, 'Paid Time Off', 2, 10),
('admin', NOW(), NULL, NULL, 0, '401k Matching', 3, 11);
;

-- Insert into job_skill table
INSERT INTO `job_skill` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `deleted`, `job_id`, `skill_id`)
VALUES
('admin', NOW(), NULL, NULL, 0, 1, 1),
('admin', NOW(), NULL, NULL, 0, 2, 2),
('admin', NOW(), NULL, NULL, 0, 3, 3),
('admin', NOW(), NULL, NULL, 0, 4, 2),
('admin', NOW(), NULL, NULL, 0, 5, 4),
('admin', NOW(), NULL, NULL, 0, 6, 3),
('admin', NOW(), NULL, NULL, 0, 7, 5),
('admin', NOW(), NULL, NULL, 0, 8, 2),
('admin', NOW(), NULL, NULL, 0, 9, 4),
('admin', NOW(), NULL, NULL, 0, 10, 3),
('admin', NOW(), NULL, NULL, 0, 11, 4),

('admin', NOW(), NULL, NULL, 0, 1, 1),
('admin', NOW(), NULL, NULL, 0, 2, 2),
('admin', NOW(), NULL, NULL, 0, 3, 3),
('admin', NOW(), NULL, NULL, 0, 4, 2),
('admin', NOW(), NULL, NULL, 0, 5, 4),
('admin', NOW(), NULL, NULL, 0, 6, 3),
('admin', NOW(), NULL, NULL, 0, 7, 6),
('admin', NOW(), NULL, NULL, 0, 8, 2),
('admin', NOW(), NULL, NULL, 0, 9, 4),
('admin', NOW(), NULL, NULL, 0, 10, 3),
('admin', NOW(), NULL, NULL, 0, 11, 4);

-- Insert into offer table
INSERT INTO `offer` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `deleted`, `basic_salary`, `contract_from`, `contract_to`, `contract_type`, `department`, `due_date`, `note`, `offer_level`, `offer_status`, `position`, `approved_by_id`, `candidate_id`, `interview_schedule_id`, `recruiter_owner_id`)
VALUES
('admin', NOW(), 'admin', NOW(),0, 20000000.00,'2024-09-01', '2025-08-31', 'TRIAL_TWO_MONTH', 'IT','2024-08-15', 'Offer for Backend Developer position', 'JUNIOR_2_2', 'WAITING_FOR_APPROVAL','BACKEND_DEVELOPER',3, 1, 1, 4),
('admin', NOW(), 'admin', NOW(),0, 18000000.00,'2024-10-01', '2025-09-30', 'THREE_YEAR', 'HR','2024-09-15', 'Offer for HR position', 'JUNIOR_2_1', 'APPROVED_OFFER','BUSINESS_ANALYST',3, 2, 2, 5),
('admin', NOW(), 'admin', NOW(),0, 30000000.00,'2024-08-01', '2024-09-30', 'ONE_YEAR', 'FINANCE','2024-07-20', 'Offer for Business Analyst position', 'SENIOR_3_1', ' APPROVED_OFFER','BUSINESS_ANALYST',3, 3, 3, 4),
('admin', NOW(), 'admin', NOW(),0, 22000000.00,'2024-07-01', '2027-06-30', 'THREE_YEAR', 'COMMUNICATION','2024-06-15', 'Offer for Project Manager position', 'MANAGER', 'REJECTED_OFFER','PROJECT_MANAGER',3, 4, 4, 5),

('admin', NOW(), 'admin', NOW(),0, 20000000.00,'2024-09-01', '2025-08-31', 'TRIAL_TWO_MONTH', 'IT','2024-08-15', 'Offer for Backend Developer position', 'JUNIOR_2_2', 'WAITING_FOR_APPROVAL','BACKEND_DEVELOPER',3, 5, 1, 4),
('admin', NOW(), 'admin', NOW(),0, 18000000.00,'2024-10-01', '2025-09-30', 'THREE_YEAR', 'HR','2024-09-15', 'Offer for HR position', 'JUNIOR_2_1', 'APPROVED_OFFER','BUSINESS_ANALYST',3, 2, 2, 5),
('admin', NOW(), 'admin', NOW(),0, 30000000.00,'2024-08-01', '2024-09-30', 'ONE_YEAR', 'FINANCE','2024-07-20', 'Offer for Business Analyst position', 'SENIOR_3_1', ' APPROVED_OFFER','BUSINESS_ANALYST',3, 6, 3, 4),
('admin', NOW(), 'admin', NOW(),0, 22000000.00,'2024-07-01', '2027-06-30', 'THREE_YEAR', 'COMMUNICATION','2024-06-15', 'Offer for Project Manager position', 'MANAGER', 'REJECTED_OFFER','PROJECT_MANAGER',3, 7, 4, 5),

('admin', NOW(), 'admin', NOW(),0, 20000000.00,'2024-09-01', '2025-08-31', 'TRIAL_TWO_MONTH', 'IT','2024-08-15', 'Offer for Backend Developer position', 'JUNIOR_2_2', 'WAITING_FOR_APPROVAL','BACKEND_DEVELOPER',3, 8, 1, 4),
('admin', NOW(), 'admin', NOW(),0, 18000000.00,'2024-10-01', '2025-09-30', 'THREE_YEAR', 'HR','2024-09-15', 'Offer for HR position', 'JUNIOR_2_1', 'APPROVED_OFFER','BUSINESS_ANALYST',3, 9, 2, 5),
('admin', NOW(), 'admin', NOW(),0, 30000000.00,'2024-08-01', '2024-09-30', 'ONE_YEAR', 'FINANCE','2024-07-20', 'Offer for Business Analyst position', 'SENIOR_3_1', ' APPROVED_OFFER','BUSINESS_ANALYST',3, 10, 3, 4),
('admin', NOW(), 'admin', NOW(),0, 22000000.00,'2024-07-01', '2027-06-30', 'THREE_YEAR', 'COMMUNICATION','2024-06-15', 'Offer for Project Manager position', 'MANAGER', 'REJECTED_OFFER','PROJECT_MANAGER',3, 11, 4, 5),

('admin', NOW(), 'admin', NOW(),0, 20000000.00,'2024-09-01', '2025-08-31', 'TRIAL_TWO_MONTH', 'IT','2024-08-15', 'Offer for Backend Developer position', 'JUNIOR_2_2', 'WAITING_FOR_APPROVAL','BACKEND_DEVELOPER',3, 12, 1, 4);

-- Insert into password_reset_token table
INSERT INTO `password_reset_token` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `deleted`, `expired_time`, `token`, `user_id`)
VALUES
('admin', NOW(), NULL, NULL, 0, '2024-07-05 00:00:00', 'token123', 1),
('admin', NOW(), NULL, NULL, 0, '2024-07-05 00:00:00', 'token456', 1),
('admin', NOW(), NULL, NULL, 0, '2024-07-05 00:00:00', 'token789', 1);
