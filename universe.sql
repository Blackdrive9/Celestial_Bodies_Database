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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type text,
    description text,
    diameter numeric,
    distance_light_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: lifeform; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lifeform (
    name character varying(30) NOT NULL,
    lifeform_id integer NOT NULL,
    lifespan integer
);


ALTER TABLE public.lifeform OWNER TO freecodecamp;

--
-- Name: lifeform_id_sequence; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lifeform_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lifeform_id_sequence OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter numeric,
    has_atmosphere boolean,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    satellite integer,
    orbital_period numeric,
    period_or_rotation numeric,
    surface_gravity numeric,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_sequence; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_sequence OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    distance_from_earth numeric(20,2),
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_type text,
    description text,
    spectral_type character varying(30),
    pstarid integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lattea', 'Galassia a spirale barrata', 'La Via Lattea è la galassia che appartiene il nostro sistema solare', 100000, 100000);
INSERT INTO public.galaxy VALUES (2, 'L''Oggetto di Hoag', 'Galassia peculiare', 'È una galassia di aspetto non convenzionale, conosciuto come galassia ad anello', 121000, 600000000);
INSERT INTO public.galaxy VALUES (3, 'Galassia Sombrero', 'Galassia a spirale', 'La galassia Sombrero è una galassia della costellazione della Vergine', 140000, 31000000);
INSERT INTO public.galaxy VALUES (4, 'Grande Nube di Magellano', 'Galassia nana irregolare', 'È una galassia nana, probabilmente satellite alla Via Lattea', 14000, 157000);
INSERT INTO public.galaxy VALUES (5, 'Galassia di Andromeda', 'Galassia a spirale', 'È la galassia più vicina alla Via Lattea', 220000, 2550000);
INSERT INTO public.galaxy VALUES (6, 'Galassia Tourbillon', 'Galassia in interazione', 'Composta da una galassia irregolare e da una galassia regolare', 100000, 27400000);


--
-- Data for Name: lifeform; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lifeform VALUES ('Human', 1, 110);
INSERT INTO public.lifeform VALUES ('Thargoid', 2, NULL);
INSERT INTO public.lifeform VALUES ('Obelisks', 3, 2400);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3476.2, false, false, NULL);
INSERT INTO public.moon VALUES (2, 'Fobos', 22.2, false, false, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 12.4, false, false, NULL);
INSERT INTO public.moon VALUES (4, 'Ganimede', 5262.4, true, false, NULL);
INSERT INTO public.moon VALUES (5, 'Callisto', 4820.6, true, false, NULL);
INSERT INTO public.moon VALUES (6, 'Io', 3642.6, true, false, NULL);
INSERT INTO public.moon VALUES (7, 'Europa', 3121.6, true, false, NULL);
INSERT INTO public.moon VALUES (8, 'Titano', 5150, true, false, NULL);
INSERT INTO public.moon VALUES (9, 'Rea', 1528, true, false, NULL);
INSERT INTO public.moon VALUES (10, 'Giapeto', 1471, false, false, NULL);
INSERT INTO public.moon VALUES (11, 'Dione', 1123.2, true, false, NULL);
INSERT INTO public.moon VALUES (12, 'Teti', 1066, false, false, NULL);
INSERT INTO public.moon VALUES (13, 'Titania', 1577.8, false, false, NULL);
INSERT INTO public.moon VALUES (14, 'Oberon', 1522.8, false, false, NULL);
INSERT INTO public.moon VALUES (15, 'Umbriel', 1169.4, false, false, NULL);
INSERT INTO public.moon VALUES (16, 'Ariel', 1157.8, false, false, NULL);
INSERT INTO public.moon VALUES (17, 'Miranda', 471.6, false, false, NULL);
INSERT INTO public.moon VALUES (18, 'Tritone', 2706.8, true, false, NULL);
INSERT INTO public.moon VALUES (19, 'Caronte', 1207, false, false, NULL);
INSERT INTO public.moon VALUES (20, 'Disnomia', 400, false, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 0, 87.969, 58.65, 3.7, false, NULL);
INSERT INTO public.planet VALUES (2, 'Venere', 0, 224.701, 243.69, 8.87, false, NULL);
INSERT INTO public.planet VALUES (3, 'Terra', 1, 365, 24, 9.81, true, NULL);
INSERT INTO public.planet VALUES (4, 'Marte', 2, 686.9600, 24, 3.69, false, NULL);
INSERT INTO public.planet VALUES (5, 'Giove', 92, 11.863, 0.413538021, 23.12, false, NULL);
INSERT INTO public.planet VALUES (6, 'Saturno', 83, 29.45, 0.445, 10.44, false, NULL);
INSERT INTO public.planet VALUES (7, 'Urano', 27, 84.011, 0.71833, 8.69, false, NULL);
INSERT INTO public.planet VALUES (8, 'Nettuno', 14, 60223.3528, 16.11, 11.15, false, NULL);
INSERT INTO public.planet VALUES (9, 'Plutone', 5, 90.560, 6.387230, 0.62, false, NULL);
INSERT INTO public.planet VALUES (10, 'Cerere', 0, 1679.667, 0.3781, 0.278, false, NULL);
INSERT INTO public.planet VALUES (11, 'Haumea', 2, 104266.23, 0.16314, 0.44, false, NULL);
INSERT INTO public.planet VALUES (12, 'Eris', 1, 203254.33, 8, 0.819, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1500000.00, 1, 'Sole', 'Nana gialla', 'È la stella madre del nostro sistema solare', 'G2 V', NULL, NULL);
INSERT INTO public.star VALUES (1800000.00, 2, 'Alnitak', 'Supergigante blu / Gigante blu', 'È un sistema solare formato da tre componenti, appartenente alla costellazione di Orione', 'O9.2lb, B1IV, B0III', NULL, NULL);
INSERT INTO public.star VALUES (240.00, 3, 'Bellatrix', 'Gigante blu', 'È una stella della costellazione di Orione', 'B2 III ', NULL, NULL);
INSERT INTO public.star VALUES (860.00, 4, 'Rigel', 'Super gigante blu', 'È una stella della costellazione di Orione', 'B8la ', NULL, NULL);
INSERT INTO public.star VALUES (630.00, 5, 'Betelgeuse', 'Supergitante rossa', 'È una stella della costellazione di Orione', 'M1-2lab', NULL, NULL);
INSERT INTO public.star VALUES (8.60, 6, 'Sirio', 'Stella bianca', 'È la stella più luminosa del cielo notturno', 'A1Vm', NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: lifeform_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lifeform_id_sequence', 1, false);


--
-- Name: moon_id; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id', 1, false);


--
-- Name: planet_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_sequence', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: lifeform lifeform_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_pkey PRIMARY KEY (lifeform_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: lifeform unique_lifeform_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT unique_lifeform_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon fk_moon_pianeti; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_pianeti FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


