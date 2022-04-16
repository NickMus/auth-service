CREATE TABLE user_entity
(
    user_id          serial NOT NULL,
    user_name        char(50) NOT NULL,
    role_id          int NOT NULL,
    user_second_name char(50) NOT NULL,
    age              int NOT NULL,
    sex              boolean NOT NULL,
    user_password    char(50) NOT NULL,
    user_photo       char(255) NOT NULL,

CONSTRAINT pk_user_id PRIMARY KEY (user_id));

-- CREATE INDEX FK_60 ON "user"
--     (
--      role_id
--         );

CREATE TABLE roles
(
    role_id serial NOT NULL,
    role_name char(50) NOT NULL,
    constraint fk_role_id primary key (role_id)
    );

CREATE table user_roles
    (
        user_id serial not null unique ,
        role_id int not null unique ,

        foreign key (user_id) references "user_entity" (user_id),
        foreign key (role_id) references "user_roles" (role_id)
);

