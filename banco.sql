PGDMP     1    *            
    w            construmaxx    12.0    12.0 3    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            C           1262    16540    construmaxx    DATABASE     �   CREATE DATABASE construmaxx WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE construmaxx;
                topicos    false            �            1259    16541    endereco    TABLE     �   CREATE TABLE public.endereco (
    id integer NOT NULL,
    logradouro character varying(60),
    numero character varying(60),
    cidade character varying(60),
    estado character varying(60),
    cep character varying(60)
);
    DROP TABLE public.endereco;
       public         heap    topicos    false            �            1259    16544    endereco_id_seq    SEQUENCE     �   CREATE SEQUENCE public.endereco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.endereco_id_seq;
       public          topicos    false    202            D           0    0    endereco_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.endereco_id_seq OWNED BY public.endereco.id;
          public          topicos    false    203            �            1259    16546 	   itemvenda    TABLE     �   CREATE TABLE public.itemvenda (
    id integer NOT NULL,
    idproduto integer,
    idvenda integer,
    valor numeric(10,2)
);
    DROP TABLE public.itemvenda;
       public         heap    topicos    false            �            1259    16549    itemvenda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.itemvenda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.itemvenda_id_seq;
       public          topicos    false    204            E           0    0    itemvenda_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.itemvenda_id_seq OWNED BY public.itemvenda.id;
          public          topicos    false    205            �            1259    16551    produto    TABLE     �   CREATE TABLE public.produto (
    id integer NOT NULL,
    nome character varying(60),
    descricao character varying(60),
    valor numeric(10,2),
    tipoproduto integer
);
    DROP TABLE public.produto;
       public         heap    topicos    false            �            1259    16554    produto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.produto_id_seq;
       public          topicos    false    206            F           0    0    produto_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;
          public          topicos    false    207            �            1259    16556    telefone    TABLE     �   CREATE TABLE public.telefone (
    id integer NOT NULL,
    codigoarea character varying(60),
    numero character varying(60)
);
    DROP TABLE public.telefone;
       public         heap    topicos    false            �            1259    16559    telefone_id_seq    SEQUENCE     �   CREATE SEQUENCE public.telefone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.telefone_id_seq;
       public          topicos    false    208            G           0    0    telefone_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.telefone_id_seq OWNED BY public.telefone.id;
          public          topicos    false    209            �            1259    16561    usuario    TABLE     �   CREATE TABLE public.usuario (
    id integer NOT NULL,
    nome character varying(60),
    login character varying(60),
    senha character varying(100),
    data date,
    ativo boolean,
    perfil integer
);
    DROP TABLE public.usuario;
       public         heap    topicos    false            �            1259    16564    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          topicos    false    210            H           0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          topicos    false    211            �            1259    16566    venda    TABLE     ]   CREATE TABLE public.venda (
    id integer NOT NULL,
    data date,
    idusuario integer
);
    DROP TABLE public.venda;
       public         heap    topicos    false            �            1259    16569    venda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.venda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.venda_id_seq;
       public          topicos    false    212            I           0    0    venda_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.venda_id_seq OWNED BY public.venda.id;
          public          topicos    false    213            �
           2604    16571    endereco id    DEFAULT     j   ALTER TABLE ONLY public.endereco ALTER COLUMN id SET DEFAULT nextval('public.endereco_id_seq'::regclass);
 :   ALTER TABLE public.endereco ALTER COLUMN id DROP DEFAULT;
       public          topicos    false    203    202            �
           2604    16572    itemvenda id    DEFAULT     l   ALTER TABLE ONLY public.itemvenda ALTER COLUMN id SET DEFAULT nextval('public.itemvenda_id_seq'::regclass);
 ;   ALTER TABLE public.itemvenda ALTER COLUMN id DROP DEFAULT;
       public          topicos    false    205    204            �
           2604    16573 
   produto id    DEFAULT     h   ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);
 9   ALTER TABLE public.produto ALTER COLUMN id DROP DEFAULT;
       public          topicos    false    207    206            �
           2604    16574    telefone id    DEFAULT     j   ALTER TABLE ONLY public.telefone ALTER COLUMN id SET DEFAULT nextval('public.telefone_id_seq'::regclass);
 :   ALTER TABLE public.telefone ALTER COLUMN id DROP DEFAULT;
       public          topicos    false    209    208            �
           2604    16575 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          topicos    false    211    210            �
           2604    16576    venda id    DEFAULT     d   ALTER TABLE ONLY public.venda ALTER COLUMN id SET DEFAULT nextval('public.venda_id_seq'::regclass);
 7   ALTER TABLE public.venda ALTER COLUMN id DROP DEFAULT;
       public          topicos    false    213    212            2          0    16541    endereco 
   TABLE DATA           O   COPY public.endereco (id, logradouro, numero, cidade, estado, cep) FROM stdin;
    public          topicos    false    202   _7       4          0    16546 	   itemvenda 
   TABLE DATA           B   COPY public.itemvenda (id, idproduto, idvenda, valor) FROM stdin;
    public          topicos    false    204   �7       6          0    16551    produto 
   TABLE DATA           J   COPY public.produto (id, nome, descricao, valor, tipoproduto) FROM stdin;
    public          topicos    false    206   8       8          0    16556    telefone 
   TABLE DATA           :   COPY public.telefone (id, codigoarea, numero) FROM stdin;
    public          topicos    false    208   �8       :          0    16561    usuario 
   TABLE DATA           N   COPY public.usuario (id, nome, login, senha, data, ativo, perfil) FROM stdin;
    public          topicos    false    210   �8       <          0    16566    venda 
   TABLE DATA           4   COPY public.venda (id, data, idusuario) FROM stdin;
    public          topicos    false    212   *:       J           0    0    endereco_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.endereco_id_seq', 1, false);
          public          topicos    false    203            K           0    0    itemvenda_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.itemvenda_id_seq', 2, true);
          public          topicos    false    205            L           0    0    produto_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.produto_id_seq', 4, true);
          public          topicos    false    207            M           0    0    telefone_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.telefone_id_seq', 1, false);
          public          topicos    false    209            N           0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 9, true);
          public          topicos    false    211            O           0    0    venda_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.venda_id_seq', 2, true);
          public          topicos    false    213            �
           2606    16578    endereco endereco_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_pkey;
       public            topicos    false    202            �
           2606    16580    itemvenda itemvenda_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.itemvenda
    ADD CONSTRAINT itemvenda_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.itemvenda DROP CONSTRAINT itemvenda_pkey;
       public            topicos    false    204            �
           2606    16582    produto produto_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public            topicos    false    206            �
           2606    16584    telefone telefone_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.telefone
    ADD CONSTRAINT telefone_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.telefone DROP CONSTRAINT telefone_pkey;
       public            topicos    false    208            �
           2606    16586    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            topicos    false    210            �
           2606    16588    venda venda_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_pkey;
       public            topicos    false    212            �
           2606    16614    endereco endereco_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_id_fkey FOREIGN KEY (id) REFERENCES public.usuario(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 C   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_id_fkey;
       public          topicos    false    210    2732    202            �
           2606    16690 "   itemvenda itemvenda_idproduto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.itemvenda
    ADD CONSTRAINT itemvenda_idproduto_fkey FOREIGN KEY (idproduto) REFERENCES public.produto(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 L   ALTER TABLE ONLY public.itemvenda DROP CONSTRAINT itemvenda_idproduto_fkey;
       public          topicos    false    206    204    2728            �
           2606    16705     itemvenda itemvenda_idvenda_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.itemvenda
    ADD CONSTRAINT itemvenda_idvenda_fkey FOREIGN KEY (idvenda) REFERENCES public.venda(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 J   ALTER TABLE ONLY public.itemvenda DROP CONSTRAINT itemvenda_idvenda_fkey;
       public          topicos    false    204    2734    212            �
           2606    16604    telefone telefone_id_fkey    FK CONSTRAINT     u   ALTER TABLE ONLY public.telefone
    ADD CONSTRAINT telefone_id_fkey FOREIGN KEY (id) REFERENCES public.usuario(id);
 C   ALTER TABLE ONLY public.telefone DROP CONSTRAINT telefone_id_fkey;
       public          topicos    false    2732    208    210            �
           2606    16685    venda venda_idusuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_idusuario_fkey FOREIGN KEY (idusuario) REFERENCES public.usuario(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 D   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_idusuario_fkey;
       public          topicos    false    210    212    2732            2   �   x�U�;1D��)���$���)@bKKV�$@aq��#Q�g��f4Q�𳇰�.f��]S.��("�t�<�A8�b;����J	)���N���{�t���J��b�uH7O1�9x*��jBe1j��-ߨ����HD/�E6�      4      x������ � �      6   e   x�5��� �s�L@�#xu.?�z@gr��髅@��Y?c��Q��|�e[v���|G��kZ�}!K)�/�ڡmqF�inb���X�[�!G      8   M   x�%̹�@C�����Sf{��:X`F�S�S"]�^�B	S֚њ���Ҏ�g���a^��N��s/�lV����X�      :   2  x���An1Eמ�Le���n���$M�i7=}=�*h%	��c�o=���ͼ��@�-ZiE=*:�V�UD�ʀ2�� ƴ>,9<��z���a����y���E﷿�s�q��
7���#o;����9y{{~�FFQ�Ƅ	�+F�����~��u�汗B �bb��N�>�K��� ��3���>�h�D���FR��Ĉ�Km��C`Jh9ժ�A'�:� �aMp���A��io�/�m�_�/aE�X#�H��1O�1x�qu��,#�&l҈�v�.bm��J^S\1���,��!�      <      x�3�420��54�54�4����� #p     