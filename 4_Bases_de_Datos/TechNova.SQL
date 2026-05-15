--
-- PostgreSQL database dump
--

\restrict KVPLdhmDkv4ZNZDw3LOFPnjb7VyztUpfTC5mFp3yy12n1gl9nR6wki9ynB3bspo

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.2

-- Started on 2026-05-16 00:10:26

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = on;

DROP DATABASE IF EXISTS "TechNova S.L";
--
-- TOC entry 5191 (class 1262 OID 16384)
-- Name: TechNova S.L; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "TechNova S.L" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE "TechNova S.L" OWNER TO postgres;

\unrestrict KVPLdhmDkv4ZNZDw3LOFPnjb7VyztUpfTC5mFp3yy12n1gl9nR6wki9ynB3bspo
\encoding SQL_ASCII
\connect -reuse-previous=on "dbname='TechNova S.L'"
\restrict KVPLdhmDkv4ZNZDw3LOFPnjb7VyztUpfTC5mFp3yy12n1gl9nR6wki9ynB3bspo

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = on;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 235 (class 1259 OID 16767)
-- Name: aviso_seguridad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aviso_seguridad (
    id_aviso integer NOT NULL,
    id_virtual integer NOT NULL,
    nivel_gravedad character varying(20),
    descripcion text NOT NULL,
    fecha_incidente timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT aviso_seguridad_nivel_gravedad_check CHECK (((nivel_gravedad)::text = ANY ((ARRAY['Bajo'::character varying, 'Medio'::character varying, 'Critico'::character varying])::text[])))
);


ALTER TABLE public.aviso_seguridad OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16766)
-- Name: aviso_seguridad_id_aviso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aviso_seguridad_id_aviso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.aviso_seguridad_id_aviso_seq OWNER TO postgres;

--
-- TOC entry 5193 (class 0 OID 0)
-- Dependencies: 234
-- Name: aviso_seguridad_id_aviso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aviso_seguridad_id_aviso_seq OWNED BY public.aviso_seguridad.id_aviso;


--
-- TOC entry 237 (class 1259 OID 16786)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    cif character varying(20) NOT NULL,
    nombre_empresa character varying(100) NOT NULL,
    telefono character varying(20),
    persona_contacto character varying(100)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16785)
-- Name: cliente_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cliente_id_cliente_seq OWNER TO postgres;

--
-- TOC entry 5196 (class 0 OID 0)
-- Dependencies: 236
-- Name: cliente_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;


--
-- TOC entry 233 (class 1259 OID 16751)
-- Name: copia_seguridad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.copia_seguridad (
    id_copia integer NOT NULL,
    id_virtual integer NOT NULL,
    fecha_backup timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    estado character varying(20),
    peso_gb numeric(8,2),
    CONSTRAINT copia_seguridad_estado_check CHECK (((estado)::text = ANY ((ARRAY['Exitosa'::character varying, 'Fallida'::character varying, 'En Proceso'::character varying])::text[])))
);


ALTER TABLE public.copia_seguridad OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16750)
-- Name: copia_seguridad_id_copia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.copia_seguridad_id_copia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.copia_seguridad_id_copia_seq OWNER TO postgres;

--
-- TOC entry 5198 (class 0 OID 0)
-- Dependencies: 232
-- Name: copia_seguridad_id_copia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.copia_seguridad_id_copia_seq OWNED BY public.copia_seguridad.id_copia;


--
-- TOC entry 220 (class 1259 OID 16632)
-- Name: departamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamento (
    id_departamento integer NOT NULL,
    nombre character varying(50) NOT NULL,
    vlan_id integer NOT NULL
);


ALTER TABLE public.departamento OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16631)
-- Name: departamento_id_departamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departamento_id_departamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.departamento_id_departamento_seq OWNER TO postgres;

--
-- TOC entry 5201 (class 0 OID 0)
-- Dependencies: 219
-- Name: departamento_id_departamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departamento_id_departamento_seq OWNED BY public.departamento.id_departamento;


--
-- TOC entry 246 (class 1259 OID 16867)
-- Name: detalle_factura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalle_factura (
    id_detalle integer NOT NULL,
    id_factura integer NOT NULL,
    concepto character varying(200) NOT NULL,
    cantidad integer DEFAULT 1,
    precio_unitario numeric(10,2) NOT NULL
);


ALTER TABLE public.detalle_factura OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 16866)
-- Name: detalle_factura_id_detalle_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detalle_factura_id_detalle_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.detalle_factura_id_detalle_seq OWNER TO postgres;

--
-- TOC entry 5204 (class 0 OID 0)
-- Dependencies: 245
-- Name: detalle_factura_id_detalle_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detalle_factura_id_detalle_seq OWNED BY public.detalle_factura.id_detalle;


--
-- TOC entry 222 (class 1259 OID 16644)
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleado (
    id_empleado integer NOT NULL,
    id_departamento integer NOT NULL,
    nombre character varying(100) NOT NULL,
    cargo character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    fecha_contratacion date DEFAULT CURRENT_DATE
);


ALTER TABLE public.empleado OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16643)
-- Name: empleado_id_empleado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empleado_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.empleado_id_empleado_seq OWNER TO postgres;

--
-- TOC entry 5207 (class 0 OID 0)
-- Dependencies: 221
-- Name: empleado_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empleado_id_empleado_seq OWNED BY public.empleado.id_empleado;


--
-- TOC entry 227 (class 1259 OID 16693)
-- Name: equipo_fisico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.equipo_fisico (
    id_equipo integer NOT NULL,
    id_departamento integer,
    tipo character varying(50) NOT NULL,
    modelo character varying(100) NOT NULL,
    hostname character varying(50) NOT NULL,
    ip_gestion character varying(15)
);


