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
-- Name: astronomy_school; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomy_school (
    astronomy_school_id integer NOT NULL,
    name character varying(30),
    tuition integer NOT NULL
);


ALTER TABLE public.astronomy_school OWNER TO freecodecamp;

--
-- Name: astronomy_school_astronomy_school_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomy_school_astronomy_school_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomy_school_astronomy_school_id_seq OWNER TO freecodecamp;

--
-- Name: astronomy_school_astronomy_school_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomy_school_astronomy_school_id_seq OWNED BY public.astronomy_school.astronomy_school_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    discovered_by text,
    age_in_b_years integer,
        visible boolean NOT NULL
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
    name character varying(20),
    landed boolean,
    coolness_rating numeric(2,1),
        planet_id integer NOT NULL
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
    name character varying(20),
    mass_to_earth numeric(2,1),
    water boolean,
    juice boolean,
    star_id integer NOT NULL
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
    name character varying(20),
    claimed boolean,
    fruit_lookalike text,
    galaxy_id integer NOT NULL
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
-- Name: astronomy_school astronomy_school_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomy_school ALTER COLUMN astronomy_school_id SET DEFAULT nextval('public.astronomy_school_astronomy_school_id_seq'::regclass);


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
-- Data for Name: astronomy_school; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomy_school VALUES (1, 'The Star Galore Institution', 2300);
INSERT INTO public.astronomy_school VALUES (2, 'Academy of Sky Stuff', 1900);
INSERT INTO public.astronomy_school VALUES (3, 'The Universe University', 3100);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Big Mack', 'Ron Mackdoneld', 53, true);
INSERT INTO public.galaxy VALUES (2, 'Dealer Joes', 'Joe the Dealer', 95, false);
INSERT INTO public.galaxy VALUES (3, 'Tyde', 'Deter Jint', 129, false);
INSERT INTO public.galaxy VALUES (4, 'Woll Street', 'Erica your bff', 82, true);
INSERT INTO public.galaxy VALUES (5, 'Paneenee', 'Dennie Deveto', 118, false);
INSERT INTO public.galaxy VALUES (6, 'Jungol Freak', 'Lindsee Lowhen', 39, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', true, 3.2, 1);
INSERT INTO public.moon VALUES (2, 'Ze Moon', false, 2.5, 2);
INSERT INTO public.moon VALUES (3, 'Le Moon', true, 4.5, 3);
INSERT INTO public.moon VALUES (4, 'Da Moon', false, 4.3, 4);
INSERT INTO public.moon VALUES (5, 'The Moolala', true, 3.1, 5);
INSERT INTO public.moon VALUES (6, 'Le Moosie', false, 2.8, 6);
INSERT INTO public.moon VALUES (7, 'Ze Moosiac', true, 5.4, 7);
INSERT INTO public.moon VALUES (8, 'Da Moof', false, 3.6, 8);
INSERT INTO public.moon VALUES (9, 'De Chonky Moon', true, 4.8, 9);
INSERT INTO public.moon VALUES (10, 'The Moonest Moon', false, 3.6, 10);
INSERT INTO public.moon VALUES (11, 'Ze Humongous Moon', true, 1.7, 1);
INSERT INTO public.moon VALUES (12, 'La Moonella', false, 2.6, 2);
INSERT INTO public.moon VALUES (13, 'The Muffin Moon', true, 3.3, 3);
INSERT INTO public.moon VALUES (14, 'Da Mloof', false, 5.2, 4);
INSERT INTO public.moon VALUES (15, 'Moonerang', true, 2.5, 5);
INSERT INTO public.moon VALUES (16, 'Lil MooMoo', false, 4.9, 6);
INSERT INTO public.moon VALUES (17, 'La Moofia', true, 1.3, 7);
INSERT INTO public.moon VALUES (18, 'Moonkey', false, 2.2, 8);
INSERT INTO public.moon VALUES (19, 'The Moonarchy', true, 3.8, 9);
INSERT INTO public.moon VALUES (20, 'Baby Moon', false, 3.6, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Applebees', 3.2, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Beef Jerky', 0.8, false, false, 2);
INSERT INTO public.planet VALUES (3, 'Corporate', 8.3, true, false, 3);
INSERT INTO public.planet VALUES (4, 'Dolly Parton', 1.0, false, true, 4);
INSERT INTO public.planet VALUES (5, 'Effew', 0.7, true, true, 5);
INSERT INTO public.planet VALUES (6, 'Flounder', 5.2, true, false, 6);
INSERT INTO public.planet VALUES (7, 'Goop', 2.8, false, true, 1);
INSERT INTO public.planet VALUES (8, 'Hoisin Sauce', 0.6, true, true, 2);
INSERT INTO public.planet VALUES (9, 'Implants', 4.3, false, false, 3);
INSERT INTO public.planet VALUES (10, 'Johny Deppp', 2.2, false, true, 4);
INSERT INTO public.planet VALUES (11, 'Krogers', 1.4, true, true, 5);
INSERT INTO public.planet VALUES (12, 'Loofa Toofa', 0.7, false, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Lettis', true, 'apple', 1);
INSERT INTO public.star VALUES (2, 'Empanada', true, 'banana', 2);
INSERT INTO public.star VALUES (3, 'Blu Jelli', false, 'grape', 3);
INSERT INTO public.star VALUES (4, 'Blow Pop', false, 'pinkish grape', 4);
INSERT INTO public.star VALUES (5, 'Proshoodo', true, 'guava', 5);
INSERT INTO public.star VALUES (6, 'Kone', false, 'kiwi', 6);


--
-- Name: astronomy_school_astronomy_school_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomy_school_astronomy_school_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astronomy_school astronomy_school_astronomy_school_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomy_school
    ADD CONSTRAINT astronomy_school_astronomy_school_id_key UNIQUE (astronomy_school_id);


--
-- Name: astronomy_school astronomy_school_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomy_school
    ADD CONSTRAINT astronomy_school_pkey PRIMARY KEY (astronomy_school_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

