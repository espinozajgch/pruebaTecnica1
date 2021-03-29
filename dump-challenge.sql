--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.2

-- Started on 2021-03-28 22:09:24

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

SET default_table_access_method = heap;

--
-- TOC entry 201 (class 1259 OID 17122)
-- Name: caracteristicas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.caracteristicas (
    id integer NOT NULL,
    caracteristica character varying(20) NOT NULL,
    valor character varying(20) NOT NULL
);


ALTER TABLE public.caracteristicas OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 17120)
-- Name: caracteristicas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.caracteristicas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.caracteristicas_id_seq OWNER TO postgres;

--
-- TOC entry 3049 (class 0 OID 0)
-- Dependencies: 200
-- Name: caracteristicas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.caracteristicas_id_seq OWNED BY public.caracteristicas.id;


--
-- TOC entry 204 (class 1259 OID 17132)
-- Name: caracteristicas_vehiculo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.caracteristicas_vehiculo (
    id_vehiculo integer NOT NULL,
    id_caracteristica integer NOT NULL
);


ALTER TABLE public.caracteristicas_vehiculo OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 17130)
-- Name: caracteristicas_vehiculo_id_caracteristica_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.caracteristicas_vehiculo_id_caracteristica_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.caracteristicas_vehiculo_id_caracteristica_seq OWNER TO postgres;

--
-- TOC entry 3050 (class 0 OID 0)
-- Dependencies: 203
-- Name: caracteristicas_vehiculo_id_caracteristica_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.caracteristicas_vehiculo_id_caracteristica_seq OWNED BY public.caracteristicas_vehiculo.id_caracteristica;


--
-- TOC entry 202 (class 1259 OID 17128)
-- Name: caracteristicas_vehiculo_id_vehiculo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.caracteristicas_vehiculo_id_vehiculo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.caracteristicas_vehiculo_id_vehiculo_seq OWNER TO postgres;

--
-- TOC entry 3051 (class 0 OID 0)
-- Dependencies: 202
-- Name: caracteristicas_vehiculo_id_vehiculo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.caracteristicas_vehiculo_id_vehiculo_seq OWNED BY public.caracteristicas_vehiculo.id_vehiculo;


--
-- TOC entry 208 (class 1259 OID 17198)
-- Name: mantenciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mantenciones (
    id integer NOT NULL,
    descripcion character varying(200),
    fecha timestamp without time zone DEFAULT now()
);


ALTER TABLE public.mantenciones OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 17213)
-- Name: mantenciones_historial_vehiculo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mantenciones_historial_vehiculo (
    id_vehiculo integer NOT NULL,
    id_mantenciones_historial integer NOT NULL
);


ALTER TABLE public.mantenciones_historial_vehiculo OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 17211)
-- Name: mantenciones_historial_vehiculo_id_mantenciones_historial_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mantenciones_historial_vehiculo_id_mantenciones_historial_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mantenciones_historial_vehiculo_id_mantenciones_historial_seq OWNER TO postgres;

--
-- TOC entry 3052 (class 0 OID 0)
-- Dependencies: 210
-- Name: mantenciones_historial_vehiculo_id_mantenciones_historial_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mantenciones_historial_vehiculo_id_mantenciones_historial_seq OWNED BY public.mantenciones_historial_vehiculo.id_mantenciones_historial;


--
-- TOC entry 209 (class 1259 OID 17209)
-- Name: mantenciones_historial_vehiculo_id_vehiculo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mantenciones_historial_vehiculo_id_vehiculo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mantenciones_historial_vehiculo_id_vehiculo_seq OWNER TO postgres;

--
-- TOC entry 3053 (class 0 OID 0)
-- Dependencies: 209
-- Name: mantenciones_historial_vehiculo_id_vehiculo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mantenciones_historial_vehiculo_id_vehiculo_seq OWNED BY public.mantenciones_historial_vehiculo.id_vehiculo;


--
-- TOC entry 207 (class 1259 OID 17196)
-- Name: mantenciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mantenciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mantenciones_id_seq OWNER TO postgres;

--
-- TOC entry 3054 (class 0 OID 0)
-- Dependencies: 207
-- Name: mantenciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mantenciones_id_seq OWNED BY public.mantenciones.id;


--
-- TOC entry 206 (class 1259 OID 17164)
-- Name: vehiculo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vehiculo (
    id integer NOT NULL,
    "año" character varying(4),
    cilindrada character varying(10),
    descripcion character varying(20),
    kilometraje double precision,
    marca character varying(20),
    modelo character varying(20),
    patente character varying(15) NOT NULL
);


ALTER TABLE public.vehiculo OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 17162)
-- Name: vehiculo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vehiculo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vehiculo_id_seq OWNER TO postgres;

