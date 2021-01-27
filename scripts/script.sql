Hibernate: create table backlog (id bigint not null auto_increment, ptsequence integer, project_identifier varchar(255), project_id bigint not null, primary key (id)) engine=InnoDB
Hibernate: create table project (id bigint not null auto_increment, created_at datetime(6), description varchar(255), end_date datetime(6), project_identifier varchar(5), project_leader varchar(255), project_name varchar(255), start_date datetime(6), updated_at datetime(6), user_id bigint, primary key (id)) engine=InnoDB
Hibernate: create table project_task (id bigint not null auto_increment, acceptance_criteria varchar(255), create_at datetime(6), due_date datetime(6), priority integer, project_identifier varchar(255), project_sequence varchar(255), status varchar(255), summary varchar(255), update_at datetime(6), backlog_id bigint not null, primary key (id)) engine=InnoDB
Hibernate: create table user (id bigint not null auto_increment, create_at datetime(6), full_name varchar(255), password varchar(255), update_at datetime(6), username varchar(255), primary key (id)) engine=InnoDB
Hibernate: alter table project drop index UK_nh7jg4qyw1dm5y0bn2vwoq6v2
Hibernate: alter table project add constraint UK_nh7jg4qyw1dm5y0bn2vwoq6v2 unique (project_identifier)
Hibernate: alter table project_task drop index UK_lk2ru5up8ilfm5wkq7wp6rtce
Hibernate: alter table project_task add constraint UK_lk2ru5up8ilfm5wkq7wp6rtce unique (project_sequence)
Hibernate: alter table user drop index UK_sb8bbouer5wak8vyiiy4pf2bx
Hibernate: alter table user add constraint UK_sb8bbouer5wak8vyiiy4pf2bx unique (username)
Hibernate: alter table backlog add constraint FKl9uchve1jja83kpywpr72gi8k foreign key (project_id) references project (id)
Hibernate: alter table project add constraint FKo06v2e9kuapcugnyhttqa1vpt foreign key (user_id) references user (id)
Hibernate: alter table project_task add constraint FKnhbtfc4k2v2fsl0s3rm7uc7w3 foreign key (backlog_id) references backlog (id)