ALTER TABLE public.equipo_fisico OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16692)
-- Name: equipo_fisico_id_equipo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.equipo_fisico_id_equipo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.equipo_fisico_id_equipo_seq OWNER TO postgres;

--
-- TOC entry 5209 (class 0 OID 0)
-- Dependencies: 226
-- Name: equipo_fisico_id_equipo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.equipo_fisico_id_equipo_seq OWNED BY public.equipo_fisico.id_equipo;


--
-- TOC entry 224 (class 1259 OID 16664)
-- Name: especialidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.especialidad (
    id_especialidad integer NOT NULL,
    nombre_tecnologia character varying(50) NOT NULL
);


ALTER TABLE public.especialidad OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16674)
-- Name: especialidad_empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.especialidad_empleado (
    id_empleado integer NOT NULL,
    id_especialidad integer NOT NULL,
    nivel character varying(20),
    CONSTRAINT especialidad_empleado_nivel_check CHECK (((nivel)::text = ANY ((ARRAY['Junior'::character varying, 'Mid'::character varying, 'Senior'::character varying])::text[])))
);


ALTER TABLE public.especialidad_empleado OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16663)
-- Name: especialidad_id_especialidad_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.especialidad_id_especialidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.especialidad_id_especialidad_seq OWNER TO postgres;

--
-- TOC entry 5213 (class 0 OID 0)
-- Dependencies: 223
-- Name: especialidad_id_especialidad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.especialidad_id_especialidad_seq OWNED BY public.especialidad.id_especialidad;


--
-- TOC entry 244 (class 1259 OID 16843)
-- Name: factura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.factura (
    id_factura integer NOT NULL,
    id_cliente integer NOT NULL,
    id_impuesto integer NOT NULL,
    numero_factura character varying(50) NOT NULL,
    fecha_emision date DEFAULT CURRENT_DATE
);


ALTER TABLE public.factura OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 16842)
-- Name: factura_id_factura_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.factura_id_factura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.factura_id_factura_seq OWNER TO postgres;

--
-- TOC entry 5216 (class 0 OID 0)
-- Dependencies: 243
-- Name: factura_id_factura_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.factura_id_factura_seq OWNED BY public.factura.id_factura;


--
-- TOC entry 242 (class 1259 OID 16833)
-- Name: impuesto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.impuesto (
    id_impuesto integer NOT NULL,
    nombre character varying(50) NOT NULL,
    porcentaje numeric(5,2) NOT NULL
);


ALTER TABLE public.impuesto OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 16832)
-- Name: impuesto_id_impuesto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.impuesto_id_impuesto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.impuesto_id_impuesto_seq OWNER TO postgres;

--
-- TOC entry 5219 (class 0 OID 0)
-- Dependencies: 241
-- Name: impuesto_id_impuesto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.impuesto_id_impuesto_seq OWNED BY public.impuesto.id_impuesto;


--
-- TOC entry 239 (class 1259 OID 16798)
-- Name: proyecto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proyecto (
    id_proyecto integer NOT NULL,
    id_cliente integer NOT NULL,
    nombre_proyecto character varying(150) NOT NULL,
    estado character varying(30) DEFAULT 'Activo'::character varying,
    presupuesto numeric(10,2) NOT NULL
);


ALTER TABLE public.proyecto OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16797)
-- Name: proyecto_id_proyecto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proyecto_id_proyecto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proyecto_id_proyecto_seq OWNER TO postgres;

--
-- TOC entry 5221 (class 0 OID 0)
-- Dependencies: 238
-- Name: proyecto_id_proyecto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proyecto_id_proyecto_seq OWNED BY public.proyecto.id_proyecto;


--
-- TOC entry 229 (class 1259 OID 16713)
-- Name: servidor_maestro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.servidor_maestro (
    id_maestro integer NOT NULL,
    id_departamento integer,
    hostname character varying(50) NOT NULL,
    recursos_ram_gb integer NOT NULL,
    ubicacion_fisica character varying(100)
);


ALTER TABLE public.servidor_maestro OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16712)
-- Name: servidor_maestro_id_maestro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.servidor_maestro_id_maestro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.servidor_maestro_id_maestro_seq OWNER TO postgres;

--
-- TOC entry 5223 (class 0 OID 0)
-- Dependencies: 228
-- Name: servidor_maestro_id_maestro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.servidor_maestro_id_maestro_seq OWNED BY public.servidor_maestro.id_maestro;


--
-- TOC entry 231 (class 1259 OID 16730)
-- Name: servidor_virtual; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.servidor_virtual (
    id_virtual integer NOT NULL,
    id_maestro integer NOT NULL,
    hostname_vm character varying(50) NOT NULL,
    ip_interna character varying(15) NOT NULL,
    sistema_operativo character varying(50) NOT NULL
);


ALTER TABLE public.servidor_virtual OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16729)
-- Name: servidor_virtual_id_virtual_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.servidor_virtual_id_virtual_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.servidor_virtual_id_virtual_seq OWNER TO postgres;

--
-- TOC entry 5225 (class 0 OID 0)
-- Dependencies: 230
-- Name: servidor_virtual_id_virtual_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.servidor_virtual_id_virtual_seq OWNED BY public.servidor_virtual.id_virtual;


--
-- TOC entry 240 (class 1259 OID 16814)
-- Name: trabajo_empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trabajo_empleado (
    id_empleado integer NOT NULL,
    id_proyecto integer NOT NULL,
    horas_asignadas integer DEFAULT 0
);


ALTER TABLE public.trabajo_empleado OWNER TO postgres;

--
-- TOC entry 4933 (class 2604 OID 16770)
-- Name: aviso_seguridad id_aviso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aviso_seguridad ALTER COLUMN id_aviso SET DEFAULT nextval('public.aviso_seguridad_id_aviso_seq'::regclass);


--
-- TOC entry 4935 (class 2604 OID 16789)
-- Name: cliente id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);


