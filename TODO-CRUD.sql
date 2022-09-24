CREATE TABLE "TODO" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "date" date,
  "quantity" int,
  "price" int,
  "is_confirmed" boolean DEFAULT true
);



insert into "TODO"(
id,
name,
date,
quantity,
price,
is_confirmed)

values(
'45533d5f-b6e8-4104-a886-0318784fb874',
'camiseta',
'2001/07/12',
80,
200,
true)
,

(
'a6e6ae0c-17b4-40eb-aa1d-fe1c6e9a3dea',
'pantalon',
'2001/07/12',
60,
350,
true),

(
'3702fbfe-962b-4ea6-b9b0-03d0087bc7aa',
'falda',
'2001/07/15',
60,
280,
false);


select * from "TODO";

select id, name from "TODO";

select id,name, price from "TODO" where price >300;