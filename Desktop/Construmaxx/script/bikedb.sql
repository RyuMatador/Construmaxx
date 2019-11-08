-- Sequencias

CREATE SEQUENCE public.usuario_id_seq;

ALTER SEQUENCE public.usuario_id_seq
    OWNER TO topicos;

CREATE SEQUENCE public.produto_id_seq;

ALTER SEQUENCE public.produto_id_seq
    OWNER TO topicos;


-- Tabelas

CREATE TABLE public.produto
(
    id integer NOT NULL DEFAULT nextval('produto_id_seq'::regclass),
    nome character varying(60) COLLATE pg_catalog."default" NOT NULL,
    descricao character varying(1000) COLLATE pg_catalog."default" NOT NULL,
    valor numeric(10,2) NOT NULL,
    CONSTRAINT produto_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.produto
    OWNER to topicos;


CREATE TABLE public.telefone
(
    id integer NOT NULL,
    codigoarea character varying(2) COLLATE pg_catalog."default" NOT NULL,
    numero character varying(10) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pk_telefone PRIMARY KEY (id),
    CONSTRAINT fk_telefone_usuario FOREIGN KEY (id)
        REFERENCES public.usuario (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.telefone
    OWNER to topicos;



CREATE TABLE public.usuario
(
    id integer NOT NULL DEFAULT nextval('usuario_id_seq'::regclass),
    nome character varying(60) COLLATE pg_catalog."default" NOT NULL,
    login character varying(60) COLLATE pg_catalog."default" NOT NULL,
    senha character varying(64) COLLATE pg_catalog."default" NOT NULL,
    "dataAniversario" date,
    ativo boolean NOT NULL,
    perfil integer,
    CONSTRAINT "Usuario_pkey" PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.usuario
    OWNER to topicos;    