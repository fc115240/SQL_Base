--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Debian 10.6-1.pgdg90+1)
-- Dumped by pg_dump version 10.6 (Debian 10.6-1.pgdg90+1)

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
-- Name: lesson8; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA lesson8;


ALTER SCHEMA lesson8 OWNER TO postgres;

--
-- Name: set_like(integer, integer); Type: FUNCTION; Schema: lesson8; Owner: postgres
--

CREATE FUNCTION lesson8.set_like(uid integer, eid integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$ 
DECLARE 
   x integer;
BEGIN
SELECT id INTO x FROM lesson8.likes WHERE essence_id = eid and user_id = uid LIMIT 1;
IF x IS NULL THEN
   INSERT INTO lesson8.likes (user_id, essence_id) VALUES (uid, eid);
   RETURN 1; 
ELSE
   DELETE FROM lesson8.likes WHERE id = x;
   RETURN -1; 
END IF;
END; 
$$;


ALTER FUNCTION lesson8.set_like(uid integer, eid integer) OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: essence; Type: TABLE; Schema: lesson8; Owner: postgres
--

CREATE TABLE lesson8.essence (
    id integer NOT NULL,
    essence_name character(45) NOT NULL
);


ALTER TABLE lesson8.essence OWNER TO postgres;

--
-- Name: essence_id_seq; Type: SEQUENCE; Schema: lesson8; Owner: postgres
--

ALTER TABLE lesson8.essence ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME lesson8.essence_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: likes; Type: TABLE; Schema: lesson8; Owner: postgres
--

CREATE TABLE lesson8.likes (
    id integer NOT NULL,
    user_id integer NOT NULL,
    essence_id integer NOT NULL
);


ALTER TABLE lesson8.likes OWNER TO postgres;

--
-- Name: likes_id_seq; Type: SEQUENCE; Schema: lesson8; Owner: postgres
--

ALTER TABLE lesson8.likes ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME lesson8.likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: users; Type: TABLE; Schema: lesson8; Owner: postgres
--

CREATE TABLE lesson8.users (
    id integer NOT NULL,
    user_name character(45) NOT NULL
);


ALTER TABLE lesson8.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: lesson8; Owner: postgres
--

ALTER TABLE lesson8.users ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME lesson8.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: essence; Type: TABLE DATA; Schema: lesson8; Owner: postgres
--

COPY lesson8.essence (id, essence_name) FROM stdin;
1	essence1                                     
2	essence2                                     
3	essence3                                     
4	essence4                                     
5	essence5                                     
6	essence6                                     
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: lesson8; Owner: postgres
--

COPY lesson8.likes (id, user_id, essence_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	2	1
5	2	2
6	2	3
7	2	4
8	3	5
9	4	5
10	5	1
11	5	2
12	5	3
13	5	4
14	5	5
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: lesson8; Owner: postgres
--

COPY lesson8.users (id, user_name) FROM stdin;
1	user1                                        
2	user2                                        
3	user3                                        
4	user4                                        
5	user5                                        
6	user6                                        
\.


--
-- Name: essence_id_seq; Type: SEQUENCE SET; Schema: lesson8; Owner: postgres
--

SELECT pg_catalog.setval('lesson8.essence_id_seq', 6, true);


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: lesson8; Owner: postgres
--

SELECT pg_catalog.setval('lesson8.likes_id_seq', 21, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: lesson8; Owner: postgres
--

SELECT pg_catalog.setval('lesson8.users_id_seq', 6, true);


--
-- Name: essence essence_pkey; Type: CONSTRAINT; Schema: lesson8; Owner: postgres
--

ALTER TABLE ONLY lesson8.essence
    ADD CONSTRAINT essence_pkey PRIMARY KEY (id);


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: lesson8; Owner: postgres
--

ALTER TABLE ONLY lesson8.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: likes user_to_essence_idx; Type: CONSTRAINT; Schema: lesson8; Owner: postgres
--

ALTER TABLE ONLY lesson8.likes
    ADD CONSTRAINT user_to_essence_idx UNIQUE (user_id, essence_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: lesson8; Owner: postgres
--

ALTER TABLE ONLY lesson8.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: likes fk_likes_essence; Type: FK CONSTRAINT; Schema: lesson8; Owner: postgres
--

ALTER TABLE ONLY lesson8.likes
    ADD CONSTRAINT fk_likes_essence FOREIGN KEY (essence_id) REFERENCES lesson8.essence(id);


--
-- Name: likes fk_likes_user; Type: FK CONSTRAINT; Schema: lesson8; Owner: postgres
--

ALTER TABLE ONLY lesson8.likes
    ADD CONSTRAINT fk_likes_user FOREIGN KEY (user_id) REFERENCES lesson8.users(id);


--
-- PostgreSQL database dump complete
--
