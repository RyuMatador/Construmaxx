toc.dat                                                                                             0000600 0004000 0002000 00000033253 13564551061 0014453 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       %                
    w            construmaxx    11.5    12.1 3    9           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         :           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         ;           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         <           1262    24717    construmaxx    DATABASE     �   CREATE DATABASE construmaxx WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE construmaxx;
                topicos    false         �            1259    24724    endereco    TABLE     �   CREATE TABLE public.endereco (
    id integer NOT NULL,
    logradouro character varying(60),
    numero character varying(60),
    cidade character varying(60),
    estado character varying(60),
    cep character varying(60)
);
    DROP TABLE public.endereco;
       public            topicos    false         �            1259    24727    endereco_id_seq    SEQUENCE     �   CREATE SEQUENCE public.endereco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.endereco_id_seq;
       public          topicos    false    196         =           0    0    endereco_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.endereco_id_seq OWNED BY public.endereco.id;
          public          topicos    false    197         �            1259    24729 	   itemvenda    TABLE     �   CREATE TABLE public.itemvenda (
    id integer NOT NULL,
    idproduto integer,
    idvenda integer,
    valor numeric(10,2)
);
    DROP TABLE public.itemvenda;
       public            topicos    false         �            1259    24732    itemvenda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.itemvenda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.itemvenda_id_seq;
       public          topicos    false    198         >           0    0    itemvenda_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.itemvenda_id_seq OWNED BY public.itemvenda.id;
          public          topicos    false    199         �            1259    24734    produto    TABLE     �   CREATE TABLE public.produto (
    id integer NOT NULL,
    nome character varying(60),
    descricao character varying(60),
    valor numeric(10,2),
    tipoproduto integer
);
    DROP TABLE public.produto;
       public            topicos    false         �            1259    24737    produto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.produto_id_seq;
       public          topicos    false    200         ?           0    0    produto_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;
          public          topicos    false    201         �            1259    24739    telefone    TABLE     �   CREATE TABLE public.telefone (
    id integer NOT NULL,
    codigoarea character varying(60),
    numero character varying(60)
);
    DROP TABLE public.telefone;
       public            topicos    false         �            1259    24742    telefone_id_seq    SEQUENCE     �   CREATE SEQUENCE public.telefone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.telefone_id_seq;
       public          topicos    false    202         @           0    0    telefone_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.telefone_id_seq OWNED BY public.telefone.id;
          public          topicos    false    203         �            1259    24744    usuario    TABLE     �   CREATE TABLE public.usuario (
    id integer NOT NULL,
    nome character varying(60),
    login character varying(60),
    senha character varying(100),
    data date,
    ativo boolean,
    perfil integer
);
    DROP TABLE public.usuario;
       public            topicos    false         �            1259    24747    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          topicos    false    204         A           0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          topicos    false    205         �            1259    24749    venda    TABLE     ]   CREATE TABLE public.venda (
    id integer NOT NULL,
    data date,
    idusuario integer
);
    DROP TABLE public.venda;
       public            topicos    false         �            1259    24752    venda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.venda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.venda_id_seq;
       public          topicos    false    206         B           0    0    venda_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.venda_id_seq OWNED BY public.venda.id;
          public          topicos    false    207         �
           2604    24754    endereco id    DEFAULT     j   ALTER TABLE ONLY public.endereco ALTER COLUMN id SET DEFAULT nextval('public.endereco_id_seq'::regclass);
 :   ALTER TABLE public.endereco ALTER COLUMN id DROP DEFAULT;
       public          topicos    false    197    196         �
           2604    24755    itemvenda id    DEFAULT     l   ALTER TABLE ONLY public.itemvenda ALTER COLUMN id SET DEFAULT nextval('public.itemvenda_id_seq'::regclass);
 ;   ALTER TABLE public.itemvenda ALTER COLUMN id DROP DEFAULT;
       public          topicos    false    199    198         �
           2604    24756 
   produto id    DEFAULT     h   ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);
 9   ALTER TABLE public.produto ALTER COLUMN id DROP DEFAULT;
       public          topicos    false    201    200         �
           2604    24757    telefone id    DEFAULT     j   ALTER TABLE ONLY public.telefone ALTER COLUMN id SET DEFAULT nextval('public.telefone_id_seq'::regclass);
 :   ALTER TABLE public.telefone ALTER COLUMN id DROP DEFAULT;
       public          topicos    false    203    202         �
           2604    24758 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          topicos    false    205    204         �
           2604    24759    venda id    DEFAULT     d   ALTER TABLE ONLY public.venda ALTER COLUMN id SET DEFAULT nextval('public.venda_id_seq'::regclass);
 7   ALTER TABLE public.venda ALTER COLUMN id DROP DEFAULT;
       public          topicos    false    207    206         +          0    24724    endereco 
   TABLE DATA           O   COPY public.endereco (id, logradouro, numero, cidade, estado, cep) FROM stdin;
    public          topicos    false    196       2859.dat -          0    24729 	   itemvenda 
   TABLE DATA           B   COPY public.itemvenda (id, idproduto, idvenda, valor) FROM stdin;
    public          topicos    false    198       2861.dat /          0    24734    produto 
   TABLE DATA           J   COPY public.produto (id, nome, descricao, valor, tipoproduto) FROM stdin;
    public          topicos    false    200       2863.dat 1          0    24739    telefone 
   TABLE DATA           :   COPY public.telefone (id, codigoarea, numero) FROM stdin;
    public          topicos    false    202       2865.dat 3          0    24744    usuario 
   TABLE DATA           N   COPY public.usuario (id, nome, login, senha, data, ativo, perfil) FROM stdin;
    public          topicos    false    204       2867.dat 5          0    24749    venda 
   TABLE DATA           4   COPY public.venda (id, data, idusuario) FROM stdin;
    public          topicos    false    206       2869.dat C           0    0    endereco_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.endereco_id_seq', 1, false);
          public          topicos    false    197         D           0    0    itemvenda_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.itemvenda_id_seq', 2, true);
          public          topicos    false    199         E           0    0    produto_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.produto_id_seq', 4, true);
          public          topicos    false    201         F           0    0    telefone_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.telefone_id_seq', 1, false);
          public          topicos    false    203         G           0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 9, true);
          public          topicos    false    205         H           0    0    venda_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.venda_id_seq', 2, true);
          public          topicos    false    207         �
           2606    24761    endereco endereco_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_pkey;
       public            topicos    false    196         �
           2606    24763    itemvenda itemvenda_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.itemvenda
    ADD CONSTRAINT itemvenda_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.itemvenda DROP CONSTRAINT itemvenda_pkey;
       public            topicos    false    198         �
           2606    24765    produto produto_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public            topicos    false    200         �
           2606    24767    telefone telefone_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.telefone
    ADD CONSTRAINT telefone_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.telefone DROP CONSTRAINT telefone_pkey;
       public            topicos    false    202         �
           2606    24769    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            topicos    false    204         �
           2606    24771    venda venda_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_pkey;
       public            topicos    false    206         �
           2606    24772    endereco endereco_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_id_fkey FOREIGN KEY (id) REFERENCES public.usuario(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 C   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_id_fkey;
       public          topicos    false    204    196    2730         �
           2606    24777 "   itemvenda itemvenda_idproduto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.itemvenda
    ADD CONSTRAINT itemvenda_idproduto_fkey FOREIGN KEY (idproduto) REFERENCES public.produto(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 L   ALTER TABLE ONLY public.itemvenda DROP CONSTRAINT itemvenda_idproduto_fkey;
       public          topicos    false    200    198    2726         �
           2606    24782     itemvenda itemvenda_idvenda_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.itemvenda
    ADD CONSTRAINT itemvenda_idvenda_fkey FOREIGN KEY (idvenda) REFERENCES public.venda(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 J   ALTER TABLE ONLY public.itemvenda DROP CONSTRAINT itemvenda_idvenda_fkey;
       public          topicos    false    206    2732    198         �
           2606    24787    telefone telefone_id_fkey    FK CONSTRAINT     u   ALTER TABLE ONLY public.telefone
    ADD CONSTRAINT telefone_id_fkey FOREIGN KEY (id) REFERENCES public.usuario(id);
 C   ALTER TABLE ONLY public.telefone DROP CONSTRAINT telefone_id_fkey;
       public          topicos    false    204    2730    202         �
           2606    24792    venda venda_idusuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_idusuario_fkey FOREIGN KEY (idusuario) REFERENCES public.usuario(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 D   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_idusuario_fkey;
       public          topicos    false    204    206    2730                                                                                                                                                                                                                                                                                                                                                             2859.dat                                                                                            0000600 0004000 0002000 00000000306 13564551061 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	jdsak	131	dasjkd	dajksnd	4567890
4	605 Sul	13	Palmas	TO	77016-409
5	52sl	12	Palmas-To	TO	77016409
6	dkslfj	kasdjf	aksdfj	asldkfj	5461321
7	asdfasd	fadf	adf	asdf	adf
8	asdf	adsf	adsf	adsf	adf
\.


                                                                                                                                                                                                                                                                                                                          2861.dat                                                                                            0000600 0004000 0002000 00000000005 13564551061 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2863.dat                                                                                            0000600 0004000 0002000 00000000173 13564551061 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	a	aaaaaaaa	22.00	\N
2	Escada 3mt	Escada aluminio. 	200.00	\N
3	dlskjfç	lasdkfj	2000.00	\N
4	asdfh	dskhfj	1235.00	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                     2865.dat                                                                                            0000600 0004000 0002000 00000000144 13564551061 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	231	5614564
4	63	9977-4747
5	63	9214-5232
6	63	9247-5130
7	63	6565166
8	10/10/2000	9992-6513
\.


                                                                                                                                                                                                                                                                                                                                                                                                                            2867.dat                                                                                            0000600 0004000 0002000 00000001142 13564551061 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	b	b@b	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	2001-01-01	t	2
4	suelio	sueliodez@hotmail.com	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	1997-01-29	t	1
5	mario	mario@mail	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	1997-01-29	t	3
6	sarah	sara@gmail.com	1d43aca4e95313dfc30cfc92bee7d5a82efd33eb2e8f0b6652a150192d33b567	2001-01-14	t	3
7	asdfsdf	adf@asdf	fd843f3c5adce225d1cf241ae59f967852cc23da295384177c62282b5357d854	1234-02-12	t	1
8	sdfsdjfh	sdfkjs@dklafj	2413fb3709b05939f04cf2e92f7d0897fc2596f9ad0b8a9ea855c7bfebaae892	1564-10-31	t	3
\.


                                                                                                                                                                                                                                                                                                                                                                                                                              2869.dat                                                                                            0000600 0004000 0002000 00000000024 13564551061 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	2019-11-16	4
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            restore.sql                                                                                         0000600 0004000 0002000 00000026015 13564551061 0015376 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 12.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE construmaxx;
--
-- Name: construmaxx; Type: DATABASE; Schema: -; Owner: topicos
--

CREATE DATABASE construmaxx WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE construmaxx OWNER TO topicos;

\connect construmaxx

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- Name: endereco; Type: TABLE; Schema: public; Owner: topicos
--

CREATE TABLE public.endereco (
    id integer NOT NULL,
    logradouro character varying(60),
    numero character varying(60),
    cidade character varying(60),
    estado character varying(60),
    cep character varying(60)
);


ALTER TABLE public.endereco OWNER TO topicos;

--
-- Name: endereco_id_seq; Type: SEQUENCE; Schema: public; Owner: topicos
--

CREATE SEQUENCE public.endereco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.endereco_id_seq OWNER TO topicos;

--
-- Name: endereco_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: topicos
--

ALTER SEQUENCE public.endereco_id_seq OWNED BY public.endereco.id;


--
-- Name: itemvenda; Type: TABLE; Schema: public; Owner: topicos
--

CREATE TABLE public.itemvenda (
    id integer NOT NULL,
    idproduto integer,
    idvenda integer,
    valor numeric(10,2)
);


ALTER TABLE public.itemvenda OWNER TO topicos;

--
-- Name: itemvenda_id_seq; Type: SEQUENCE; Schema: public; Owner: topicos
--

CREATE SEQUENCE public.itemvenda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itemvenda_id_seq OWNER TO topicos;

--
-- Name: itemvenda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: topicos
--

ALTER SEQUENCE public.itemvenda_id_seq OWNED BY public.itemvenda.id;


--
-- Name: produto; Type: TABLE; Schema: public; Owner: topicos
--

CREATE TABLE public.produto (
    id integer NOT NULL,
    nome character varying(60),
    descricao character varying(60),
    valor numeric(10,2),
    tipoproduto integer
);


ALTER TABLE public.produto OWNER TO topicos;

--
-- Name: produto_id_seq; Type: SEQUENCE; Schema: public; Owner: topicos
--

CREATE SEQUENCE public.produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produto_id_seq OWNER TO topicos;

--
-- Name: produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: topicos
--

ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;


--
-- Name: telefone; Type: TABLE; Schema: public; Owner: topicos
--

CREATE TABLE public.telefone (
    id integer NOT NULL,
    codigoarea character varying(60),
    numero character varying(60)
);


ALTER TABLE public.telefone OWNER TO topicos;

--
-- Name: telefone_id_seq; Type: SEQUENCE; Schema: public; Owner: topicos
--

CREATE SEQUENCE public.telefone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.telefone_id_seq OWNER TO topicos;

--
-- Name: telefone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: topicos
--

ALTER SEQUENCE public.telefone_id_seq OWNED BY public.telefone.id;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: topicos
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    nome character varying(60),
    login character varying(60),
    senha character varying(100),
    data date,
    ativo boolean,
    perfil integer
);


ALTER TABLE public.usuario OWNER TO topicos;

--
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: topicos
--

CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_seq OWNER TO topicos;

--
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: topicos
--

ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;


--
-- Name: venda; Type: TABLE; Schema: public; Owner: topicos
--

CREATE TABLE public.venda (
    id integer NOT NULL,
    data date,
    idusuario integer
);


ALTER TABLE public.venda OWNER TO topicos;

--
-- Name: venda_id_seq; Type: SEQUENCE; Schema: public; Owner: topicos
--

CREATE SEQUENCE public.venda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venda_id_seq OWNER TO topicos;

--
-- Name: venda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: topicos
--

ALTER SEQUENCE public.venda_id_seq OWNED BY public.venda.id;


--
-- Name: endereco id; Type: DEFAULT; Schema: public; Owner: topicos
--

ALTER TABLE ONLY public.endereco ALTER COLUMN id SET DEFAULT nextval('public.endereco_id_seq'::regclass);


--
-- Name: itemvenda id; Type: DEFAULT; Schema: public; Owner: topicos
--

ALTER TABLE ONLY public.itemvenda ALTER COLUMN id SET DEFAULT nextval('public.itemvenda_id_seq'::regclass);


--
-- Name: produto id; Type: DEFAULT; Schema: public; Owner: topicos
--

ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);


--
-- Name: telefone id; Type: DEFAULT; Schema: public; Owner: topicos
--

ALTER TABLE ONLY public.telefone ALTER COLUMN id SET DEFAULT nextval('public.telefone_id_seq'::regclass);


--
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: topicos
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);


--
-- Name: venda id; Type: DEFAULT; Schema: public; Owner: topicos
--

ALTER TABLE ONLY public.venda ALTER COLUMN id SET DEFAULT nextval('public.venda_id_seq'::regclass);


--
-- Data for Name: endereco; Type: TABLE DATA; Schema: public; Owner: topicos
--

COPY public.endereco (id, logradouro, numero, cidade, estado, cep) FROM stdin;
\.
COPY public.endereco (id, logradouro, numero, cidade, estado, cep) FROM '$$PATH$$/2859.dat';

--
-- Data for Name: itemvenda; Type: TABLE DATA; Schema: public; Owner: topicos
--

COPY public.itemvenda (id, idproduto, idvenda, valor) FROM stdin;
\.
COPY public.itemvenda (id, idproduto, idvenda, valor) FROM '$$PATH$$/2861.dat';

--
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: topicos
--

COPY public.produto (id, nome, descricao, valor, tipoproduto) FROM stdin;
\.
COPY public.produto (id, nome, descricao, valor, tipoproduto) FROM '$$PATH$$/2863.dat';

--
-- Data for Name: telefone; Type: TABLE DATA; Schema: public; Owner: topicos
--

COPY public.telefone (id, codigoarea, numero) FROM stdin;
\.
COPY public.telefone (id, codigoarea, numero) FROM '$$PATH$$/2865.dat';

--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: topicos
--

COPY public.usuario (id, nome, login, senha, data, ativo, perfil) FROM stdin;
\.
COPY public.usuario (id, nome, login, senha, data, ativo, perfil) FROM '$$PATH$$/2867.dat';

--
-- Data for Name: venda; Type: TABLE DATA; Schema: public; Owner: topicos
--

COPY public.venda (id, data, idusuario) FROM stdin;
\.
COPY public.venda (id, data, idusuario) FROM '$$PATH$$/2869.dat';

--
-- Name: endereco_id_seq; Type: SEQUENCE SET; Schema: public; Owner: topicos
--

SELECT pg_catalog.setval('public.endereco_id_seq', 1, false);


--
-- Name: itemvenda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: topicos
--

SELECT pg_catalog.setval('public.itemvenda_id_seq', 2, true);


--
-- Name: produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: topicos
--

SELECT pg_catalog.setval('public.produto_id_seq', 4, true);


--
-- Name: telefone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: topicos
--

SELECT pg_catalog.setval('public.telefone_id_seq', 1, false);


--
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: topicos
--

SELECT pg_catalog.setval('public.usuario_id_seq', 9, true);


--
-- Name: venda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: topicos
--

SELECT pg_catalog.setval('public.venda_id_seq', 2, true);


--
-- Name: endereco endereco_pkey; Type: CONSTRAINT; Schema: public; Owner: topicos
--

ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (id);


--
-- Name: itemvenda itemvenda_pkey; Type: CONSTRAINT; Schema: public; Owner: topicos
--

ALTER TABLE ONLY public.itemvenda
    ADD CONSTRAINT itemvenda_pkey PRIMARY KEY (id);


--
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: topicos
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);


