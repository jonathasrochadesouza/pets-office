PGDMP                         y            consultorio    10.9    11.3     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    32851    consultorio    DATABASE     �   CREATE DATABASE consultorio WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE consultorio;
             postgres    false            �            1259    32854    pet    TABLE     �   CREATE TABLE public.pet (
    idanimal integer NOT NULL,
    nome character varying(20) NOT NULL,
    raca character varying(50) NOT NULL,
    idade integer,
    peso numeric,
    altura numeric,
    sexo "char",
    imagem bytea
);
    DROP TABLE public.pet;
       public         postgres    false            �            1259    32852    pet_idanimal_seq    SEQUENCE     �   CREATE SEQUENCE public.pet_idanimal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pet_idanimal_seq;
       public       postgres    false    197            �
           0    0    pet_idanimal_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pet_idanimal_seq OWNED BY public.pet.idanimal;
            public       postgres    false    196            n
           2604    32857    pet idanimal    DEFAULT     l   ALTER TABLE ONLY public.pet ALTER COLUMN idanimal SET DEFAULT nextval('public.pet_idanimal_seq'::regclass);
 ;   ALTER TABLE public.pet ALTER COLUMN idanimal DROP DEFAULT;
       public       postgres    false    196    197    197            �
          0    32854    pet 
   TABLE DATA               V   COPY public.pet (idanimal, nome, raca, idade, peso, altura, sexo, imagem) FROM stdin;
    public       postgres    false    197   �
       �
           0    0    pet_idanimal_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pet_idanimal_seq', 1, true);
            public       postgres    false    196            p
           2606    32862    pet pet_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.pet
    ADD CONSTRAINT pet_pkey PRIMARY KEY (idanimal);
 6   ALTER TABLE ONLY public.pet DROP CONSTRAINT pet_pkey;
       public         postgres    false    197            �
   *   x�3������H,�tJML�I�4�4�3c7�?�=... �j�     