--
-- TOC entry 4931 (class 2604 OID 16754)
-- Name: copia_seguridad id_copia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.copia_seguridad ALTER COLUMN id_copia SET DEFAULT nextval('public.copia_seguridad_id_copia_seq'::regclass);


--
-- TOC entry 4924 (class 2604 OID 16635)
-- Name: departamento id_departamento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamento ALTER COLUMN id_departamento SET DEFAULT nextval('public.departamento_id_departamento_seq'::regclass);


--
-- TOC entry 4942 (class 2604 OID 16870)
-- Name: detalle_factura id_detalle; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_factura ALTER COLUMN id_detalle SET DEFAULT nextval('public.detalle_factura_id_detalle_seq'::regclass);


--
-- TOC entry 4925 (class 2604 OID 16647)
-- Name: empleado id_empleado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleado_id_empleado_seq'::regclass);


--
-- TOC entry 4928 (class 2604 OID 16696)
-- Name: equipo_fisico id_equipo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipo_fisico ALTER COLUMN id_equipo SET DEFAULT nextval('public.equipo_fisico_id_equipo_seq'::regclass);


--
-- TOC entry 4927 (class 2604 OID 16667)
-- Name: especialidad id_especialidad; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.especialidad ALTER COLUMN id_especialidad SET DEFAULT nextval('public.especialidad_id_especialidad_seq'::regclass);


--
-- TOC entry 4940 (class 2604 OID 16846)
-- Name: factura id_factura; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura ALTER COLUMN id_factura SET DEFAULT nextval('public.factura_id_factura_seq'::regclass);


--
-- TOC entry 4939 (class 2604 OID 16836)
-- Name: impuesto id_impuesto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.impuesto ALTER COLUMN id_impuesto SET DEFAULT nextval('public.impuesto_id_impuesto_seq'::regclass);


--
-- TOC entry 4936 (class 2604 OID 16801)
-- Name: proyecto id_proyecto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proyecto ALTER COLUMN id_proyecto SET DEFAULT nextval('public.proyecto_id_proyecto_seq'::regclass);


--
-- TOC entry 4929 (class 2604 OID 16716)
-- Name: servidor_maestro id_maestro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servidor_maestro ALTER COLUMN id_maestro SET DEFAULT nextval('public.servidor_maestro_id_maestro_seq'::regclass);


--
-- TOC entry 4930 (class 2604 OID 16733)
-- Name: servidor_virtual id_virtual; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servidor_virtual ALTER COLUMN id_virtual SET DEFAULT nextval('public.servidor_virtual_id_virtual_seq'::regclass);


--
-- TOC entry 5174 (class 0 OID 16767)
-- Dependencies: 235
-- Data for Name: aviso_seguridad; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.aviso_seguridad (id_aviso, id_virtual, nivel_gravedad, descripcion, fecha_incidente) VALUES (1, 1, 'Medio', 'Intentos de inicio de sesión no válidos en puerto SSH.', '2026-04-18 02:15:00') ON CONFLICT DO NOTHING;
INSERT INTO public.aviso_seguridad (id_aviso, id_virtual, nivel_gravedad, descripcion, fecha_incidente) VALUES (2, 2, 'Critico', 'Alerta de saturación de CPU (Posible ataque DDoS a Base de Datos).', '2026-04-19 14:30:22') ON CONFLICT DO NOTHING;


--
-- TOC entry 5176 (class 0 OID 16786)
-- Dependencies: 237
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cliente (id_cliente, cif, nombre_empresa, telefono, persona_contacto) VALUES (1, 'B87654321', 'Banco Santander Innovación', '912345678', 'Director Transformación') ON CONFLICT DO NOTHING;
INSERT INTO public.cliente (id_cliente, cif, nombre_empresa, telefono, persona_contacto) VALUES (2, 'A12345678', 'Hospital Clínico Central', '919876543', 'CISO Hospital') ON CONFLICT DO NOTHING;


--
-- TOC entry 5172 (class 0 OID 16751)
-- Dependencies: 233
-- Data for Name: copia_seguridad; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.copia_seguridad (id_copia, id_virtual, fecha_backup, estado, peso_gb) VALUES (1, 1, '2026-04-24 11:03:37.20667', 'Exitosa', 150.75) ON CONFLICT DO NOTHING;
INSERT INTO public.copia_seguridad (id_copia, id_virtual, fecha_backup, estado, peso_gb) VALUES (2, 2, '2026-04-24 11:03:37.20667', 'Exitosa', 580.20) ON CONFLICT DO NOTHING;
INSERT INTO public.copia_seguridad (id_copia, id_virtual, fecha_backup, estado, peso_gb) VALUES (3, 3, '2026-04-24 11:03:37.20667', 'Exitosa', 45.00) ON CONFLICT DO NOTHING;


--
-- TOC entry 5159 (class 0 OID 16632)
-- Dependencies: 220
-- Data for Name: departamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.departamento (id_departamento, nombre, vlan_id) VALUES (1, 'Direccion', 10) ON CONFLICT DO NOTHING;
INSERT INTO public.departamento (id_departamento, nombre, vlan_id) VALUES (2, 'Sistemas y Ciberseguridad', 20) ON CONFLICT DO NOTHING;
INSERT INTO public.departamento (id_departamento, nombre, vlan_id) VALUES (3, 'Desarrollo e IA', 30) ON CONFLICT DO NOTHING;
INSERT INTO public.departamento (id_departamento, nombre, vlan_id) VALUES (4, 'Soporte Administrativo y Comercial', 40) ON CONFLICT DO NOTHING;
INSERT INTO public.departamento (id_departamento, nombre, vlan_id) VALUES (5, 'Red Perimetral Invitados', 50) ON CONFLICT DO NOTHING;