--
-- Name: telefone telefone_pkey; Type: CONSTRAINT; Schema: public; Owner: topicos
--

ALTER TABLE ONLY public.telefone
    ADD CONSTRAINT telefone_pkey PRIMARY KEY (id);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: topicos
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- Name: venda venda_pkey; Type: CONSTRAINT; Schema: public; Owner: topicos
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id);


--
-- Name: endereco endereco_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: topicos
--

ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_id_fkey FOREIGN KEY (id) REFERENCES public.usuario(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: itemvenda itemvenda_idproduto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: topicos
--

ALTER TABLE ONLY public.itemvenda
    ADD CONSTRAINT itemvenda_idproduto_fkey FOREIGN KEY (idproduto) REFERENCES public.produto(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: itemvenda itemvenda_idvenda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: topicos
--

ALTER TABLE ONLY public.itemvenda
    ADD CONSTRAINT itemvenda_idvenda_fkey FOREIGN KEY (idvenda) REFERENCES public.venda(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: telefone telefone_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: topicos
--

ALTER TABLE ONLY public.telefone
    ADD CONSTRAINT telefone_id_fkey FOREIGN KEY (id) REFERENCES public.usuario(id);


--
-- Name: venda venda_idusuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: topicos
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_idusuario_fkey FOREIGN KEY (idusuario) REFERENCES public.usuario(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   