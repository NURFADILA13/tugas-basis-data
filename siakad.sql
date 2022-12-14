PGDMP         .            
    z            siakad    14.5    14.5     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16402    siakad    DATABASE     i   CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE siakad;
                postgres    false            ?            1259    16411    dosen    TABLE     ?   CREATE TABLE public.dosen (
    nimdosen integer NOT NULL,
    namadosen character varying(30),
    alamatdosen character varying(30)
);
    DROP TABLE public.dosen;
       public         heap    postgres    false            ?            1259    16410    dosen_nimdosen_seq    SEQUENCE     ?   CREATE SEQUENCE public.dosen_nimdosen_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.dosen_nimdosen_seq;
       public          postgres    false    212            ?           0    0    dosen_nimdosen_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.dosen_nimdosen_seq OWNED BY public.dosen.nimdosen;
          public          postgres    false    211            ?            1259    16404 	   mahasiswa    TABLE     ~   CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(30)
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            ?            1259    16403    mahasiswa_nim_seq    SEQUENCE     ?   CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswa_nim_seq;
       public          postgres    false    210            ?           0    0    mahasiswa_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;
          public          postgres    false    209            b           2604    16414    dosen nimdosen    DEFAULT     p   ALTER TABLE ONLY public.dosen ALTER COLUMN nimdosen SET DEFAULT nextval('public.dosen_nimdosen_seq'::regclass);
 =   ALTER TABLE public.dosen ALTER COLUMN nimdosen DROP DEFAULT;
       public          postgres    false    211    212    212            a           2604    16407    mahasiswa nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    209    210    210            ?          0    16411    dosen 
   TABLE DATA           A   COPY public.dosen (nimdosen, namadosen, alamatdosen) FROM stdin;
    public          postgres    false    212   ?       ?          0    16404 	   mahasiswa 
   TABLE DATA           6   COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
    public          postgres    false    210   A       ?           0    0    dosen_nimdosen_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.dosen_nimdosen_seq', 1, false);
          public          postgres    false    211            ?           0    0    mahasiswa_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);
          public          postgres    false    209            f           2606    16416    dosen dosen_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_pkey PRIMARY KEY (nimdosen);
 :   ALTER TABLE ONLY public.dosen DROP CONSTRAINT dosen_pkey;
       public            postgres    false    212            d           2606    16409    mahasiswa mahasiswa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    210            ?   E   x?322?03??-?J????M?N,.N,?2	?qz$??EsK?J!b&????E????^?~?\1z\\\ ???      ?   Y   x?3224?0?t,?LK,)O??M?M??2?p:?d?*%&%%?e"ɘ[rz???%*??&?eJR??!??8=?JAbY?y?\1z\\\ ??E     