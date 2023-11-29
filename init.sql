CREATE TABLE task_category (id SERIAL, category_name varchar(100), PRIMARY KEY(id));

CREATE TABLE tasks (id SERIAL, name varchar(100), deadline timestamp, category_id integer, PRIMARY KEY (id), FOREIGN KEY (category_id) REFERENCES task_category(id));

insert into task_category values (1, 'bugs');
insert into task_category values (2, 'features');

insert into tasks (name, deadline, category_id) values ('bug-no-1', '2022-05-08 14:30:45', 1);
insert into tasks (name, deadline, category_id)values ('bug-no-2', '2022-05-08 14:30:45', 1);
insert into tasks (name, deadline, category_id) values ('feature-1', '2022-05-08 14:30:45', 2);