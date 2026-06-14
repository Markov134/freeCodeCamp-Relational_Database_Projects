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
    name character varying(255),
    lightyears integer,
    location integer DEFAULT 0 NOT NULL,
    coordinates integer,
    elements text
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
    name character varying(255),
    craters integer,
    planet_id integer NOT NULL,
    coordinates integer
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
-- Name: pattern; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.pattern (
    pattern_id integer NOT NULL,
    name character varying(255),
    pattern_index integer NOT NULL
);


ALTER TABLE public.pattern OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255),
    gravity numeric,
    star_id integer NOT NULL,
    coordinates integer
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
    name character varying(255),
    supernova boolean,
    mainsequence boolean,
    galaxy_id integer NOT NULL,
    coordinates integer
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

INSERT INTO public.galaxy VALUES (1, 'galaxy1', NULL, 0, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'milky way', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (3, 'twix way', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (4, 'kitkat way', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (5, 'snickers way', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (6, 'chocolate way', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (7, 'eclair way', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (8, 'bonbon way', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (9, 'mars way', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (10, 'galaxy8', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (11, 'galaxy9', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (12, 'galaxy10', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (13, 'galaxy11', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (14, 'galaxy12', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (15, 'galaxy13', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (16, 'galaxy14', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (17, 'galaxy15', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (18, 'galaxy16', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (19, 'galaxy17', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (20, 'galaxy18', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (21, 'galaxy19', 30, 0, NULL, 'hydrogen');
INSERT INTO public.galaxy VALUES (22, 'galaxy20', 30, 0, NULL, 'hydrogen');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'lunar', 159, 1, NULL);
INSERT INTO public.moon VALUES (2, 'lunar', NULL, 1, NULL);
INSERT INTO public.moon VALUES (3, 'lunar', NULL, 2, NULL);
INSERT INTO public.moon VALUES (4, 'lunar', NULL, 5, NULL);
INSERT INTO public.moon VALUES (5, 'lunar', NULL, 6, NULL);
INSERT INTO public.moon VALUES (6, 'lunar', NULL, 7, NULL);
INSERT INTO public.moon VALUES (7, 'lunar', NULL, 8, NULL);
INSERT INTO public.moon VALUES (8, 'lunar', NULL, 9, NULL);
INSERT INTO public.moon VALUES (9, 'lunar', NULL, 10, NULL);
INSERT INTO public.moon VALUES (10, 'lunar', NULL, 11, NULL);
INSERT INTO public.moon VALUES (11, 'lunar', NULL, 12, NULL);
INSERT INTO public.moon VALUES (12, 'lunar', NULL, 13, NULL);
INSERT INTO public.moon VALUES (13, 'lunar', NULL, 14, NULL);
INSERT INTO public.moon VALUES (14, 'lunar', NULL, 15, NULL);
INSERT INTO public.moon VALUES (15, 'lunar', NULL, 16, NULL);
INSERT INTO public.moon VALUES (16, 'lunar', NULL, 17, NULL);
INSERT INTO public.moon VALUES (17, 'lunar', NULL, 18, NULL);
INSERT INTO public.moon VALUES (18, 'lunar', NULL, 19, NULL);
INSERT INTO public.moon VALUES (19, 'lunar', NULL, 20, NULL);
INSERT INTO public.moon VALUES (20, 'lunar', NULL, 21, NULL);
INSERT INTO public.moon VALUES (21, 'lunar', NULL, 22, NULL);
INSERT INTO public.moon VALUES (22, 'lunar', NULL, 23, NULL);
INSERT INTO public.moon VALUES (23, 'lunar', NULL, 24, NULL);
INSERT INTO public.moon VALUES (24, 'lunar', NULL, 25, NULL);
INSERT INTO public.moon VALUES (25, 'lunar', NULL, 26, NULL);
INSERT INTO public.moon VALUES (26, 'lunar', NULL, 27, NULL);


--
-- Data for Name: pattern; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.pattern VALUES (0, 'blue gem', 661);
INSERT INTO public.pattern VALUES (1, 'blue gem', 661);
INSERT INTO public.pattern VALUES (2, 'blue gem', 661);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 9.8, 5, NULL);
INSERT INTO public.planet VALUES (2, 'Earth', 9.8, 5, NULL);
INSERT INTO public.planet VALUES (5, 'Venus', NULL, 7, NULL);
INSERT INTO public.planet VALUES (6, 'Mars', NULL, 8, NULL);
INSERT INTO public.planet VALUES (7, 'JUTPIER', NULL, 9, NULL);
INSERT INTO public.planet VALUES (8, 'Saturn', NULL, 10, NULL);
INSERT INTO public.planet VALUES (9, 'Uranus', NULL, 11, NULL);
INSERT INTO public.planet VALUES (10, 'Pluto', NULL, 12, NULL);
INSERT INTO public.planet VALUES (11, 'Eco', NULL, 13, NULL);
INSERT INTO public.planet VALUES (12, 'Sip', NULL, 14, NULL);
INSERT INTO public.planet VALUES (13, 'Earth', NULL, 15, NULL);
INSERT INTO public.planet VALUES (14, 'Earth', NULL, 16, NULL);
INSERT INTO public.planet VALUES (15, 'Earth', NULL, 17, NULL);
INSERT INTO public.planet VALUES (16, 'Earth', NULL, 18, NULL);
INSERT INTO public.planet VALUES (17, 'Earth', NULL, 19, NULL);
INSERT INTO public.planet VALUES (18, 'Earth', NULL, 20, NULL);
INSERT INTO public.planet VALUES (19, 'Earth', NULL, 21, NULL);
INSERT INTO public.planet VALUES (20, 'Earth', NULL, 22, NULL);
INSERT INTO public.planet VALUES (21, 'Earth', NULL, 23, NULL);
INSERT INTO public.planet VALUES (22, 'Earth', NULL, 24, NULL);
INSERT INTO public.planet VALUES (23, 'Earth', NULL, 25, NULL);
INSERT INTO public.planet VALUES (24, 'Earth', NULL, 25, NULL);
INSERT INTO public.planet VALUES (25, 'Earth', NULL, 26, NULL);
INSERT INTO public.planet VALUES (26, 'Earth', NULL, 27, NULL);
INSERT INTO public.planet VALUES (27, 'Earth', NULL, 28, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (5, 'B201', false, false, 1, NULL);
INSERT INTO public.star VALUES (7, 'Mars', false, NULL, 2, NULL);
INSERT INTO public.star VALUES (8, 'Venus', false, NULL, 3, NULL);
INSERT INTO public.star VALUES (9, 'Jupiter', false, NULL, 3, NULL);
INSERT INTO public.star VALUES (10, 'Jupiter', false, NULL, 4, NULL);
INSERT INTO public.star VALUES (11, 'Saturn', false, NULL, 5, NULL);
INSERT INTO public.star VALUES (12, 'Venus', false, NULL, 3, NULL);
INSERT INTO public.star VALUES (13, 'Neptune', false, NULL, 6, NULL);
INSERT INTO public.star VALUES (14, 'B230', false, NULL, 7, NULL);
INSERT INTO public.star VALUES (15, 'C230', false, NULL, 8, NULL);
INSERT INTO public.star VALUES (16, 'D230', false, NULL, 8, NULL);
INSERT INTO public.star VALUES (17, 'C230', false, NULL, 9, NULL);
INSERT INTO public.star VALUES (18, 'E230', false, NULL, 10, NULL);
INSERT INTO public.star VALUES (19, 'F230', false, NULL, 11, NULL);
INSERT INTO public.star VALUES (20, 'G230', false, NULL, 12, NULL);
INSERT INTO public.star VALUES (21, 'H230', false, NULL, 13, NULL);
INSERT INTO public.star VALUES (22, 'I230', false, NULL, 14, NULL);
INSERT INTO public.star VALUES (23, 'J230', false, NULL, 15, NULL);
INSERT INTO public.star VALUES (24, 'K230', false, NULL, 16, NULL);
INSERT INTO public.star VALUES (25, 'L230', false, NULL, 17, NULL);
INSERT INTO public.star VALUES (26, 'M230', false, NULL, 18, NULL);
INSERT INTO public.star VALUES (27, 'N230', false, NULL, 19, NULL);
INSERT INTO public.star VALUES (28, 'O230', false, NULL, 20, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 22, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 28, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 28, true);


--
-- Name: galaxy galaxy_coordinates_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_coordinates_key UNIQUE (coordinates);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_coordinates_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_coordinates_key UNIQUE (coordinates);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: pattern pattern_pattern_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pattern
    ADD CONSTRAINT pattern_pattern_id_key UNIQUE (pattern_id);


--
-- Name: pattern pattern_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pattern
    ADD CONSTRAINT pattern_pkey PRIMARY KEY (pattern_id);


--
-- Name: planet planet_coordinates_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_coordinates_key UNIQUE (coordinates);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_coordinates_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_coordinates_key UNIQUE (coordinates);


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

