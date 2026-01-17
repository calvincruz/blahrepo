--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: playerstats; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.playerstats (
    user_id integer,
    numberofgames integer,
    highscore integer
);


ALTER TABLE public.playerstats OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(50)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: playerstats; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.playerstats VALUES (64, 5, 700);
INSERT INTO public.playerstats VALUES (67, 2, 344);
INSERT INTO public.playerstats VALUES (1, 11, 2);
INSERT INTO public.playerstats VALUES (53, 1, 10000);
INSERT INTO public.playerstats VALUES (66, 5, 61);
INSERT INTO public.playerstats VALUES (55, 0, 466);
INSERT INTO public.playerstats VALUES (54, 0, 324);
INSERT INTO public.playerstats VALUES (57, 0, 152);
INSERT INTO public.playerstats VALUES (56, 0, 110);
INSERT INTO public.playerstats VALUES (58, 0, 10);
INSERT INTO public.playerstats VALUES (59, 1, 18);
INSERT INTO public.playerstats VALUES (61, 2, 54);
INSERT INTO public.playerstats VALUES (60, 5, 93);
INSERT INTO public.playerstats VALUES (63, 2, 361);
INSERT INTO public.playerstats VALUES (62, 5, 89);
INSERT INTO public.playerstats VALUES (65, 2, 170);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'calvincruz');
INSERT INTO public.users VALUES (2, 'user_1768684808881');
INSERT INTO public.users VALUES (3, 'user_1768684808880');
INSERT INTO public.users VALUES (4, 'user_1768684914968');
INSERT INTO public.users VALUES (5, 'user_1768684914967');
INSERT INTO public.users VALUES (6, 'user_1768685468604');
INSERT INTO public.users VALUES (7, 'user_1768685468603');
INSERT INTO public.users VALUES (8, 'user_1768685577144');
INSERT INTO public.users VALUES (9, 'user_1768685577143');
INSERT INTO public.users VALUES (10, 'user_1768685713598');
INSERT INTO public.users VALUES (11, 'user_1768685713597');
INSERT INTO public.users VALUES (12, 'user_1768686479698');
INSERT INTO public.users VALUES (13, 'user_1768686479697');
INSERT INTO public.users VALUES (14, 'user_1768686602274');
INSERT INTO public.users VALUES (15, 'user_1768686602273');
INSERT INTO public.users VALUES (16, 'user_1768686655521');
INSERT INTO public.users VALUES (17, 'user_1768686655520');
INSERT INTO public.users VALUES (18, 'user_1768686680501');
INSERT INTO public.users VALUES (19, 'user_1768686680500');
INSERT INTO public.users VALUES (20, 'user_1768686791727');
INSERT INTO public.users VALUES (21, 'user_1768686791726');
INSERT INTO public.users VALUES (22, 'user_1768686934198');
INSERT INTO public.users VALUES (23, 'user_1768686934197');
INSERT INTO public.users VALUES (24, 'user_1768686955694');
INSERT INTO public.users VALUES (25, 'user_1768686955693');
INSERT INTO public.users VALUES (26, 'user_1768686997095');
INSERT INTO public.users VALUES (27, 'user_1768686997094');
INSERT INTO public.users VALUES (28, 'newUser');
INSERT INTO public.users VALUES (29, 'user_1768687519810');
INSERT INTO public.users VALUES (30, 'user_1768687519809');
INSERT INTO public.users VALUES (31, 'user_1768687661517');
INSERT INTO public.users VALUES (32, 'user_1768687661516');
INSERT INTO public.users VALUES (33, 'user_1768687841601');
INSERT INTO public.users VALUES (34, 'user_1768687841600');
INSERT INTO public.users VALUES (35, 'user_1768687956469');
INSERT INTO public.users VALUES (36, 'user_1768687956468');
INSERT INTO public.users VALUES (37, 'user_1768687962235');
INSERT INTO public.users VALUES (38, 'user_1768687962234');
INSERT INTO public.users VALUES (39, 'user_1768687965478');
INSERT INTO public.users VALUES (40, 'user_1768687965477');
INSERT INTO public.users VALUES (41, 'user_1768688259376');
INSERT INTO public.users VALUES (42, 'user_1768688259375');
INSERT INTO public.users VALUES (43, 'user_1768688479634');
INSERT INTO public.users VALUES (44, 'user_1768688479633');
INSERT INTO public.users VALUES (45, 'user_1768688568211');
INSERT INTO public.users VALUES (46, 'user_1768688568210');
INSERT INTO public.users VALUES (47, 'user_1768688666625');
INSERT INTO public.users VALUES (48, 'user_1768688666624');
INSERT INTO public.users VALUES (49, 'user_1768688748233');
INSERT INTO public.users VALUES (50, 'user_1768688748232');
INSERT INTO public.users VALUES (51, 'test');
INSERT INTO public.users VALUES (52, 'test1');
INSERT INTO public.users VALUES (53, 'test3');
INSERT INTO public.users VALUES (54, 'user_1768690429192');
INSERT INTO public.users VALUES (55, 'user_1768690429191');
INSERT INTO public.users VALUES (56, 'user_1768690448514');
INSERT INTO public.users VALUES (57, 'user_1768690448513');
INSERT INTO public.users VALUES (58, 'test4');
INSERT INTO public.users VALUES (59, 'test5');
INSERT INTO public.users VALUES (60, 'user_1768690674933');
INSERT INTO public.users VALUES (61, 'user_1768690674932');
INSERT INTO public.users VALUES (62, 'user_1768690682130');
INSERT INTO public.users VALUES (63, 'user_1768690682129');
INSERT INTO public.users VALUES (64, 'user_1768690690617');
INSERT INTO public.users VALUES (65, 'user_1768690690616');
INSERT INTO public.users VALUES (66, 'user_1768690695120');
INSERT INTO public.users VALUES (67, 'user_1768690695119');


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 67, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: playerstats playerstats_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.playerstats
    ADD CONSTRAINT playerstats_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

