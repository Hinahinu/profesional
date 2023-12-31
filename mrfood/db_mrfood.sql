PGDMP     +    #                {         	   db_mrfood    14.9    14.9                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    16431 	   db_mrfood    DATABASE     i   CREATE DATABASE db_mrfood WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE db_mrfood;
                postgres    false            �            1259    32939    comment    TABLE     �   CREATE TABLE public.comment (
    id integer NOT NULL,
    id_user integer NOT NULL,
    id_recipe integer NOT NULL,
    comment text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.comment;
       public         heap    postgres    false            �            1259    32938    comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.comment_id_seq;
       public          postgres    false    214                       0    0    comment_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.comment_id_seq OWNED BY public.comment.id;
          public          postgres    false    213            �            1259    32925    recipe    TABLE     �   CREATE TABLE public.recipe (
    id integer NOT NULL,
    id_user integer NOT NULL,
    tittle text NOT NULL,
    descriptions text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.recipe;
       public         heap    postgres    false            �            1259    32924    recipe_id_seq    SEQUENCE     �   CREATE SEQUENCE public.recipe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.recipe_id_seq;
       public          postgres    false    212                       0    0    recipe_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.recipe_id_seq OWNED BY public.recipe.id;
          public          postgres    false    211            �            1259    32914    user    TABLE     �   CREATE TABLE public."user" (
    id integer NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    32912    user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    210                       0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public          postgres    false    209            h           2604    32942 
   comment id    DEFAULT     h   ALTER TABLE ONLY public.comment ALTER COLUMN id SET DEFAULT nextval('public.comment_id_seq'::regclass);
 9   ALTER TABLE public.comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            g           2604    32928 	   recipe id    DEFAULT     f   ALTER TABLE ONLY public.recipe ALTER COLUMN id SET DEFAULT nextval('public.recipe_id_seq'::regclass);
 8   ALTER TABLE public.recipe ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            f           2604    32917    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210                      0    32939    comment 
   TABLE DATA           \   COPY public.comment (id, id_user, id_recipe, comment, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    214   �                 0    32925    recipe 
   TABLE DATA           ]   COPY public.recipe (id, id_user, tittle, descriptions, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    212   t                   0    32914    user 
   TABLE DATA           O   COPY public."user" (id, email, password, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    210   L!                  0    0    comment_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.comment_id_seq', 7, true);
          public          postgres    false    213                       0    0    recipe_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.recipe_id_seq', 8, true);
          public          postgres    false    211                       0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 5, true);
          public          postgres    false    209            p           2606    32946    comment comment_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.comment DROP CONSTRAINT comment_pkey;
       public            postgres    false    214            n           2606    32932    recipe recipe_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT recipe_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.recipe DROP CONSTRAINT recipe_pkey;
       public            postgres    false    212            j           2606    32923    user user_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_email_key;
       public            postgres    false    210            l           2606    32921    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    210            s           2606    32952    comment comment_id_recipe_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_id_recipe_fkey FOREIGN KEY (id_recipe) REFERENCES public.recipe(id);
 H   ALTER TABLE ONLY public.comment DROP CONSTRAINT comment_id_recipe_fkey;
       public          postgres    false    3182    212    214            r           2606    32947    comment comment_id_user_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_id_user_fkey FOREIGN KEY (id_user) REFERENCES public."user"(id);
 F   ALTER TABLE ONLY public.comment DROP CONSTRAINT comment_id_user_fkey;
       public          postgres    false    3180    210    214            q           2606    32933    recipe recipe_id_user_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT recipe_id_user_fkey FOREIGN KEY (id_user) REFERENCES public."user"(id);
 D   ALTER TABLE ONLY public.recipe DROP CONSTRAINT recipe_id_user_fkey;
       public          postgres    false    212    3180    210               �   x����
� �>���q����ˤ�I(J�B���R�HO����1��i��Hw1S�im7y
�J�Gq%�=���<���Ե4P`
�.�)
gg�4�:@�'⚩x��He|E�����@C����ԙ@D��������Y��u��#�?�̼�4��v�%<�{�3qɾ6^i�n}O�s���+         �   x�}���0E��W�74�)����n�`�J������Ҹ�'97s���{VS�&����H���ris��p��z'���P~=��%��ȃN��kLT�/�
+�-uMP�N6��ش~A|�{����
6����/���<����f��Im�B�ǒ�}ˎ���1g�[���O:����;��ia�k����?����          v   x�}̻
�0���z��!B��kʃt1)���S1Y�	�c�ʕ�廧\p=�������(��hALjԁ���R���j���lSDayК	���#7X���F�~��d�F�����)6�     