--
-- TOC entry 3055 (class 0 OID 0)
-- Dependencies: 205
-- Name: vehiculo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vehiculo_id_seq OWNED BY public.vehiculo.id;


--
-- TOC entry 2878 (class 2604 OID 17125)
-- Name: caracteristicas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caracteristicas ALTER COLUMN id SET DEFAULT nextval('public.caracteristicas_id_seq'::regclass);


--
-- TOC entry 2879 (class 2604 OID 17135)
-- Name: caracteristicas_vehiculo id_vehiculo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caracteristicas_vehiculo ALTER COLUMN id_vehiculo SET DEFAULT nextval('public.caracteristicas_vehiculo_id_vehiculo_seq'::regclass);


--
-- TOC entry 2880 (class 2604 OID 17136)
-- Name: caracteristicas_vehiculo id_caracteristica; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caracteristicas_vehiculo ALTER COLUMN id_caracteristica SET DEFAULT nextval('public.caracteristicas_vehiculo_id_caracteristica_seq'::regclass);


--
-- TOC entry 2882 (class 2604 OID 17201)
-- Name: mantenciones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mantenciones ALTER COLUMN id SET DEFAULT nextval('public.mantenciones_id_seq'::regclass);


--
-- TOC entry 2884 (class 2604 OID 17216)
-- Name: mantenciones_historial_vehiculo id_vehiculo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mantenciones_historial_vehiculo ALTER COLUMN id_vehiculo SET DEFAULT nextval('public.mantenciones_historial_vehiculo_id_vehiculo_seq'::regclass);


--
-- TOC entry 2885 (class 2604 OID 17217)
-- Name: mantenciones_historial_vehiculo id_mantenciones_historial; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mantenciones_historial_vehiculo ALTER COLUMN id_mantenciones_historial SET DEFAULT nextval('public.mantenciones_historial_vehiculo_id_mantenciones_historial_seq'::regclass);


--
-- TOC entry 2881 (class 2604 OID 17167)
-- Name: vehiculo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehiculo ALTER COLUMN id SET DEFAULT nextval('public.vehiculo_id_seq'::regclass);


--
-- TOC entry 3033 (class 0 OID 17122)
-- Dependencies: 201
-- Data for Name: caracteristicas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.caracteristicas (id, caracteristica, valor) FROM stdin;
1	Tipo	Sedan
2	Numero de puertas	4
6	Cantidad de Ejes	2
7	Numero de puertas	4
9	Capacidad Toneladas	1
10	Capacidad Toneladas	4
11	Capacidad Toneladas	4
12	Tipo	Sedan
13	Cantidad de Ejes	4
14	Tipo	3/4
\.


--
-- TOC entry 3036 (class 0 OID 17132)
-- Dependencies: 204
-- Data for Name: caracteristicas_vehiculo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.caracteristicas_vehiculo (id_vehiculo, id_caracteristica) FROM stdin;
1	1
1	2
8	7
\.


--
-- TOC entry 3040 (class 0 OID 17198)
-- Dependencies: 208
-- Data for Name: mantenciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mantenciones (id, descripcion, fecha) FROM stdin;
1	se realizo la reparacion del vehiculo	2021-03-28 16:28:19.930894
2	se realizo la reparacion del vehiculo por problemas en el tren delantero	2021-03-28 17:38:15.503
3	se realizo la reparacion del vehiculo	2021-03-28 17:45:12.007
4	se realizo la reparacion del vehiculo	2021-03-28 17:57:49.966
5	cambio de neumaticos	2021-03-28 17:57:49.968
6	cambio de neumaticos delanteros	2021-03-28 19:54:02.546
7	se realizo la reparacion del vehiculo por problemas en el tren delantero	2021-03-28 20:43:49.39427
8	cambio de neumaticos	2021-03-28 20:43:49.39427
\.


--
-- TOC entry 3043 (class 0 OID 17213)
-- Dependencies: 211
-- Data for Name: mantenciones_historial_vehiculo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mantenciones_historial_vehiculo (id_vehiculo, id_mantenciones_historial) FROM stdin;
1	1
12	4
12	5
12	6
\.


--
-- TOC entry 3038 (class 0 OID 17164)
-- Dependencies: 206
-- Data for Name: vehiculo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vehiculo (id, "año", cilindrada, descripcion, kilometraje, marca, modelo, patente) FROM stdin;
1	2006	250 cc	Vehiculo	250	FORd	Century	ASDASD3
8	2021	450 cc	4x4	50	Chevrolet	4x4	GFSE-4DS
12	2021	450 cc	4x4	50	Chevrolet	4x4	HFSE-1DS
15	2020	1300 cc	Automovil	0	Ford	Focus	ABCD321
16	1999	600 cc	Automovil	10000	Chevrolet	Celica	ASFASD342
17	1956	2500 c	Camion	25000	Toyota	Cañonero	123-ABC
\.


