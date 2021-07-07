USE spr1;

-- https://docs.spring.io/spring-security/site/docs/current/reference/html5/#persistent-login-remember-me-schema

create table persistent_logins (
    username varchar(64) not null,
    series varchar(64) primary key,
    token varchar(64) not null,
    last_used timestamp not null
);

desc persistent_logins;