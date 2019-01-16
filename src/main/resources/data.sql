insert into role(role) values('MUSIKAUSER');
insert into role(role) values('MUSIKAADMIN');

insert into user(id,enabled,first_name,last_name,password,username) values (1, 1, 'adminFirstName', 'adminLastName', '$2a$10$vxvm7bpIxe6dvpVUixcrN.Eyw/IbCAJNo6Q.Q1Rf2X.JKndpUrzJ.', 'adminUserName');
insert into user(id,enabled,first_name,last_name,password,username) values (2, 1, 'userFirstName', 'userLastName', '$2a$10$vxvm7bpIxe6dvpVUixcrN.Eyw/IbCAJNo6Q.Q1Rf2X.JKndpUrzJ.', 'userUserName');
insert into user_role(user_id,role_id) values (1,2);
insert into user_role(user_id,role_id) values (2,1);
INSERT INTO artist (artistFullName, artistPhoto) VALUES("khalid", LOAD_FILE('/web/src/main/resources/static/images/bg.PNG'));