--
-- TOC entry 3056 (class 0 OID 0)
-- Dependencies: 200
-- Name: caracteristicas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.caracteristicas_id_seq', 14, true);


--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 203
-- Name: caracteristicas_vehiculo_id_caracteristica_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.caracteristicas_vehiculo_id_caracteristica_seq', 1, false);


--
-- TOC entry 3058 (class 0 OID 0)
-- Dependencies: 202
-- Name: caracteristicas_vehiculo_id_vehiculo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.caracteristicas_vehiculo_id_vehiculo_seq', 1, false);


--
-- TOC entry 3059 (class 0 OID 0)
-- Dependencies: 210
-- Name: mantenciones_historial_vehiculo_id_mantenciones_historial_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mantenciones_historial_vehiculo_id_mantenciones_historial_seq', 1, false);


--
-- TOC entry 3060 (class 0 OID 0)
-- Dependencies: 209
-- Name: mantenciones_historial_vehiculo_id_vehiculo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mantenciones_historial_vehiculo_id_vehiculo_seq', 1, false);


--
-- TOC entry 3061 (class 0 OID 0)
-- Dependencies: 207
-- Name: mantenciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mantenciones_id_seq', 8, true);


--
-- TOC entry 3062 (class 0 OID 0)
-- Dependencies: 205
-- Name: vehiculo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vehiculo_id_seq', 17, true);


--
-- TOC entry 2887 (class 2606 OID 17127)
-- Name: caracteristicas caracteristicas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caracteristicas
    ADD CONSTRAINT caracteristicas_pkey PRIMARY KEY (id);


--
-- TOC entry 2895 (class 2606 OID 17203)
-- Name: mantenciones mantenciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mantenciones
    ADD CONSTRAINT mantenciones_pkey PRIMARY KEY (id);


--
-- TOC entry 2889 (class 2606 OID 17171)
-- Name: caracteristicas_vehiculo uk_9xsivtrcad3i66sjfphcjadf5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caracteristicas_vehiculo
    ADD CONSTRAINT uk_9xsivtrcad3i66sjfphcjadf5 UNIQUE (id_caracteristica);


--
-- TOC entry 2897 (class 2606 OID 17219)
-- Name: mantenciones_historial_vehiculo uk_chyxog9pso94sr62r0fchdlbo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mantenciones_historial_vehiculo
    ADD CONSTRAINT uk_chyxog9pso94sr62r0fchdlbo UNIQUE (id_mantenciones_historial);


--
-- TOC entry 2891 (class 2606 OID 17175)
-- Name: vehiculo uk_sovv6q9ft8ra9760asj3lisq2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehiculo
    ADD CONSTRAINT uk_sovv6q9ft8ra9760asj3lisq2 UNIQUE (patente);


--
-- TOC entry 2893 (class 2606 OID 17169)
-- Name: vehiculo vehiculo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehiculo
    ADD CONSTRAINT vehiculo_pkey PRIMARY KEY (id);


--
-- TOC entry 2899 (class 2606 OID 17181)
-- Name: caracteristicas_vehiculo fk567y6qgotvnan7ehecgan0wya; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caracteristicas_vehiculo
    ADD CONSTRAINT fk567y6qgotvnan7ehecgan0wya FOREIGN KEY (id_vehiculo) REFERENCES public.vehiculo(id);


--
-- TOC entry 2900 (class 2606 OID 17220)
-- Name: mantenciones_historial_vehiculo fkhau9gos5o8cgnpn822sb7nmac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mantenciones_historial_vehiculo
    ADD CONSTRAINT fkhau9gos5o8cgnpn822sb7nmac FOREIGN KEY (id_mantenciones_historial) REFERENCES public.mantenciones(id);


--
-- TOC entry 2901 (class 2606 OID 17225)
-- Name: mantenciones_historial_vehiculo fklm6vlb57379u8ull0nrq22sja; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mantenciones_historial_vehiculo
    ADD CONSTRAINT fklm6vlb57379u8ull0nrq22sja FOREIGN KEY (id_vehiculo) REFERENCES public.vehiculo(id);


--
-- TOC entry 2898 (class 2606 OID 17176)
-- Name: caracteristicas_vehiculo fkp2cttwrd1nq84p03mextqmui; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caracteristicas_vehiculo
    ADD CONSTRAINT fkp2cttwrd1nq84p03mextqmui FOREIGN KEY (id_caracteristica) REFERENCES public.caracteristicas(id);


-- Completed on 2021-03-28 22:09:25

--
-- PostgreSQL database dump complete
--

