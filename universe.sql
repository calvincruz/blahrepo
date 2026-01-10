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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age integer,
    mass_in_kg numeric(4,1),
    "exists" boolean,
    parent boolean,
    nonull1 boolean NOT NULL,
    nonull2 boolean NOT NULL,
    uni integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age integer,
    mass_in_kg numeric(4,1),
    planet_id integer,
    "exists" boolean,
    notnull1 boolean NOT NULL,
    notnull2 boolean NOT NULL,
    uni integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age integer,
    description text,
    mass_in_kg numeric(4,1),
    habitable boolean,
    evidence_of_life boolean,
    star_id integer,
    notnull1 boolean NOT NULL,
    notnull2 boolean NOT NULL,
    uni integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age integer,
    classification text,
    mass_in_kg numeric(4,1),
    galaxy_id integer,
    notnull1 boolean NOT NULL,
    notnull2 boolean NOT NULL,
    uni integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: uselesstable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.uselesstable (
    uni integer,
    notnull2 boolean NOT NULL,
    notnull1 boolean NOT NULL,
    uselesstable_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.uselesstable OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100, 100.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 50, 50.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'crazy', 25, 25.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (4, 'more crazy', 85, 85.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'craziest', 200, 999.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'tame', 2, 10.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (7, 'tame', 2, 10.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (8, 'tame', 2, 10.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (9, 'tame', 2, 10.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (10, 'tame', 2, 10.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (11, 'tame', 2, 10.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (12, 'tame', 2, 10.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (13, 'tame', 2, 10.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (14, 'tame', 2, 10.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (15, 'tame', 2, 10.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (16, 'tame', 2, 10.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (17, 'tame', 2, 10.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (18, 'tame', 2, 10.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (19, 'tame', 2, 10.0, true, true, false, true, NULL);
INSERT INTO public.galaxy VALUES (20, 'tame', 2, 10.0, true, true, false, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'ugh', 10, 10.0, 1, true, true, true, NULL);
INSERT INTO public.moon VALUES (2, 'ugh', 10, 10.0, 3, true, true, true, NULL);
INSERT INTO public.moon VALUES (3, 'ugh', 10, 10.0, 4, true, true, true, NULL);
INSERT INTO public.moon VALUES (4, 'ugh', 10, 10.0, 5, true, true, true, NULL);
INSERT INTO public.moon VALUES (5, 'ugh', 10, 10.0, 6, true, true, true, NULL);
INSERT INTO public.moon VALUES (6, 'ugh', 10, 10.0, 7, true, true, true, NULL);
INSERT INTO public.moon VALUES (7, 'ugh', 10, 10.0, 8, true, true, true, NULL);
INSERT INTO public.moon VALUES (8, 'ugh', 10, 10.0, 9, true, true, true, NULL);
INSERT INTO public.moon VALUES (9, 'ugh', 10, 10.0, 10, true, true, true, NULL);
INSERT INTO public.moon VALUES (10, 'ugh', 10, 10.0, 11, true, true, true, NULL);
INSERT INTO public.moon VALUES (11, 'ugh', 10, 10.0, 12, true, true, true, NULL);
INSERT INTO public.moon VALUES (12, 'ugh', 10, 10.0, 13, true, true, true, NULL);
INSERT INTO public.moon VALUES (13, 'ugh', 10, 10.0, 14, true, true, true, NULL);
INSERT INTO public.moon VALUES (14, 'ugh', 10, 10.0, 15, true, true, true, NULL);
INSERT INTO public.moon VALUES (15, 'ugh', 10, 10.0, 16, true, true, true, NULL);
INSERT INTO public.moon VALUES (16, 'ugh', 10, 10.0, 17, true, true, true, NULL);
INSERT INTO public.moon VALUES (17, 'ugh', 10, 10.0, 18, true, true, true, NULL);
INSERT INTO public.moon VALUES (19, 'ugh', 10, 10.0, 19, true, true, true, NULL);
INSERT INTO public.moon VALUES (20, 'ugh', 10, 10.0, 20, true, true, true, NULL);
INSERT INTO public.moon VALUES (21, 'ugh', 10, 10.0, 21, true, true, true, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earf', 45, 'bad planet', 215.0, false, false, 1, false, true, NULL);
INSERT INTO public.planet VALUES (3, 'planet', 450, 'the planet', 999.0, true, true, 3, false, true, NULL);
INSERT INTO public.planet VALUES (4, 'the the planet', 450, 'the the planet', 999.0, true, true, 4, false, true, NULL);
INSERT INTO public.planet VALUES (5, 'planet 5', 450, 'the 5th planet', 999.0, true, true, 5, false, true, NULL);
INSERT INTO public.planet VALUES (6, 'planet X', 450, 'the last planet', 999.0, true, true, 6, false, true, NULL);
INSERT INTO public.planet VALUES (7, 'Earth', 450, 'worst planet', 999.0, true, true, 7, false, true, NULL);
INSERT INTO public.planet VALUES (8, 'planet 5', 450, 'the 5th planet', 999.0, true, true, 8, false, true, NULL);
INSERT INTO public.planet VALUES (9, 'planet 5', 450, 'the 5th planet', 999.0, true, true, 9, false, true, NULL);
INSERT INTO public.planet VALUES (10, 'planet 5', 450, 'the 5th planet', 999.0, true, true, 10, false, true, NULL);
INSERT INTO public.planet VALUES (11, 'planet 5', 450, 'the 5th planet', 999.0, true, true, 11, false, true, NULL);
INSERT INTO public.planet VALUES (12, 'planet 5', 450, 'the 5th planet', 999.0, true, true, 12, false, true, NULL);
INSERT INTO public.planet VALUES (13, 'planet 5', 450, 'the 5th planet', 999.0, true, true, 13, false, true, NULL);
INSERT INTO public.planet VALUES (14, 'planet 5', 450, 'the 5th planet', 999.0, true, true, 14, false, true, NULL);
INSERT INTO public.planet VALUES (15, 'planet 5', 450, 'the 5th planet', 999.0, true, true, 15, false, true, NULL);
INSERT INTO public.planet VALUES (16, 'planet 5', 450, 'the 5th planet', 999.0, true, true, 16, false, true, NULL);
INSERT INTO public.planet VALUES (17, 'planet 5', 450, 'the 5th planet', 999.0, true, true, 17, false, true, NULL);
INSERT INTO public.planet VALUES (18, 'planet 5', 450, 'the 5th planet', 999.0, true, true, 18, false, true, NULL);
INSERT INTO public.planet VALUES (19, 'planet 5', 450, 'the 5th planet', 999.0, true, true, 19, false, true, NULL);
INSERT INTO public.planet VALUES (20, 'planet 5', 450, 'the 5th planet', 999.0, true, true, 20, false, true, NULL);
INSERT INTO public.planet VALUES (21, 'planet 5', 450, 'the 5th planet', 999.0, true, true, 21, false, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'one', 20, 'young star', 20.0, 1, false, true, NULL);
INSERT INTO public.star VALUES (3, 'two', 40, 'younger star', 202.0, 2, false, true, NULL);
INSERT INTO public.star VALUES (4, 'three', 40, 'youngest star', 202.0, 3, false, true, NULL);
INSERT INTO public.star VALUES (5, 'four', 40, 'oldest star', 202.0, 4, false, true, NULL);
INSERT INTO public.star VALUES (6, 'five', 40, 'coolest star', 205.0, 5, false, true, NULL);
INSERT INTO public.star VALUES (7, 'six', 45, 'ehh star', 215.0, 6, false, true, NULL);
INSERT INTO public.star VALUES (8, 'six', 45, 'ehh star', 215.0, 7, false, true, NULL);
INSERT INTO public.star VALUES (9, 'six', 45, 'ehh star', 215.0, 8, false, true, NULL);
INSERT INTO public.star VALUES (10, 'six', 45, 'ehh star', 215.0, 9, false, true, NULL);
INSERT INTO public.star VALUES (11, 'six', 45, 'ehh star', 215.0, 10, false, true, NULL);
INSERT INTO public.star VALUES (12, 'six', 45, 'ehh star', 215.0, 11, false, true, NULL);
INSERT INTO public.star VALUES (13, 'six', 45, 'ehh star', 215.0, 12, false, true, NULL);
INSERT INTO public.star VALUES (14, 'six', 45, 'ehh star', 215.0, 13, false, true, NULL);
INSERT INTO public.star VALUES (15, 'six', 45, 'ehh star', 215.0, 14, false, true, NULL);
INSERT INTO public.star VALUES (16, 'six', 45, 'ehh star', 215.0, 15, false, true, NULL);
INSERT INTO public.star VALUES (17, 'six', 45, 'ehh star', 215.0, 16, false, true, NULL);
INSERT INTO public.star VALUES (18, 'six', 45, 'ehh star', 215.0, 17, false, true, NULL);
INSERT INTO public.star VALUES (19, 'six', 45, 'ehh star', 215.0, 18, false, true, NULL);
INSERT INTO public.star VALUES (20, 'six', 45, 'ehh star', 215.0, 19, false, true, NULL);
INSERT INTO public.star VALUES (21, 'six', 45, 'ehh star', 215.0, 20, false, true, NULL);


--
-- Data for Name: uselesstable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.uselesstable VALUES (1, true, false, 1, NULL);
INSERT INTO public.uselesstable VALUES (2, true, false, 2, NULL);
INSERT INTO public.uselesstable VALUES (3, true, false, 3, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 21, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_uni_key UNIQUE (uni);


--
-- Name: moon moon_parent_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_parent_id_key UNIQUE (planet_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_uni_key UNIQUE (uni);


--
-- Name: planet planet_parent_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_parent_id_key UNIQUE (star_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_uni_key UNIQUE (uni);


--
-- Name: star star_parent_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_parent_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_uni_key UNIQUE (uni);


--
-- Name: uselesstable uselesstable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.uselesstable
    ADD CONSTRAINT uselesstable_pkey PRIMARY KEY (uselesstable_id);


--
-- Name: uselesstable uselesstable_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.uselesstable
    ADD CONSTRAINT uselesstable_uni_key UNIQUE (uni);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

