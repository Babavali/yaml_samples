CREATE DATABASE  IF NOT EXISTS `postgres` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `postgres`;
-- public.id_proof definition

-- Drop table

DROP TABLE IF EXISTS `id_proof`;

CREATE TABLE 'id_proof' (
	id varchar(255) NOT NULL,
	typ varchar(255) NULL,
	value varchar(255) NULL,
	CONSTRAINT id_proof_pkey PRIMARY KEY (id)

);

-- public.test_user definition

-- Drop table

DROP TABLE IF EXISTS `test_user`;

CREATE TABLE 'test_user' (
	id int4 NOT NULL,
	city varchar(255) NULL,
	email varchar(255) NULL,
	name varchar(255) NULL,
	id_proof_id varchar(255) NULL,
	CONSTRAINT test_user_pkey PRIMARY KEY (id),
	CONSTRAINT uk_7ob33qsu9iy3il49s0674vyho UNIQUE (id_proof_id)
);


-- public.test_user foreign keys

ALTER TABLE public.test_user ADD CONSTRAINT fksju7i3axjy7lr8vkln3ewknbc FOREIGN KEY (id_proof_id) REFERENCES public.id_proof(id)
;
