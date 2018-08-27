--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

-- Started on 2018-08-27 11:21:12 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2871 (class 1262 OID 16531)
-- Name: supermarket_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE supermarket_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE supermarket_db OWNER TO postgres;

\connect supermarket_db

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12964)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2873 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 199 (class 1259 OID 16565)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    role_id integer NOT NULL,
    role_name character varying(255)
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16563)
-- Name: roles_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_role_id_seq OWNER TO postgres;

--
-- TOC entry 2874 (class 0 OID 0)
-- Dependencies: 198
-- Name: roles_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_role_id_seq OWNED BY public.roles.role_id;


--
-- TOC entry 203 (class 1259 OID 16591)
-- Name: sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales (
    sale_id integer NOT NULL,
    stock_id integer,
    quantity_sold integer,
    total_price integer,
    sales_date date,
    sales_attendant_id integer
);


ALTER TABLE public.sales OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16589)
-- Name: sales_sale_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_sale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sales_sale_id_seq OWNER TO postgres;

--
-- TOC entry 2875 (class 0 OID 0)
-- Dependencies: 202
-- Name: sales_sale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sales_sale_id_seq OWNED BY public.sales.sale_id;


--
-- TOC entry 197 (class 1259 OID 16544)
-- Name: stock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stock (
    stock_id integer NOT NULL,
    item_name character varying(255),
    purchase_price integer,
    sale_price integer,
    stock_date date
);


ALTER TABLE public.stock OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16542)
-- Name: stock_stock_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stock_stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stock_stock_id_seq OWNER TO postgres;

--
-- TOC entry 2876 (class 0 OID 0)
-- Dependencies: 196
-- Name: stock_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stock_stock_id_seq OWNED BY public.stock.stock_id;


--
-- TOC entry 201 (class 1259 OID 16573)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_email character varying(255),
    user_password character varying(255),
    admin_role_id integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16571)
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO postgres;

--
-- TOC entry 2877 (class 0 OID 0)
-- Dependencies: 200
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- TOC entry 2729 (class 2604 OID 16568)
-- Name: roles role_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN role_id SET DEFAULT nextval('public.roles_role_id_seq'::regclass);


--
-- TOC entry 2731 (class 2604 OID 16594)
-- Name: sales sale_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales ALTER COLUMN sale_id SET DEFAULT nextval('public.sales_sale_id_seq'::regclass);


--
-- TOC entry 2728 (class 2604 OID 16547)
-- Name: stock stock_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock ALTER COLUMN stock_id SET DEFAULT nextval('public.stock_stock_id_seq'::regclass);


--
-- TOC entry 2730 (class 2604 OID 16576)
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- TOC entry 2735 (class 2606 OID 16570)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);


--
-- TOC entry 2741 (class 2606 OID 16596)
-- Name: sales sales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (sale_id);


--
-- TOC entry 2733 (class 2606 OID 16549)
-- Name: stock stock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (stock_id);


--
-- TOC entry 2737 (class 2606 OID 16581)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 2739 (class 2606 OID 16583)
-- Name: users users_user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_email_key UNIQUE (user_email);


--
-- TOC entry 2744 (class 2606 OID 16602)
-- Name: sales sales_sales_attendant_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_sales_attendant_id_fkey FOREIGN KEY (sales_attendant_id) REFERENCES public.users(user_id);


--
-- TOC entry 2743 (class 2606 OID 16597)
-- Name: sales sales_stock_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_stock_id_fkey FOREIGN KEY (stock_id) REFERENCES public.stock(stock_id);


--
-- TOC entry 2742 (class 2606 OID 16584)
-- Name: users users_admin_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_admin_role_id_fkey FOREIGN KEY (admin_role_id) REFERENCES public.roles(role_id);


-- Completed on 2018-08-27 11:21:12 EAT

--
-- PostgreSQL database dump complete
--

