--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    color character varying(20),
    is_real boolean
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    description text,
    scale double precision
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
    name character varying(30) NOT NULL,
    age integer,
    descpription text,
    distance boolean,
    planet_id integer
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
    name character varying(30) NOT NULL,
    age integer,
    description text,
    distance double precision,
    star_id integer,
    has_life boolean,
    type numeric
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
    name character varying(30) NOT NULL,
    age integer,
    description text,
    distance double precision,
    galaxy_id integer
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'venus', 'constelacion de venus', 'purpura', true);
INSERT INTO public.constellation VALUES (2, 'canver', 'constelacion de cancer', 'roja', true);
INSERT INTO public.constellation VALUES (3, 'piscis', 'constelacion de piscis', 'azul', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'nombre', 2545, 'descripcion', 25);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 2342342, 'de donde viene shun', 234234);
INSERT INTO public.galaxy VALUES (3, 'GALAXY2', 2342342, 'GALAXIA 2', 234234);
INSERT INTO public.galaxy VALUES (4, 'GALAXY3', 2342342, 'GALAXIA 3', 234234);
INSERT INTO public.galaxy VALUES (5, 'GALAXY4', 2342342, 'GALAXIA 4', 234234);
INSERT INTO public.galaxy VALUES (6, 'GALAXY5', 2342342, 'GALAXIA 5', 234234);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (5, 'MOON1', 234, 'ESTA ES MOOON 1', true, 1);
INSERT INTO public.moon VALUES (6, 'moon2', 232, 'esta es la luna 2', NULL, 5);
INSERT INTO public.moon VALUES (7, 'moon3', 232, 'esta es la luna 3', NULL, 6);
INSERT INTO public.moon VALUES (8, 'moon4', 232, 'esta es la luna 4', NULL, 6);
INSERT INTO public.moon VALUES (9, 'moon5', 232, 'esta es la luna 5', NULL, 6);
INSERT INTO public.moon VALUES (10, 'moon6', 232, 'esta es la luna 6', NULL, 6);
INSERT INTO public.moon VALUES (11, 'moon7', 232, 'esta es la luna 7', NULL, 6);
INSERT INTO public.moon VALUES (12, 'moon8', 232, 'esta es la luna 8', NULL, 7);
INSERT INTO public.moon VALUES (13, 'moon9', 232, 'esta es la luna 9', NULL, 7);
INSERT INTO public.moon VALUES (14, 'moon10', 232, 'esta es la luna 10', NULL, 7);
INSERT INTO public.moon VALUES (15, 'moon11', 232, 'esta es la luna 11', NULL, 7);
INSERT INTO public.moon VALUES (16, 'moon12', 232, 'esta es la luna 12', NULL, 8);
INSERT INTO public.moon VALUES (17, 'moon13', 232, 'esta es 3a luna 12', NULL, 8);
INSERT INTO public.moon VALUES (18, 'moon14', 232, 'esta es 3a luna 14', NULL, 8);
INSERT INTO public.moon VALUES (19, 'moon15', 232, 'esta es 3a luna 15', NULL, 9);
INSERT INTO public.moon VALUES (20, 'moon16', 232, 'esta es 3a luna 16', NULL, 9);
INSERT INTO public.moon VALUES (21, 'moon17', 232, 'esta es 3a luna 17', NULL, 10);
INSERT INTO public.moon VALUES (22, 'moon18', 232, 'esta es 3a luna 18', NULL, 10);
INSERT INTO public.moon VALUES (23, 'moon19', 232, 'esta es 3a luna 19', NULL, 10);
INSERT INTO public.moon VALUES (24, 'moon20', 232, 'esta es 3a luna 20', NULL, 15);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 23, 'PLANETA 1', 23423.33, 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'planeta2', 23423, 'este es el planeta 2', NULL, 5, NULL, 1);
INSERT INTO public.planet VALUES (6, 'planeta3', 23423, 'este es el planeta 3', NULL, 7, NULL, 1);
INSERT INTO public.planet VALUES (7, 'planeta4', 23423, 'este es el planeta 4', NULL, 7, NULL, 1);
INSERT INTO public.planet VALUES (8, 'planeta5', 23423, 'este es el planeta 5', NULL, 7, NULL, 1);
INSERT INTO public.planet VALUES (9, 'planeta6', 23423, 'este es el planeta 6', NULL, 7, NULL, 1);
INSERT INTO public.planet VALUES (10, 'planeta7', 23423, 'este es el planeta 7', NULL, 8, NULL, 1);
INSERT INTO public.planet VALUES (11, 'planeta8', 23423, 'este es el planeta 8', NULL, 8, NULL, 1);
INSERT INTO public.planet VALUES (12, 'planeta9', 23423, 'este es el planeta 9', NULL, 8, NULL, 1);
INSERT INTO public.planet VALUES (13, 'planeta10', 23423, 'este es el planeta 10', NULL, 8, NULL, 1);
INSERT INTO public.planet VALUES (14, 'planeta11', 23423, 'este es el planeta 11', NULL, 8, NULL, 1);
INSERT INTO public.planet VALUES (15, 'planeta12', 23423, 'este es el planeta 12', NULL, 8, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'estrellita', 50, 'esto es una fuckin star', 892.23, 1);
INSERT INTO public.star VALUES (5, 'estrellita4', 234, 'fucking star44', 2342, 1);
INSERT INTO public.star VALUES (6, 'estrellita3', 234, 'fucking star3', 2342, 1);
INSERT INTO public.star VALUES (7, 'estrellita2', 234, 'fucking star', 2342, 1);
INSERT INTO public.star VALUES (8, 'estrella1', 2342342, 'GALAXIA 5', 234234, 2);
INSERT INTO public.star VALUES (9, 'estrella2', 2342342, 'GALAXIA 2', 234234, 2);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

