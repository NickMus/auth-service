-- table users
create table users
(
    id            int          not null AUTO_INCREMENT primary key,
    user_name     varchar(255) not null,
    user_password varchar(255) not null
)
    engine = InnoDB;

-- table roles

create table roles (
    id int not null auto_increment primary key,
    role varchar(100) not null
)
engine = InnoDB;

-- table user_roles

create table user_roles (
    user_id int not null ,
    role_id int not null ,

    foreign key (user_id) references users(id),
    foreign key (role_id) references roles(id),

    unique (user_id,role_id)
)
engine = InnoDB;


