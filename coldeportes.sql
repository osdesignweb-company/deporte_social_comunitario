PGDMP     %    9                v            coldeportes    10.6    10.6 1    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16384    coldeportes    DATABASE     }   CREATE DATABASE coldeportes WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE coldeportes;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    13794    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16481    departamentos    TABLE     �   CREATE TABLE public.departamentos (
    id_departamento text NOT NULL,
    id_pais text NOT NULL,
    departamento text NOT NULL
);
 !   DROP TABLE public.departamentos;
       public         srvadmin    false    3            �           0    0    TABLE departamentos    COMMENT     d   COMMENT ON TABLE public.departamentos IS 'Tabla que contiene la información de los departamentos';
            public       srvadmin    false    201            �            1259    16452    directorio_personas	    TABLE     �   CREATE TABLE public."directorio_personas	" (
    id_directorio integer NOT NULL,
    id_persona bigint NOT NULL,
    imagen text,
    correo text,
    direccion text,
    celular numeric,
    "telefono fijo" numeric,
    extension numeric
);
 *   DROP TABLE public."directorio_personas	";
       public         srvadmin    false    3            �           0    0    TABLE "directorio_personas	"    COMMENT     t   COMMENT ON TABLE public."directorio_personas	" IS 'Tabla que contiene la información de contacto de las personas';
            public       srvadmin    false    198            �            1259    16450 &   directorio_personas	_id_directorio_seq    SEQUENCE     �   CREATE SEQUENCE public."directorio_personas	_id_directorio_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."directorio_personas	_id_directorio_seq";
       public       srvadmin    false    3    198            �           0    0 &   directorio_personas	_id_directorio_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."directorio_personas	_id_directorio_seq" OWNED BY public."directorio_personas	".id_directorio;
            public       srvadmin    false    197            �            1259    16489 	   municipio    TABLE     �   CREATE TABLE public.municipio (
    id_municipio text NOT NULL,
    id_departamento text NOT NULL,
    municipio text NOT NULL
);
    DROP TABLE public.municipio;
       public         srvadmin    false    3            �           0    0    TABLE municipio    COMMENT     i   COMMENT ON TABLE public.municipio IS 'Tabla que contiene la información de los municipios de Colombia';
            public       srvadmin    false    202            �            1259    16497    paises    TABLE     R   CREATE TABLE public.paises (
    id_pais text NOT NULL,
    pais text NOT NULL
);
    DROP TABLE public.paises;
       public         srvadmin    false    3            �           0    0    TABLE paises    COMMENT     R   COMMENT ON TABLE public.paises IS 'Tabla que contiene la información de paises';
            public       srvadmin    false    203            �            1259    16440    personas    TABLE     g  CREATE TABLE public.personas (
    id_persona bigint NOT NULL,
    tipo_documento smallint NOT NULL,
    nombre text NOT NULL,
    primer_apellido text NOT NULL,
    segundo_apellido text NOT NULL,
    fecha_nacimiento date NOT NULL,
    sexo smallint NOT NULL,
    creado timestamp with time zone DEFAULT now() NOT NULL,
    pais_nacimiento text NOT NULL
);
    DROP TABLE public.personas;
       public         srvadmin    false    3            �           0    0    TABLE personas    COMMENT     j   COMMENT ON TABLE public.personas IS 'Tabla que contiene la información de personas en la base de datos';
            public       srvadmin    false    196            �            1259    16463 	   usuarios	    TABLE     �   CREATE TABLE public."usuarios	" (
    id_usuarios integer NOT NULL,
    id_persona bigint NOT NULL,
    password text NOT NULL,
    rol text NOT NULL,
    activo boolean DEFAULT true NOT NULL
);
    DROP TABLE public."usuarios	";
       public         srvadmin    false    3            �           0    0    TABLE "usuarios	"    COMMENT     h   COMMENT ON TABLE public."usuarios	" IS 'Tabla que contiene la relación de personas, usuarios y roles';
            public       srvadmin    false    200            �            1259    16461    usuarios	_id_usuarios_seq    SEQUENCE     �   CREATE SEQUENCE public."usuarios	_id_usuarios_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."usuarios	_id_usuarios_seq";
       public       srvadmin    false    200    3            �           0    0    usuarios	_id_usuarios_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."usuarios	_id_usuarios_seq" OWNED BY public."usuarios	".id_usuarios;
            public       srvadmin    false    199            �           2604    16455 "   directorio_personas	 id_directorio    DEFAULT     �   ALTER TABLE ONLY public."directorio_personas	" ALTER COLUMN id_directorio SET DEFAULT nextval('public."directorio_personas	_id_directorio_seq"'::regclass);
 S   ALTER TABLE public."directorio_personas	" ALTER COLUMN id_directorio DROP DEFAULT;
       public       srvadmin    false    197    198    198            �           2604    16466    usuarios	 id_usuarios    DEFAULT     �   ALTER TABLE ONLY public."usuarios	" ALTER COLUMN id_usuarios SET DEFAULT nextval('public."usuarios	_id_usuarios_seq"'::regclass);
 F   ALTER TABLE public."usuarios	" ALTER COLUMN id_usuarios DROP DEFAULT;
       public       srvadmin    false    199    200    200            �          0    16481    departamentos 
   TABLE DATA               O   COPY public.departamentos (id_departamento, id_pais, departamento) FROM stdin;
    public       srvadmin    false    201   �6       �          0    16452    directorio_personas	 
   TABLE DATA               �   COPY public."directorio_personas	" (id_directorio, id_persona, imagen, correo, direccion, celular, "telefono fijo", extension) FROM stdin;
    public       srvadmin    false    198   �7       �          0    16489 	   municipio 
   TABLE DATA               M   COPY public.municipio (id_municipio, id_departamento, municipio) FROM stdin;
    public       srvadmin    false    202   �7       �          0    16497    paises 
   TABLE DATA               /   COPY public.paises (id_pais, pais) FROM stdin;
    public       srvadmin    false    203   :\       �          0    16440    personas 
   TABLE DATA               �   COPY public.personas (id_persona, tipo_documento, nombre, primer_apellido, segundo_apellido, fecha_nacimiento, sexo, creado, pais_nacimiento) FROM stdin;
    public       srvadmin    false    196   �c       �          0    16463 	   usuarios	 
   TABLE DATA               U   COPY public."usuarios	" (id_usuarios, id_persona, password, rol, activo) FROM stdin;
    public       srvadmin    false    200   �c       �           0    0 &   directorio_personas	_id_directorio_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."directorio_personas	_id_directorio_seq"', 1, false);
            public       srvadmin    false    197            �           0    0    usuarios	_id_usuarios_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."usuarios	_id_usuarios_seq"', 1, true);
            public       srvadmin    false    199            �           2606    16488     departamentos departamentos_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (id_departamento);
 J   ALTER TABLE ONLY public.departamentos DROP CONSTRAINT departamentos_pkey;
       public         srvadmin    false    201            �           2606    16460 .   directorio_personas	 directorio_personas	_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public."directorio_personas	"
    ADD CONSTRAINT "directorio_personas	_pkey" PRIMARY KEY (id_directorio);
 \   ALTER TABLE ONLY public."directorio_personas	" DROP CONSTRAINT "directorio_personas	_pkey";
       public         srvadmin    false    198                       2606    16496    municipio municipio_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT municipio_pkey PRIMARY KEY (id_municipio);
 B   ALTER TABLE ONLY public.municipio DROP CONSTRAINT municipio_pkey;
       public         srvadmin    false    202                       2606    16504    paises paises_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.paises
    ADD CONSTRAINT paises_pkey PRIMARY KEY (id_pais);
 <   ALTER TABLE ONLY public.paises DROP CONSTRAINT paises_pkey;
       public         srvadmin    false    203            �           2606    16448    personas personas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.personas
    ADD CONSTRAINT personas_pkey PRIMARY KEY (id_persona);
 @   ALTER TABLE ONLY public.personas DROP CONSTRAINT personas_pkey;
       public         srvadmin    false    196            �           2606    16472    usuarios	 usuarios	_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."usuarios	"
    ADD CONSTRAINT "usuarios	_pkey" PRIMARY KEY (id_usuarios);
 F   ALTER TABLE ONLY public."usuarios	" DROP CONSTRAINT "usuarios	_pkey";
       public         srvadmin    false    200            �           1259    16539    fki_FK_id_departamento    INDEX     Y   CREATE INDEX "fki_FK_id_departamento" ON public.municipio USING btree (id_departamento);
 ,   DROP INDEX public."fki_FK_id_departamento";
       public         srvadmin    false    202            �           1259    16516    fki_FK_id_pais    INDEX     P   CREATE INDEX "fki_FK_id_pais" ON public.personas USING btree (pais_nacimiento);
 $   DROP INDEX public."fki_FK_id_pais";
       public         srvadmin    false    196            �           1259    16533    fki_FK_id_pais_departamentos    INDEX     [   CREATE INDEX "fki_FK_id_pais_departamentos" ON public.departamentos USING btree (id_pais);
 2   DROP INDEX public."fki_FK_id_pais_departamentos";
       public         srvadmin    false    201            �           1259    16522    fki_FK_id_persona    INDEX     \   CREATE INDEX "fki_FK_id_persona" ON public."directorio_personas	" USING btree (id_persona);
 '   DROP INDEX public."fki_FK_id_persona";
       public         srvadmin    false    198            �           1259    16510    fki_FK_id_personas    INDEX     R   CREATE INDEX "fki_FK_id_personas" ON public."usuarios	" USING btree (id_persona);
 (   DROP INDEX public."fki_FK_id_personas";
       public         srvadmin    false    200                       2606    16534    municipio FK_id_departamento    FK CONSTRAINT     �   ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT "FK_id_departamento" FOREIGN KEY (id_departamento) REFERENCES public.departamentos(id_departamento);
 H   ALTER TABLE ONLY public.municipio DROP CONSTRAINT "FK_id_departamento";
       public       srvadmin    false    202    201    3581                       2606    16511    personas FK_id_pais    FK CONSTRAINT     �   ALTER TABLE ONLY public.personas
    ADD CONSTRAINT "FK_id_pais" FOREIGN KEY (pais_nacimiento) REFERENCES public.paises(id_pais);
 ?   ALTER TABLE ONLY public.personas DROP CONSTRAINT "FK_id_pais";
       public       srvadmin    false    203    3587    196                       2606    16517 "   directorio_personas	 FK_id_persona    FK CONSTRAINT     �   ALTER TABLE ONLY public."directorio_personas	"
    ADD CONSTRAINT "FK_id_persona" FOREIGN KEY (id_persona) REFERENCES public.personas(id_persona);
 P   ALTER TABLE ONLY public."directorio_personas	" DROP CONSTRAINT "FK_id_persona";
       public       srvadmin    false    3573    198    196                       2606    16505    usuarios	 FK_id_personas    FK CONSTRAINT     �   ALTER TABLE ONLY public."usuarios	"
    ADD CONSTRAINT "FK_id_personas" FOREIGN KEY (id_persona) REFERENCES public.personas(id_persona);
 F   ALTER TABLE ONLY public."usuarios	" DROP CONSTRAINT "FK_id_personas";
       public       srvadmin    false    3573    200    196            �   >  x�EQIn�0<���� v���H��B�Y2����1��>I+-��MCj�3�=��x@��E�p�LzPQ8��\��Ʌ�x��Q�~/E�^z�ۂ�(��>C�F�
�P�-��wǂ�@hN�J2ˊ�㥻P�eE�R[\�=;�gv7Gm��VS����$eZ��@�&�-z���̶�UIU���Ry��-�|8��&�{B�8�?��)k^A����^z&oh�>�T���s�`F%7�$����kq����\ɋY_uz�\�\���+�Eq�Og�
#ǣ�h�^c��7���b,^3���i1#E�:�/�Հ�      �      x������ � �      �      x�]|Kr㺖m��Qx �n�_�MJ�e:(R�]eǛL6�q�;qg����j}@Zy#2#�@|7���������q���v�n��	���}��vT������/B�>l����㯖`qxm/���D��h�3��Edm���_�i�ƄN�}��n�v�iv祆���}}�|9w/����������2U����=?~�<��8��c�\k�X�H��v�� �ȯQ�?võ�0cL�0�l2��6��	X�G��?��=�`0��>�YA5���=���e��]��ޟ��Y�Uq�fM"�5�S����*o�V���zk1���x�O����2ͩ�������TmЕ+/($���V[��r��qg>��d6ʪC���U�J�YO��%	����P&oW���~�y���;��y�b���x�n���k�l �����O���[�"������р�?O�˵����gn&쎏����+�{>������Z-ae�n�{�5�kc��ծ�Qcx��I�<�F&���:��sggq���/2�y��v_/��M�8�2crgڷ�
rXo����y�����?�xg�pNi�E�������5���^�^tfz���y�c�.E���;p�����о� I�C��8����<M�<l�:��.3�?���`�Oĵ=uO�=��(��tYk�W�|���2�+��,XzT��~�!@�1�%��C;0��K�T	y]��OC�Ɏ1Z�7�Ata��+�������8@��*� ��}z9��	���A�˟��~_Y��4�;H}�hmq3w�~Vsx�.F�h��#3@Jr�Ż�N�Wo�y�H���"�i��%�	#���Vra�p�M�����q�5���7��﯆�O����J��{��LV�^9jk�0ˆU��6��ugϾ�~���x�Oqn_ێ[Y���y�v�ao���&pؽ}�xf(��o�e����i���������Ֆ��E,���kإ�L:�!��4�i��e�u���CPԠ���nъwy�ྴh�����h1{�f���x=f��_%��%*��Q��kx��8ь���P���d_�G�x���{�?�K��X�|>:�:t� {�oX���火}h>[���y�J]EO�s��QR Z�NI*D��/��2�؈��"�0.�ɘx1�0ad\�(=<%~=��K��%��p�8��75��,�2'��2��EĢ��a�ז'&�EA �i�G���j@E"�qk�Dik�����DI?�s���4XiӸvl���1�Ĺ��QP�I䜴r�B}P�0h�D�tc�(TV�Nh�F���5�qL�aXO���;
�6]?��1x��=��-�}�^��c�4WX���e�q�H��e�!����?N��3+�^��:hB5!3H��$�����xtyQ�gь�U��'�T'z�>�7�>�� hf:�Q�#�g��c��B���%��<�9J�?�'�4}H?~��P3ynd�*y^ ���7n7LYS1l��Z�7���{�Xbo��yܥW�����jÈP�:���ҁP� b�c�.�R��ݧ�_�PY'�z{�R��=�
u�z�7}��#���(�X2���]��ĉמ�-8\#b�0�.���u��R�%6l�ehU���v��z������ԏw�տ�b(�*�{���t]�V�m�b�p�ǧ�jJ���(>��>>^'X�2΁�'��,,��iX��%
f���Lײ3%���b�<���E/mz�0���!5��X�tQg�'qh���?(g���"����LNnF�3�k��$!��,�� =�U��!��$����S%����#i2��ة��M�?�?�J�o&L����4��҇#P�="����_�Y������<;ҕih��n��Z ZkP�{:ÙܫL�ո�)�	����fw	^N�� ���j'�F�����D48d?aJ��K )ՠ�$��u�H7���+�h����?���I����	I��,ʹy�f����2���cR��:���P�Y��~
�	�[/˽��pΰ�:i���+���ۘ72��+><�6ΕӴ)�g�ׁ+R���u^�"�򙖾�d/�1^@�-��xQ��wXJ��	}���7Tehy��6%��E�쳵7�8��}ƀ���Oso�H����<�IXI��S;Sz���Z)�J"ߞڍ¤*+��{I�����[t����n��]�T龝���_\���L�鸨�QS�h����铩?�ծ<14:�޸H8�n���O�c|{��D֮��\M�S�q$�w�FK�OUEjtM&?MS_\Yy� ���n9�N�q����o7rK�W�N��Ǡ2[�`��zuk/����Zu���2��N�������k����GNC���U��s�d�]��2�!����˻����e�.KpĤ+�*��{g��!h c|�t�e��L����|�~�W�%�L�_7�x�q"��F7����a�w+/���B�����ar�ߠtlJ׃��6��ʵ�ĉ�e�N������1	�c-A'Pȕ��ɐ�mҶ�:uqo�c҆���-�@��J��3���qCR�B��ŝ7���Fk�{��>�z�%@�E��Ȝ ��*���'�]��O����-�wk�����}���d+����΅=r��5+?WP���(k��Ӹn�/z��re���Gbh,$���w�Ҧ�W�-@� �&Й�D��>�Z���C ��@Q  �D�Z�Ф4l�k�E;?d�� ;��9� %��F�+%|�*��0�5z@1A�n>ug@��5ү��)�����8���2X	���:�+,<�_FAc�U`���4;���ʋ 1{��*W�7.�]�m`��P7.��a��@��]O4A��F����"T�����۪�����.�d�@U
h�鼇X��֕A�l�f�d	�T-I��'����C�j����X1Y�6����8\��8|�=Y�o�O6�A��u��HƜ�q��sfx=�U�@h��:;�������cY���@,�LW-0$i:�Q�:3�}�,���飄^|�%��GsTo�71�*�T����IY��m��MШj�����W@�4O�f�(*p���ך�
�Ns�eF`�s'z�&+���w��&!�ȀuP�	�xDY�Mc���6��&��Ҩ�'i
��[7����z����۷h���&ہ�`S4�;���<��&$�C�}S�M��ѼiJ/� ��\�#q:̍|���7otx��ن%�`@�VEn���ݷ
)��=\5�ʝl���]��a�\05W��fSgs(R�xl���a�����;b����q���\��77�� l�'r�iT���b���Ym�&�
���x�1�$s�����@9���� i!b�Fm}�4��y�a����@,֊eR5싡E��tn��z�`KX���D'��݉W`L�ȴ�*)?@ A�W��4����������ʨ�y*�#�u�D�CBn�4j�BI:�m^����VPԌ��A2��ᐠw�����@Ba�����ؓ�w�`�S�,D<�[�+����p^|���f�*�ĸ�,0�Rװ�AX7'Ñ�K���s�]�J��Q#��e"1W�2O�2�@�� a�2iHf�O�`(�"�-�ʁ0�@g��sC@�p7�g.y���ߢլ� 0��I+N�2(��(*X�t]O��:�̱�����\Cji~W2]A_p�.$�j /*�x���&~���m�V:�v��v�1*�eB)H:��?�$�J��;�2rȢ�EX����uz89�h`���#����2ʆ�X�c��Uvd4!�"m��
�jX���(짊�H�&(vr�(���A+�(z�B�X�䊷��ߎ�.�r�v;R����Lzlo��EiB��5�+Q{H�9W�E�8�/��4j&���j\� >�ư}�\	9cfǙ�
`]� Bj#�}��E�����	`Uf�K�T��-��� ZYR�sɼ�_�ʐ�d%)���MQ5 �ͿM�h��3�k\��s�$K�<���
��
�    �{9�~�^%D��}��	�B���C¨�!Z�ז�bG� �S�6U�A�N�;��:���I�����G�o��@B,�ŭ6��f���V;�v�o�V��.-�w��Tqpyʜ ;*�N��c˫d"����AOj�|Q�̀�TxQ�3!L��!�|�}���k`,�#�p!}a�
s��<��s�{7cy4��u�1T�.OA���\x��-�2��7��ey^��<!��r��t�}%�,=ӫ�K�����ܟE�
c*V?�8E��uZО[����
ja��ɼX�k�~pycꚄw���ja�����&��d�*o��'��=�w��V��7!�����+|&x[п�M����S����v= �-pǭXd�!v^�m��VF���'� ��*@Aa����4[�MO�d�r�d��Ѹ�ߙ��|��KgY/K�␥�������t�bj����� `s��x2�	!��X�.|���t�9ҒhY�[4�wdY;�P����\��>҉S
F��a�ۣ�b��K-l��h�I�;�ƃ?�$yU@ $��-�>��ZE��D��C���a�P�TX鐩F�%�ӎ^�=����R�XsWR߫n��z�}��+%�aᵫ��&���!ۻpʙ��~o�uP�UQK�h���Oބ�5�la��qˡ/��R^�/�AE&rE���rd�� o�l'�00�ݮdu����g�@s���M��� U�K
��ݖ�rXAFM��{7Њ=@�}!�_����ߍ� ȸndQ�"�{��<0�B��X�V�:�~!�O%w�(�Bz�����
������6�4�2�j�5�M{��ݑ����QVO�S�������ZPA:�e��v��r��%l�a�e�j����r�
J��j�	���4�����"��A�2B
S�b�J%����oI�$�S���& X6�v��֑��@j�@��0��h��� ¬�O�iк
gFi���xO�R�D�Ԩ�Q38�:}%�I��
`y�@K�@z��<R�#ˤU�/��
�^�|�F�P�6uB�yZfT�\��&� ��O`��5o2���	��K���	�XR?��i��'�I�I��M���G�ѓI@3B�p`��h�21��:��W8�7�[��C�Q�wF�{�Z�;���w�� �2���ik7�v��b A;-��d�A�쓎�]Y�K���� [� w��2��%�u@���2�F Xp�ON�.K�$���\���a����N#�:�,��D�=����S��p�PV��ةe]���v��,���Ɍ�P�"�c& �le�}ӫ�*C |o O���A�w�.�à
�0����F�����rR-���䈕��j�a+K�dR�(�Me	`|H! �ex�5/%����p1a�ݫV�H�� �SEAp��mگ��-0f]��ˠk��esdJ�k���8��] íg�)HN=²ʕ�\�\y���Y;⤧�Zu�n�	e�s����Ы��ʥ��a��S\U7��q�G��j}u�!� m�-9xq�C[
�.�"/�X���^0����
����զ�?�hd�n6�j�p�.��{b�c\�}��ru��M�a��A���Z�����6���.np^+3υE�Z��F�m0�������U��jU`8$P�u��%���E�9��Q�g�̀�suz�����B�����Z���ڞ��HЃ�Q���te>$JkW��=�t;RS��J.mw�����px�����yn_�]����Y�nB��}ДZ �<�*-��=�/cTT?QMl6p��V��%v�;m��b��^&��9�"g���<��n��t@sTM�����5��K������Ϸ��*���.L��r�K 弐�ǅ2��`�7<���Жc
��dm��z�fV�.�.��V*��K��~`%�W��GX�	J�(�	ڒo�ń��l��$�Yb���wh@�F��q����zҘ2�!릊`������UE����������Ӵw�M�F���3-K o�z�e��Q�ƚC���4	H�c�~��ɤ����7�ܹo�y����_=�2�KjAs��8L��H�8 M�^^���18C�)t���{���
�Ef>�9��v���Rx	hd����@t�WϹ�Xy�n�〈 �c*@r�LI���{otͯ�@>B3yG����l!6T��_����**wh{g�[z�֩����f��/����OM3D}{��\�ѐ��<��y�I�ݡdtԘ{�ڊئՌ�,��U)j󟕌Vp�����90
����R���e�B������X�b�V�6\� F�S��t70\O�k"JY�j�p4v׳Ԫ�OEd?�):��l�����!"t��Ls@�|�P�[<$讫FFF��|�gUJ��ԥW��w�J�Z��[�>�"����V�����u�K���uJ�!�Ą�t��7n��s|k�|��ִ�:٥�i�m8l�>sC���������G
@���ku�Js�#��N�%�U����W��bU�d��%�*v�����d����$иU��:e�23���0�H�4m�� ��d�\��'��t�蠽s�$�L�ǎ=��u�Z���2O�,0E��j�'��>e,�z�Q?�� �0�j<�Nqr���>��"V4U���u��{uA�����V$dH^A�/uQ{</���#�\É��c |���
2�L/�!IH�	GP峫�qB�Y�A��(mI���Q�$)=%��5�B#�|�G��@�O�^��
%"�����Ay�w��� r�5�=����y
��DM>
T�B?���{��2	J n@�m�θ#����� T���L<��]��9�&̅��,Ar�J��� ���:fiP[��\�v�	����4{T|�-�q����*�#_B(�5�Sw��-�U��q�7��ḇT�ِ�z
�i��I���y �;��P����>=�&�$�a$�½o��Y�z��tf������51X^~�Ҹ�0�[�u�V�CB��Qb[MJ߄ե0��Q���F/���-����H�#�V!+-C#���$�h�����:]��=�\E? i^����t�����4��n�[}����A�� 0D�V'����{�bf��:{�����s���Y��8�XQ��A���1��A�:�1}�iQ����a�:����V`f������p�8�q)K ޚ+3�B�'s���֌���9e�����_ �n&>��5Mah��N� s�gq"��X��� � ���ܝV=���R d���a/}�O|'Q��e��N���B���g?��4]�J���������7ɺC��SJ
Awg�v���^��sL�[���G��7�RO�D@��[����'y>��pH���"n�7��[�+�9����l�@�2��΋<<ў���@�T<�C�坖(7���- �T`��:����C#-�P��w�)�	�Qs�NI���0¥g>.�wP�	Г�i
�+Q��__����C���/��<3��|��H�vi��`(�:��ri`PX[�oP�'��Q@8քd�W�c1a�!zm`��c�ΰ���0�wug�tj �J.�T9�D���m_��g`�[���t+���~A�Y�a�8�Ν��a�� @����&�{ൢ�N��>�4Z۵>��S�3���i�щ�,�Z �d>;���:��jC|1w�W�E ���S��Q�a�~��hg}�$}���]��9WY��`^
�/'o0�h��� ^z)��dAboΠ��]"4��tL���sb@��t!�<�!X�#d z��&��|��=�Դ^6 DM����Wd���d����L���9����/�Lt��q ��4 �̀3x���M�L��k��е����{ %}�KZ������\�C0�A�]y�T*:�JrNr�	�Vӷ��%)���>�R�=�BC_�{4@��>�6[$���Q>Z!4��1J��A� /  �aOaԽJP�b��AY�a{`܃o:ng�vn�ѡ�D���쪽�^E���!g7џK�nQ֠��:+�3���1F[�~ϐ�f���H�J�C �̌鉍�xKR
M�B�g vC�H#Dڍ�u4Ss6������Ņ�?�oA���@�%���O����m"W������|��9�jIvxkJ�Y�����x��	Cw�>� 0��`�!agp�n��� xK�y?j�4^=q�D��ZCȚU�@�FL7�>&'_z]�K�g����-*�F�½��PW�[i��Q�Dtj�p� ��!���ϧ?Z�yb,��VK����曥��d���?����3Ҩ��B�a�1u�R}�~t�N  q�G�n�� >�;���@?W��I���v�ڏJw��	n���O���J,�����O#� �J4s�v��ށ���D޳�du6��G^�_юR�#Y���T�2��_��� ���IG�� �$/����(yq�j��@ԋ��~�	���4��Ը�� �Bݣ�Ul�/}��i-�$s�c�C�
�j�N6�V��_M��9����IE=ݎ��_e�#�(-����mdlT@�_��Z*��Պ�z�CW�z�"�d��A2����w�Q�_a�P���v��Eh�n?4<dO�e���V$^:&�|Q���-���q��O"PO����C�a��O �>$�Q@:�xS�e�Z"�W�R�R~LT'��ؠ"d����F�=t�� �����d�����Fy0p�|�A0$�" a�%c�XX��{����)I�Q*L�%%�;YP?Hs5|Z��n�/MF7���6o����7e�7���\�8+�MY@4��o���`^����/�!�2Fa�}���P�Jb���@,�X��7{|�hMH�F�HPtO�~���0C%������⃏�O�����/���8g]L3,�F)��o�0�(����h�7H��4��[�4�7|Y�#�@��$���)��}�����J��ϖ�93a�:l��3��5$4zbw��ŕ��4���� �h�WZ@!�����/@&m      �   <  x�e�K�����)��f��[ZRK�JIT�b�Tb��ofg�'�y������9�o� )F�0/y���Ym�jK/y��e@U������4�r�>e�0��'���j�г��s�'Cp7��Myo��e��sx��ls�Y������Ae�٠�&����
�]ٴM�+�^jV;5�y&s���1�z�;6e��)j�8}mqjQ���nP�]�o�dPW�����N�q�E��+j���de{�2���Nd3��ҳ]�� X��b'k"�ٸ�������U���9�.�έ����?�������~��_�G"?8�dpʛ�Ϲ�i�Mr�W�Z�<��/�� �Z�m2Ȕ+H�sJ8��fw�&���x���*~
3�u��*C�E���#o�������l�7��;�����v�� whK��rid�l)�wb�����]<N�l�K�Ywp1�����"� +��ĽI��isR����Y5ʧ{�!P-.컪)-��x5�F�E"�E�%�2�;-���~A7��X��B���EY'�]�f��'z ���ֳ��X$rc�ܟ�2����\%z5N�g�a����RA�����)����շ`DmO5�`A4�鏽u.&�t�>�ݣ�'o�Y�JtѴ	i3;��9�&�%��:ysj���~$���H��U��us��d�
F�2P��`���N��@yvZ�+��=^�*/l'sj	�NK�mEhE8`X�,j���D.F�c��f#�%\s���ᰀ~�Z=�?��X��9i	����N�v��@�$�(sv�W�fi���s�Yp�m�G�O��--���� �}�s#h7�)��&����Jx�X	�J���v�]��w�ȼեInʫ�H�U~In8�gZ���湮Ln� Ӫ�$� �ho��E�O�T�p�ڸ"o��Es'�H�z1z�z��a�s��$q	�����+���Q�ԉ���3�mR��# �ȯT��G_�B!׈��S���D�
���'ӬBp@����/���e�$G8��R��9�8�����0ܶ�N�8�ҫ�Ōxz�0P�Y�
�Y�2�{T8P�l�J'�bO��f�g�a�s�!��-h�6�Sb�k�|��!�����&��!6��r��;��j�Y;���R���&dEn��r��҉%��ڂ�+�y֩����Fe���k5�<}B��e�j��x�$V�G�4�v8�M2X3ve<L7�w8��9��W\��	ۺ�P^\U3�w%̋(c�(}�kIW_Əe�9^�3裝r�b}猆��Cl��`�LR��+�âw�7%<֐V���ش������'c<.�2o2s �V��yգ��l��!�9�S��Jy�uPÇN�G8�\\�B�sC�������f*�����Tf��L\K����Z-;��Q:{D���lܲё|;��g�f�]{\mtI�A���]Oβj呦I%�󈻑lh\r����ti�Ѭ�7ۼ~�K�����f�]e��G�<hI�כ��`��O��@`�b���E[9B�f�A�C�Ph���﹏c��˱v����H���Dk�k-��1�A>�	��B�E�N<G�M�\&<��I�-��d~7OP�������>b�[� �Ded��l8�h����!�L�m���>��N;jtX���&��ѡ!�r1�$��W�4K�e-�?����YG���YEC	iv��<�cD�G�]�Q�#��iW^�0�YW�	�%�� �-�mGG�Ǡ��� � N,d$܍>$������O2Ⱦ�R��W4�����U��ͼ�����`$�7a ��Q�OMpiG�<�wNG<�V�� ��2��M���4M�JP�      �   ]   x��=
�0�9=�H��ں�\]"��������ATc�L�i[�y�h��Z�F;m�����%�J}*��nP�6��t��X"!7{��8�      �   )   x�3�440412253��442615�tL����,����� mr�     