--
-- TOC entry 5185 (class 0 OID 16867)
-- Dependencies: 246
-- Data for Name: detalle_factura; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.detalle_factura (id_detalle, id_factura, concepto, cantidad, precio_unitario) VALUES (1, 1, 'Horas Consultoría Arquitectura Redes (Senior)', 120, 80.00) ON CONFLICT DO NOTHING;
INSERT INTO public.detalle_factura (id_detalle, id_factura, concepto, cantidad, precio_unitario) VALUES (2, 1, 'Horas Auditoría Pentesting (SOC Analyst)', 80, 95.00) ON CONFLICT DO NOTHING;
INSERT INTO public.detalle_factura (id_detalle, id_factura, concepto, cantidad, precio_unitario) VALUES (3, 1, 'Licencia Firewall y Gestión Anual', 1, 3500.00) ON CONFLICT DO NOTHING;


--
-- TOC entry 5161 (class 0 OID 16644)
-- Dependencies: 222
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (1, 1, 'Luis CEO', 'Chief Executive Officer', 'luis.ceo@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (2, 1, 'Apoyo-Dir', 'Executive Assistant', 'apoyo.dir@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (3, 2, 'Jaime', 'Responsable de Sistemas IT', 'jaime.sis@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (4, 2, 'Alex Redes', 'Network & Routing Engineer', 'alex.redes@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (5, 2, 'Carlos Bit', 'Systems Administrator', 'carlos.bit@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (6, 2, 'Roberto Cyber', 'Cybersecurity SOC Analyst', 'roberto.cyber@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (7, 2, 'Diego DevOps', 'DevOps & Automation Engineer', 'diego.devops@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (8, 2, 'Ing-Rack', 'Data Center Technician', 'ing.rack@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (9, 3, 'Lucía Lead', 'Desarrollo Lead', 'lucia.lead@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (10, 3, 'Elena Cloud', 'Cloud Architect', 'elena.cloud@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (11, 3, 'Víctor Backend', 'Backend Developer (Python)', 'victor.backend@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (12, 3, 'María Frontend', 'Frontend Developer', 'maria.frontend@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (13, 3, 'Hugo Data', 'Senior Data Analyst', 'hugo.data@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (14, 3, 'Pau Neural', 'Data Scientist / IA', 'pau.neural@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (15, 3, 'Ana Query', 'Database Administrator', 'ana.query@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (16, 4, 'Sara Talento', 'HR & Talent Manager', 'sara.talento@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (17, 4, 'Marta Ventas', 'Key Account Manager', 'marta.ventas@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (18, 4, 'Carmen Legal', 'Legal & Compliance Officer', 'carmen.legal@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (19, 4, 'Admin-01', 'Administrative Support', 'admin01@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;
INSERT INTO public.empleado (id_empleado, id_departamento, nombre, cargo, email, fecha_contratacion) VALUES (20, 4, 'Admin-02', 'Administrative Support', 'admin02@technova.local', '2026-04-24') ON CONFLICT DO NOTHING;


--
-- TOC entry 5166 (class 0 OID 16693)
-- Dependencies: 227
-- Data for Name: equipo_fisico; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.equipo_fisico (id_equipo, id_departamento, tipo, modelo, hostname, ip_gestion) VALUES (1, 2, 'Gateway / Router L3', 'Cisco 2911', 'GW-TECHNOVA', '192.168.1.1') ON CONFLICT DO NOTHING;
INSERT INTO public.equipo_fisico (id_equipo, id_departamento, tipo, modelo, hostname, ip_gestion) VALUES (2, 2, 'Switch Core L3', 'Cisco Catalyst 3650', 'CORE-L3-3650', '192.168.1.254') ON CONFLICT DO NOTHING;
INSERT INTO public.equipo_fisico (id_equipo, id_departamento, tipo, modelo, hostname, ip_gestion) VALUES (3, 1, 'Switch Acceso L2', 'Cisco 2960', 'SW-ACC-DIR', '192.168.10.253') ON CONFLICT DO NOTHING;
INSERT INTO public.equipo_fisico (id_equipo, id_departamento, tipo, modelo, hostname, ip_gestion) VALUES (4, 2, 'Switch Acceso L2', 'Cisco 2960', 'SW-ACC-SIS', '192.168.20.253') ON CONFLICT DO NOTHING;
INSERT INTO public.equipo_fisico (id_equipo, id_departamento, tipo, modelo, hostname, ip_gestion) VALUES (5, 3, 'Switch Acceso L2', 'Cisco 2960', 'SW-ACC-DEV', '192.168.30.253') ON CONFLICT DO NOTHING;
INSERT INTO public.equipo_fisico (id_equipo, id_departamento, tipo, modelo, hostname, ip_gestion) VALUES (6, 4, 'Switch Acceso L2', 'Cisco 2960', 'SW-ACC-SOP', '192.168.40.253') ON CONFLICT DO NOTHING;
INSERT INTO public.equipo_fisico (id_equipo, id_departamento, tipo, modelo, hostname, ip_gestion) VALUES (7, 5, 'Access Point', 'AP-PT', 'AP-GUEST-WIFI', '192.168.50.253') ON CONFLICT DO NOTHING;


--
-- TOC entry 5163 (class 0 OID 16664)
-- Dependencies: 224
-- Data for Name: especialidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.especialidad (id_especialidad, nombre_tecnologia) VALUES (1, 'Routing Cisco (CCNA)') ON CONFLICT DO NOTHING;
INSERT INTO public.especialidad (id_especialidad, nombre_tecnologia) VALUES (2, 'Security & Pentesting') ON CONFLICT DO NOTHING;
INSERT INTO public.especialidad (id_especialidad, nombre_tecnologia) VALUES (3, 'Python for Data Science') ON CONFLICT DO NOTHING;
INSERT INTO public.especialidad (id_especialidad, nombre_tecnologia) VALUES (4, 'AWS / Azure Cloud') ON CONFLICT DO NOTHING;
INSERT INTO public.especialidad (id_especialidad, nombre_tecnologia) VALUES (5, 'Virtualization (VMware)') ON CONFLICT DO NOTHING;


--
-- TOC entry 5164 (class 0 OID 16674)
-- Dependencies: 225
-- Data for Name: especialidad_empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.especialidad_empleado (id_empleado, id_especialidad, nivel) VALUES (4, 1, 'Senior') ON CONFLICT DO NOTHING;
INSERT INTO public.especialidad_empleado (id_empleado, id_especialidad, nivel) VALUES (6, 2, 'Senior') ON CONFLICT DO NOTHING;
INSERT INTO public.especialidad_empleado (id_empleado, id_especialidad, nivel) VALUES (10, 4, 'Senior') ON CONFLICT DO NOTHING;
INSERT INTO public.especialidad_empleado (id_empleado, id_especialidad, nivel) VALUES (14, 3, 'Senior') ON CONFLICT DO NOTHING;
INSERT INTO public.especialidad_empleado (id_empleado, id_especialidad, nivel) VALUES (15, 5, 'Mid') ON CONFLICT DO NOTHING;


--
-- TOC entry 5183 (class 0 OID 16843)
-- Dependencies: 244
-- Data for Name: factura; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.factura (id_factura, id_cliente, id_impuesto, numero_factura, fecha_emision) VALUES (1, 2, 1, 'FAC-TECH-2026-001', '2026-04-20') ON CONFLICT DO NOTHING;


--
-- TOC entry 5181 (class 0 OID 16833)
-- Dependencies: 242
-- Data for Name: impuesto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.impuesto (id_impuesto, nombre, porcentaje) VALUES (1, 'IVA General (España)', 21.00) ON CONFLICT DO NOTHING;


--
-- TOC entry 5178 (class 0 OID 16798)
-- Dependencies: 239
-- Data for Name: proyecto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.proyecto (id_proyecto, id_cliente, nombre_proyecto, estado, presupuesto) VALUES (1, 1, 'Despliegue de IA para Detección de Fraudes (Copilot)', 'Activo', 85000.00) ON CONFLICT DO NOTHING;
INSERT INTO public.proyecto (id_proyecto, id_cliente, nombre_proyecto, estado, presupuesto) VALUES (2, 2, 'Auditoría Perimetral y Rediseño de VLANs Clínicas', 'Activo', 24500.00) ON CONFLICT DO NOTHING;


--
-- TOC entry 5168 (class 0 OID 16713)
-- Dependencies: 229
-- Data for Name: servidor_maestro; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.servidor_maestro (id_maestro, id_departamento, hostname, recursos_ram_gb, ubicacion_fisica) VALUES (1, 2, 'SRV-PROD-01', 256, 'Wiring Closet - Rack 1 - U10') ON CONFLICT DO NOTHING;
INSERT INTO public.servidor_maestro (id_maestro, id_departamento, hostname, recursos_ram_gb, ubicacion_fisica) VALUES (2, 2, 'SRV-BACKUP-01', 128, 'Wiring Closet - Rack 1 - U12') ON CONFLICT DO NOTHING;
INSERT INTO public.servidor_maestro (id_maestro, id_departamento, hostname, recursos_ram_gb, ubicacion_fisica) VALUES (3, 2, 'SRV-SVR-DHCP', 16, 'Wiring Closet - Rack 1 - U14') ON CONFLICT DO NOTHING;
INSERT INTO public.servidor_maestro (id_maestro, id_departamento, hostname, recursos_ram_gb, ubicacion_fisica) VALUES (4, 2, 'SRV-SVR-DNS', 16, 'Wiring Closet - Rack 1 - U15') ON CONFLICT DO NOTHING;


--
-- TOC entry 5170 (class 0 OID 16730)
-- Dependencies: 231
-- Data for Name: servidor_virtual; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.servidor_virtual (id_virtual, id_maestro, hostname_vm, ip_interna, sistema_operativo) VALUES (1, 1, 'VM-AppServer-01', '192.168.20.10', 'Ubuntu 24.04 LTS') ON CONFLICT DO NOTHING;
INSERT INTO public.servidor_virtual (id_virtual, id_maestro, hostname_vm, ip_interna, sistema_operativo) VALUES (2, 1, 'VM-Database-01', '192.168.20.11', 'Windows Server 2022') ON CONFLICT DO NOTHING;
INSERT INTO public.servidor_virtual (id_virtual, id_maestro, hostname_vm, ip_interna, sistema_operativo) VALUES (3, 2, 'VM-Veeam-Vault', '192.168.20.100', 'Windows Server 2019') ON CONFLICT DO NOTHING;


--
-- TOC entry 5179 (class 0 OID 16814)
-- Dependencies: 240
-- Data for Name: trabajo_empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.trabajo_empleado (id_empleado, id_proyecto, horas_asignadas) VALUES (14, 1, 200) ON CONFLICT DO NOTHING;
INSERT INTO public.trabajo_empleado (id_empleado, id_proyecto, horas_asignadas) VALUES (13, 1, 150) ON CONFLICT DO NOTHING;
INSERT INTO public.trabajo_empleado (id_empleado, id_proyecto, horas_asignadas) VALUES (4, 2, 120) ON CONFLICT DO NOTHING;
INSERT INTO public.trabajo_empleado (id_empleado, id_proyecto, horas_asignadas) VALUES (6, 2, 80) ON CONFLICT DO NOTHING;


--
-- TOC entry 5228 (class 0 OID 0)
-- Dependencies: 234
-- Name: aviso_seguridad_id_aviso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aviso_seguridad_id_aviso_seq', 2, true);


--
-- TOC entry 5229 (class 0 OID 0)
-- Dependencies: 236
-- Name: cliente_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 2, true);


--
-- TOC entry 5230 (class 0 OID 0)
-- Dependencies: 232
-- Name: copia_seguridad_id_copia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.copia_seguridad_id_copia_seq', 3, true);


--
-- TOC entry 5231 (class 0 OID 0)
-- Dependencies: 219
-- Name: departamento_id_departamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departamento_id_departamento_seq', 5, true);


--
-- TOC entry 5232 (class 0 OID 0)
-- Dependencies: 245
-- Name: detalle_factura_id_detalle_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detalle_factura_id_detalle_seq', 3, true);


--
-- TOC entry 5233 (class 0 OID 0)
-- Dependencies: 221
-- Name: empleado_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empleado_id_empleado_seq', 20, true);


--
-- TOC entry 5234 (class 0 OID 0)
-- Dependencies: 226
-- Name: equipo_fisico_id_equipo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.equipo_fisico_id_equipo_seq', 7, true);


--
-- TOC entry 5235 (class 0 OID 0)
-- Dependencies: 223
-- Name: especialidad_id_especialidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.especialidad_id_especialidad_seq', 5, true);


--
-- TOC entry 5236 (class 0 OID 0)
-- Dependencies: 243
-- Name: factura_id_factura_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.factura_id_factura_seq', 1, true);


--
-- TOC entry 5237 (class 0 OID 0)
-- Dependencies: 241
-- Name: impuesto_id_impuesto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.impuesto_id_impuesto_seq', 1, true);


--
-- TOC entry 5238 (class 0 OID 0)
-- Dependencies: 238
-- Name: proyecto_id_proyecto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proyecto_id_proyecto_seq', 2, true);


--
-- TOC entry 5239 (class 0 OID 0)
-- Dependencies: 228
-- Name: servidor_maestro_id_maestro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.servidor_maestro_id_maestro_seq', 4, true);


--
-- TOC entry 5240 (class 0 OID 0)
-- Dependencies: 230
-- Name: servidor_virtual_id_virtual_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.servidor_virtual_id_virtual_seq', 3, true);


--
-- TOC entry 4980 (class 2606 OID 16779)
-- Name: aviso_seguridad aviso_seguridad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aviso_seguridad
    ADD CONSTRAINT aviso_seguridad_pkey PRIMARY KEY (id_aviso);


--
-- TOC entry 4982 (class 2606 OID 16796)
-- Name: cliente cliente_cif_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_cif_key UNIQUE (cif);


--
-- TOC entry 4984 (class 2606 OID 16794)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);


--
-- TOC entry 4978 (class 2606 OID 16760)
-- Name: copia_seguridad copia_seguridad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.copia_seguridad
    ADD CONSTRAINT copia_seguridad_pkey PRIMARY KEY (id_copia);


--
-- TOC entry 4948 (class 2606 OID 16640)
-- Name: departamento departamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (id_departamento);


--
-- TOC entry 4950 (class 2606 OID 16642)
-- Name: departamento departamento_vlan_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_vlan_id_key UNIQUE (vlan_id);


--
-- TOC entry 4996 (class 2606 OID 16877)
-- Name: detalle_factura detalle_factura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_pkey PRIMARY KEY (id_detalle);


--
-- TOC entry 4952 (class 2606 OID 16657)
-- Name: empleado empleado_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_email_key UNIQUE (email);


--
-- TOC entry 4954 (class 2606 OID 16655)
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);


--
-- TOC entry 4962 (class 2606 OID 16704)
-- Name: equipo_fisico equipo_fisico_hostname_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipo_fisico
    ADD CONSTRAINT equipo_fisico_hostname_key UNIQUE (hostname);


--
-- TOC entry 4964 (class 2606 OID 16706)
-- Name: equipo_fisico equipo_fisico_ip_gestion_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipo_fisico
    ADD CONSTRAINT equipo_fisico_ip_gestion_key UNIQUE (ip_gestion);


--
-- TOC entry 4966 (class 2606 OID 16702)
-- Name: equipo_fisico equipo_fisico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipo_fisico
    ADD CONSTRAINT equipo_fisico_pkey PRIMARY KEY (id_equipo);


--
-- TOC entry 4960 (class 2606 OID 16681)
-- Name: especialidad_empleado especialidad_empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.especialidad_empleado
    ADD CONSTRAINT especialidad_empleado_pkey PRIMARY KEY (id_empleado, id_especialidad);


--
-- TOC entry 4956 (class 2606 OID 16673)
-- Name: especialidad especialidad_nombre_tecnologia_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.especialidad
    ADD CONSTRAINT especialidad_nombre_tecnologia_key UNIQUE (nombre_tecnologia);


--
-- TOC entry 4958 (class 2606 OID 16671)
-- Name: especialidad especialidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.especialidad
    ADD CONSTRAINT especialidad_pkey PRIMARY KEY (id_especialidad);


--
-- TOC entry 4992 (class 2606 OID 16855)
-- Name: factura factura_numero_factura_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_numero_factura_key UNIQUE (numero_factura);


--
-- TOC entry 4994 (class 2606 OID 16853)
-- Name: factura factura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (id_factura);


--
-- TOC entry 4990 (class 2606 OID 16841)
-- Name: impuesto impuesto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.impuesto
    ADD CONSTRAINT impuesto_pkey PRIMARY KEY (id_impuesto);


--
-- TOC entry 4986 (class 2606 OID 16808)
-- Name: proyecto proyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT proyecto_pkey PRIMARY KEY (id_proyecto);


--
-- TOC entry 4968 (class 2606 OID 16723)
-- Name: servidor_maestro servidor_maestro_hostname_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servidor_maestro
    ADD CONSTRAINT servidor_maestro_hostname_key UNIQUE (hostname);


--
-- TOC entry 4970 (class 2606 OID 16721)
-- Name: servidor_maestro servidor_maestro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servidor_maestro
    ADD CONSTRAINT servidor_maestro_pkey PRIMARY KEY (id_maestro);


--
-- TOC entry 4972 (class 2606 OID 16742)
-- Name: servidor_virtual servidor_virtual_hostname_vm_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servidor_virtual
    ADD CONSTRAINT servidor_virtual_hostname_vm_key UNIQUE (hostname_vm);


--
-- TOC entry 4974 (class 2606 OID 16744)
-- Name: servidor_virtual servidor_virtual_ip_interna_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servidor_virtual
    ADD CONSTRAINT servidor_virtual_ip_interna_key UNIQUE (ip_interna);


--
-- TOC entry 4976 (class 2606 OID 16740)
-- Name: servidor_virtual servidor_virtual_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servidor_virtual
    ADD CONSTRAINT servidor_virtual_pkey PRIMARY KEY (id_virtual);


--
-- TOC entry 4988 (class 2606 OID 16821)
-- Name: trabajo_empleado trabajo_empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trabajo_empleado
    ADD CONSTRAINT trabajo_empleado_pkey PRIMARY KEY (id_empleado, id_proyecto);


--
-- TOC entry 5004 (class 2606 OID 16780)
-- Name: aviso_seguridad aviso_seguridad_id_virtual_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aviso_seguridad
    ADD CONSTRAINT aviso_seguridad_id_virtual_fkey FOREIGN KEY (id_virtual) REFERENCES public.servidor_virtual(id_virtual) ON DELETE CASCADE;


--
-- TOC entry 5003 (class 2606 OID 16761)
-- Name: copia_seguridad copia_seguridad_id_virtual_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.copia_seguridad
    ADD CONSTRAINT copia_seguridad_id_virtual_fkey FOREIGN KEY (id_virtual) REFERENCES public.servidor_virtual(id_virtual) ON DELETE CASCADE;


--
-- TOC entry 5010 (class 2606 OID 16878)
-- Name: detalle_factura detalle_factura_id_factura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_id_factura_fkey FOREIGN KEY (id_factura) REFERENCES public.factura(id_factura) ON DELETE CASCADE;


--
-- TOC entry 4997 (class 2606 OID 16658)
-- Name: empleado empleado_id_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_id_departamento_fkey FOREIGN KEY (id_departamento) REFERENCES public.departamento(id_departamento) ON DELETE RESTRICT;


--
-- TOC entry 5000 (class 2606 OID 16707)
-- Name: equipo_fisico equipo_fisico_id_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipo_fisico
    ADD CONSTRAINT equipo_fisico_id_departamento_fkey FOREIGN KEY (id_departamento) REFERENCES public.departamento(id_departamento) ON DELETE SET NULL;


--
-- TOC entry 4998 (class 2606 OID 16682)
-- Name: especialidad_empleado especialidad_empleado_id_empleado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.especialidad_empleado
    ADD CONSTRAINT especialidad_empleado_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado) ON DELETE CASCADE;


--
-- TOC entry 4999 (class 2606 OID 16687)
-- Name: especialidad_empleado especialidad_empleado_id_especialidad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.especialidad_empleado
    ADD CONSTRAINT especialidad_empleado_id_especialidad_fkey FOREIGN KEY (id_especialidad) REFERENCES public.especialidad(id_especialidad) ON DELETE CASCADE;


--
-- TOC entry 5008 (class 2606 OID 16856)
-- Name: factura factura_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente) ON DELETE RESTRICT;


--
-- TOC entry 5009 (class 2606 OID 16861)
-- Name: factura factura_id_impuesto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_id_impuesto_fkey FOREIGN KEY (id_impuesto) REFERENCES public.impuesto(id_impuesto) ON DELETE RESTRICT;


--
-- TOC entry 5005 (class 2606 OID 16809)
-- Name: proyecto proyecto_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT proyecto_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente) ON DELETE RESTRICT;


--
-- TOC entry 5001 (class 2606 OID 16724)
-- Name: servidor_maestro servidor_maestro_id_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servidor_maestro
    ADD CONSTRAINT servidor_maestro_id_departamento_fkey FOREIGN KEY (id_departamento) REFERENCES public.departamento(id_departamento) ON DELETE SET NULL;


--
-- TOC entry 5002 (class 2606 OID 16745)
-- Name: servidor_virtual servidor_virtual_id_maestro_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servidor_virtual
    ADD CONSTRAINT servidor_virtual_id_maestro_fkey FOREIGN KEY (id_maestro) REFERENCES public.servidor_maestro(id_maestro) ON DELETE CASCADE;


--
-- TOC entry 5006 (class 2606 OID 16822)
-- Name: trabajo_empleado trabajo_empleado_id_empleado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trabajo_empleado
    ADD CONSTRAINT trabajo_empleado_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado) ON DELETE CASCADE;


--
-- TOC entry 5007 (class 2606 OID 16827)
-- Name: trabajo_empleado trabajo_empleado_id_proyecto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trabajo_empleado
    ADD CONSTRAINT trabajo_empleado_id_proyecto_fkey FOREIGN KEY (id_proyecto) REFERENCES public.proyecto(id_proyecto) ON DELETE CASCADE;


--
-- TOC entry 5192 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT USAGE ON SCHEMA public TO rol_rrhh;
GRANT USAGE ON SCHEMA public TO rol_contabilidad;


--
-- TOC entry 5194 (class 0 OID 0)
-- Dependencies: 234
-- Name: SEQUENCE aviso_seguridad_id_aviso_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.aviso_seguridad_id_aviso_seq TO rol_rrhh;
GRANT SELECT,USAGE ON SEQUENCE public.aviso_seguridad_id_aviso_seq TO rol_contabilidad;


--
-- TOC entry 5195 (class 0 OID 0)
-- Dependencies: 237
-- Name: TABLE cliente; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.cliente TO rol_contabilidad;


--
-- TOC entry 5197 (class 0 OID 0)
-- Dependencies: 236
-- Name: SEQUENCE cliente_id_cliente_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.cliente_id_cliente_seq TO rol_rrhh;
GRANT SELECT,USAGE ON SEQUENCE public.cliente_id_cliente_seq TO rol_contabilidad;


--
-- TOC entry 5199 (class 0 OID 0)
-- Dependencies: 232
-- Name: SEQUENCE copia_seguridad_id_copia_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.copia_seguridad_id_copia_seq TO rol_rrhh;
GRANT SELECT,USAGE ON SEQUENCE public.copia_seguridad_id_copia_seq TO rol_contabilidad;


--
-- TOC entry 5200 (class 0 OID 0)
-- Dependencies: 220
-- Name: TABLE departamento; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.departamento TO rol_rrhh;


--
-- TOC entry 5202 (class 0 OID 0)
-- Dependencies: 219
-- Name: SEQUENCE departamento_id_departamento_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.departamento_id_departamento_seq TO rol_rrhh;
GRANT SELECT,USAGE ON SEQUENCE public.departamento_id_departamento_seq TO rol_contabilidad;


--
-- TOC entry 5203 (class 0 OID 0)
-- Dependencies: 246
-- Name: TABLE detalle_factura; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.detalle_factura TO rol_contabilidad;


--
-- TOC entry 5205 (class 0 OID 0)
-- Dependencies: 245
-- Name: SEQUENCE detalle_factura_id_detalle_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.detalle_factura_id_detalle_seq TO rol_rrhh;
GRANT SELECT,USAGE ON SEQUENCE public.detalle_factura_id_detalle_seq TO rol_contabilidad;


--
-- TOC entry 5206 (class 0 OID 0)
-- Dependencies: 222
-- Name: TABLE empleado; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.empleado TO rol_rrhh;


--
-- TOC entry 5208 (class 0 OID 0)
-- Dependencies: 221
-- Name: SEQUENCE empleado_id_empleado_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.empleado_id_empleado_seq TO rol_rrhh;
GRANT SELECT,USAGE ON SEQUENCE public.empleado_id_empleado_seq TO rol_contabilidad;


--
-- TOC entry 5210 (class 0 OID 0)
-- Dependencies: 226
-- Name: SEQUENCE equipo_fisico_id_equipo_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.equipo_fisico_id_equipo_seq TO rol_rrhh;
GRANT SELECT,USAGE ON SEQUENCE public.equipo_fisico_id_equipo_seq TO rol_contabilidad;


--
-- TOC entry 5211 (class 0 OID 0)
-- Dependencies: 224
-- Name: TABLE especialidad; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.especialidad TO rol_rrhh;


--
-- TOC entry 5212 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE especialidad_empleado; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.especialidad_empleado TO rol_rrhh;


--
-- TOC entry 5214 (class 0 OID 0)
-- Dependencies: 223
-- Name: SEQUENCE especialidad_id_especialidad_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.especialidad_id_especialidad_seq TO rol_rrhh;
GRANT SELECT,USAGE ON SEQUENCE public.especialidad_id_especialidad_seq TO rol_contabilidad;


--
-- TOC entry 5215 (class 0 OID 0)
-- Dependencies: 244
-- Name: TABLE factura; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.factura TO rol_contabilidad;


--
-- TOC entry 5217 (class 0 OID 0)
-- Dependencies: 243
-- Name: SEQUENCE factura_id_factura_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.factura_id_factura_seq TO rol_rrhh;
GRANT SELECT,USAGE ON SEQUENCE public.factura_id_factura_seq TO rol_contabilidad;


--
-- TOC entry 5218 (class 0 OID 0)
-- Dependencies: 242
-- Name: TABLE impuesto; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.impuesto TO rol_contabilidad;


--
-- TOC entry 5220 (class 0 OID 0)
-- Dependencies: 241
-- Name: SEQUENCE impuesto_id_impuesto_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.impuesto_id_impuesto_seq TO rol_rrhh;
GRANT SELECT,USAGE ON SEQUENCE public.impuesto_id_impuesto_seq TO rol_contabilidad;


--
-- TOC entry 5222 (class 0 OID 0)
-- Dependencies: 238
-- Name: SEQUENCE proyecto_id_proyecto_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.proyecto_id_proyecto_seq TO rol_rrhh;
GRANT SELECT,USAGE ON SEQUENCE public.proyecto_id_proyecto_seq TO rol_contabilidad;


--
-- TOC entry 5224 (class 0 OID 0)
-- Dependencies: 228
-- Name: SEQUENCE servidor_maestro_id_maestro_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.servidor_maestro_id_maestro_seq TO rol_rrhh;
GRANT SELECT,USAGE ON SEQUENCE public.servidor_maestro_id_maestro_seq TO rol_contabilidad;


--
-- TOC entry 5226 (class 0 OID 0)
-- Dependencies: 230
-- Name: SEQUENCE servidor_virtual_id_virtual_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.servidor_virtual_id_virtual_seq TO rol_rrhh;
GRANT SELECT,USAGE ON SEQUENCE public.servidor_virtual_id_virtual_seq TO rol_contabilidad;


--
-- TOC entry 5227 (class 0 OID 0)
-- Dependencies: 240
-- Name: TABLE trabajo_empleado; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.trabajo_empleado TO rol_rrhh;


-- Completed on 2026-05-16 00:10:26

--
-- PostgreSQL database dump complete
--

\unrestrict KVPLdhmDkv4ZNZDw3LOFPnjb7VyztUpfTC5mFp3yy12n1gl9nR6wki9ynB3bspo

