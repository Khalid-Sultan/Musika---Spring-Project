insert into role(id,role) values(1,'MUSIKAADMIN');
insert into role(id,role) values(2,'MUSIKAUSER');

insert into user(id,enabled,first_name,last_name,password,username) values (1, 1, 'adminFirstName', 'adminLastName', '$2a$10$vxvm7bpIxe6dvpVUixcrN.Eyw/IbCAJNo6Q.Q1Rf2X.JKndpUrzJ.', 'adminUserName');
insert into user(id,enabled,first_name,last_name,password,username) values (2, 1, 'userFirstName', 'userLastName', '$2a$10$vxvm7bpIxe6dvpVUixcrN.Eyw/IbCAJNo6Q.Q1Rf2X.JKndpUrzJ.', 'userUserName');
insert into user(id,enabled,first_name,last_name,password,username) values (3, 1, 'userFirstName2', 'userLastName2', '$2a$10$vxvm7bpIxe6dvpVUixcrN.Eyw/IbCAJNo6Q.Q1Rf2X.JKndpUrzJ.', 'userUserName2');

insert into user_role(user_id,role_id) values (1,1);
insert into user_role(user_id,role_id) values (2,2);
insert into user_role(user_id,role_id) values (3,2);


