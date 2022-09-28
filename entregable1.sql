CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL,
  "categorie_id" int NOT NULL
);

CREATE TABLE "course_videos" (
  "id" int PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL,
  "course_id" uuid
);

CREATE TABLE "categories" (
  "id" int PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "roles" (
  "id" int,
  "name" varchar NOT NULL,
  "user_id" uuid
);

ALTER TABLE "roles" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "categories" ADD FOREIGN KEY ("id") REFERENCES "courses" ("categorie_id");

insert into "users"(
id,
name,
email,
password,
age)

values(
'4939c606-af0b-46db-84f9-ed0eba49f4eb',
'Cruz Maldonado',
'cruz@gmail.com',
'123456789',
25
),

(
'b918413b-ee30-4670-b786-b1465d8a2f50',
'pepito perez',
'pepito@gmail.com',
'contraseña',
18
);

insert into "roles"(
id,
name,
user_id
)
values(
1,
'admin',
'4939c606-af0b-46db-84f9-ed0eba49f4eb'
),
(
2,
'student',
'b918413b-ee30-4670-b786-b1465d8a2f50'
);

insert into categories (
id,
name
)
values(
1,
'desarrollo-web'
),
(
2,
'data science');

insert into courses (
id,
title,
description,
level,
teacher,
categorie_id 
)
values(
'578ebc58-8be2-4451-9416-e52587daf928',
'Curso HTML desde 0 edicion 2022',
'El curso mas completo y actualizado de HTML',
'principiante',
'Cruz Maldonado',
1
),
(
'221a18d9-2691-4e64-ba46-aed65f4b4610',
'Curso de CSS desde 0 edicion 2022',
'El curso mas completo y actualizado de CSS, con las mejores practicas',
'principiante',
'Cruz Maldonado',
1);

insert into course_videos (
id,
title,
url,
course_id)
values(
1,
'Historia de HTML',
'https://academlo-plus/course/html-desde-0/video1.com',
'578ebc58-8be2-4451-9416-e52587daf928'
),
(
2,
'Como instalar visual studio code',
'https://academlo-plus/course/html-desde-0/video2.com',
'578ebc58-8be2-4451-9416-e52587daf928'
);



