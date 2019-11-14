PGDMP         ;            
    w            bikedb    11.5    11.5 %    *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            -           1262    16394    bikedb    DATABASE     �   CREATE DATABASE bikedb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE bikedb;
             topicos    false            �            1259    16439 	   itemvenda    TABLE     �   CREATE TABLE public.itemvenda (
    id integer NOT NULL,
    valor numeric(10,2) NOT NULL,
    idvenda integer NOT NULL,
    idproduto integer NOT NULL
);
    DROP TABLE public.itemvenda;
       public         topicos    false            �            1259    16437    itemvenda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.itemvenda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.itemvenda_id_seq;
       public       topicos    false    204            .           0    0    itemvenda_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.itemvenda_id_seq OWNED BY public.itemvenda.id;
            public       topicos    false    203            �            1259    16420    produto    TABLE     �   CREATE TABLE public.produto (
    id integer NOT NULL,
    nome character varying(60) NOT NULL,
    descricao character varying(1000) NOT NULL,
    valor numeric(10,2) NOT NULL
);
    DROP TABLE public.produto;
       public         topicos    false            �            1259    16418    produto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.produto_id_seq;
       public       topicos    false    200            /           0    0    produto_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;
            public       topicos    false    199            �            1259    16408    telefone    TABLE     �   CREATE TABLE public.telefone (
    id integer NOT NULL,
    codigoarea character varying(2) NOT NULL,
    numero character varying(10) NOT NULL
);
    DROP TABLE public.telefone;
       public         topicos    false            �            1259    16400    usuario_id_seq    SEQUENCE     w   CREATE SEQUENCE public.usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public       topicos    false            �            1259    16402    usuario    TABLE     5  CREATE TABLE public.usuario (
    id integer DEFAULT nextval('public.usuario_id_seq'::regclass) NOT NULL,
    nome character varying(60) NOT NULL,
    login character varying(60) NOT NULL,
    senha character varying(64) NOT NULL,
    "dataAniversario" date,
    ativo boolean NOT NULL,
    perfil integer
);
    DROP TABLE public.usuario;
       public         topicos    false    196            �            1259    16431    venda    TABLE     o   CREATE TABLE public.venda (
    id integer NOT NULL,
    data date NOT NULL,
    idusuario integer NOT NULL
);
    DROP TABLE public.venda;
       public         topicos    false            �            1259    16429    venda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.venda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.venda_id_seq;
       public       topicos    false    202            0           0    0    venda_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.venda_id_seq OWNED BY public.venda.id;
            public       topicos    false    201            �
           2604    16442    itemvenda id    DEFAULT     l   ALTER TABLE ONLY public.itemvenda ALTER COLUMN id SET DEFAULT nextval('public.itemvenda_id_seq'::regclass);
 ;   ALTER TABLE public.itemvenda ALTER COLUMN id DROP DEFAULT;
       public       topicos    false    203    204    204            �
           2604    16423 
   produto id    DEFAULT     h   ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);
 9   ALTER TABLE public.produto ALTER COLUMN id DROP DEFAULT;
       public       topicos    false    200    199    200            �
           2604    16434    venda id    DEFAULT     d   ALTER TABLE ONLY public.venda ALTER COLUMN id SET DEFAULT nextval('public.venda_id_seq'::regclass);
 7   ALTER TABLE public.venda ALTER COLUMN id DROP DEFAULT;
       public       topicos    false    201    202    202            '          0    16439 	   itemvenda 
   TABLE DATA               B   COPY public.itemvenda (id, valor, idvenda, idproduto) FROM stdin;
    public       topicos    false    204   A'       #          0    16420    produto 
   TABLE DATA               =   COPY public.produto (id, nome, descricao, valor) FROM stdin;
    public       topicos    false    200   ^'       !          0    16408    telefone 
   TABLE DATA               :   COPY public.telefone (id, codigoarea, numero) FROM stdin;
    public       topicos    false    198   (                  0    16402    usuario 
   TABLE DATA               [   COPY public.usuario (id, nome, login, senha, "dataAniversario", ativo, perfil) FROM stdin;
    public       topicos    false    197   D(       %          0    16431    venda 
   TABLE DATA               4   COPY public.venda (id, data, idusuario) FROM stdin;
    public       topicos    false    202   )       1           0    0    itemvenda_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.itemvenda_id_seq', 1, false);
            public       topicos    false    203            2           0    0    produto_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.produto_id_seq', 6, true);
            public       topicos    false    199            3           0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 6, true);
            public       topicos    false    196            4           0    0    venda_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.venda_id_seq', 1, false);
            public       topicos    false    201            �
           2606    16407    usuario Usuario_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT "Usuario_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuario DROP CONSTRAINT "Usuario_pkey";
       public         topicos    false    197            �
           2606    16444    itemvenda itemvenda_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.itemvenda
    ADD CONSTRAINT itemvenda_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.itemvenda DROP CONSTRAINT itemvenda_pkey;
       public         topicos    false    204            �
           2606    16412    telefone pk_telefone 
   CONSTRAINT     R   ALTER TABLE ONLY public.telefone
    ADD CONSTRAINT pk_telefone PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.telefone DROP CONSTRAINT pk_telefone;
       public         topicos    false    198            �
           2606    16428    produto produto_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public         topicos    false    200            �
           2606    16436    venda venda_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_pkey;
       public         topicos    false    202            �
           2606    16413    telefone fk_telefone_usuario    FK CONSTRAINT     x   ALTER TABLE ONLY public.telefone
    ADD CONSTRAINT fk_telefone_usuario FOREIGN KEY (id) REFERENCES public.usuario(id);
 F   ALTER TABLE ONLY public.telefone DROP CONSTRAINT fk_telefone_usuario;
       public       topicos    false    197    2713    198            �
           2606    16450 "   itemvenda itemvenda_idproduto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.itemvenda
    ADD CONSTRAINT itemvenda_idproduto_fkey FOREIGN KEY (idproduto) REFERENCES public.produto(id);
 L   ALTER TABLE ONLY public.itemvenda DROP CONSTRAINT itemvenda_idproduto_fkey;
       public       topicos    false    200    2717    204            �
           2606    16445     itemvenda itemvenda_idvenda_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.itemvenda
    ADD CONSTRAINT itemvenda_idvenda_fkey FOREIGN KEY (idvenda) REFERENCES public.venda(id);
 J   ALTER TABLE ONLY public.itemvenda DROP CONSTRAINT itemvenda_idvenda_fkey;
       public       topicos    false    2719    202    204            �
           2606    16455    venda venda_idusuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_idusuario_fkey FOREIGN KEY (idusuario) REFERENCES public.usuario(id) NOT VALID;
 D   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_idusuario_fkey;
       public       topicos    false    2713    197    202            '      x������ � �      #   �   x�-�1�0E�S�U���&���$%�#��b����-�=�=,�<c�Y��SJh��#y��5��oPZ����Z���$��@�$�̷W"����Ӄ`L�v��Z�5�ZmGRq1L�OՋ�M�}htl�T��`��O���3�5�      !   3   x�3�43�]33S.���\���Ĝ�����Zr�����qqq ���          �   x�E��� E���,BA��/��R�NAc2��_5&M�{z�\���}xm����Co�U���	0�B��u��1��j,�k�\���J	�#e�T2���@�FQrB,ణrPĝ���@�j��A�����!$ �h���j��	��Rꢣ�$��i2��fj[gH�F{#t��������O�      %      x������ � �     