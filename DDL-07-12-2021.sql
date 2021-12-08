
use db_hr_shcema_61_ranurx;
create table tb_m_departemens (
id varchar(10) primary key, name varchar(50),id_manager varchar(10),id_locations varchar(10)
);
create table tb_m_employees (
id varchar(10) primary key, 
first_name varchar(50),
last_name varchar(50),
email varchar(50) UNIQUE,
gender varchar(10) NOT NULL CHECK (gender IN ('male','female','other')),
phone_number varchar(14) UNIQUE,
hire_date datetime,
job_id varchar(10),sallary float,
commissions_pct float,
id_manager varchar(10),
id_depart  varchar(10),
id_religion  varchar(10)

);
////--------------------

create table tb_m_jobs (
id varchar(10) primary key, 
title varchar(50),
min_sallary float,
max_sallary float
);

create table tb_m_religions (
id varchar(10) primary key, 
name varchar(50)
);

create table tb_m_rolles (
id varchar(10) primary key, 
controll_acces varchar(1) NOT NULL CHECK (controll_acces IN ('0','1')),
report_acces varchar(1) NOT NULL CHECK (report_acces IN ('0','1')),
full_acces  varchar(1) NOT NULL CHECK (full_acces IN ('0','1'))
);

create table tb_tr_account_roles (
id varchar(10) primary key, 
id_roles  varchar(10),
id_account varchar(10)
);
create table tb_m_account (
password varchar(250), 
username varchar(10) UNIQUE,
status varchar(1) NOT NULL CHECK (status IN ('0','1')),
last_online datetime,
created_at datetime,
updated_at datetime,
avatar text
);

///
create table tb_tr_job_History (
start_date datetime,
end_date datetime,
id_job varchar(10),
id_deprt varchar(10),
id_emp  varchar(10)
);



