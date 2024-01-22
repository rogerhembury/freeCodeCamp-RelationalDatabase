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
    name character varying(35) NOT NULL,
    description text NOT NULL,
    galaxytype_id integer NOT NULL,
    constellation character varying(35) NOT NULL,
    lightyearsfromearth integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxytype; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxytype (
    galaxytype_id integer NOT NULL,
    name character varying(35) NOT NULL,
    ineedthistopassthetest character varying(1) NOT NULL
);


ALTER TABLE public.galaxytype OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(35) NOT NULL,
    description text,
    diameter numeric NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(35) NOT NULL,
    description text NOT NULL,
    diameter numeric NOT NULL,
    haslife boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(35) NOT NULL,
    description text NOT NULL,
    diameter numeric NOT NULL,
    solarmasses integer NOT NULL,
    binarystar boolean NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', 'Galaxy 1 Description', 1, 'Constellation 1', 5);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', 'Galaxy 2 Description', 2, 'Constellation 2', 6);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', 'Galaxy 3 Description', 3, 'Constellation 3', 7);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', 'Galaxy 4 Description', 4, 'Constellation 4', 8);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', 'Galaxy 5 Description', 1, 'Constellation 5', 9);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', 'Galaxy 6 Description', 2, 'Constellation 6', 10);


--
-- Data for Name: galaxytype; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxytype VALUES (1, 'Galaxy Type 1', 'Y');
INSERT INTO public.galaxytype VALUES (2, 'Galaxy Type 2', 'Y');
INSERT INTO public.galaxytype VALUES (3, 'Galaxy Type 3', 'Y');
INSERT INTO public.galaxytype VALUES (4, 'Galaxy Type 4', 'Y');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Moon 1', 'Moon 1 Description', 10000);
INSERT INTO public.moon VALUES (2, 2, 'Moon 2', 'Moon 2 Description', 20000);
INSERT INTO public.moon VALUES (3, 3, 'Moon 3', 'Moon 3 Description', 30000);
INSERT INTO public.moon VALUES (4, 4, 'Moon 4', 'Moon 4 Description', 40000);
INSERT INTO public.moon VALUES (5, 5, 'Moon 5', 'Moon 5 Description', 50000);
INSERT INTO public.moon VALUES (6, 6, 'Moon 6', 'Moon 6 Description', 60000);
INSERT INTO public.moon VALUES (7, 7, 'Moon 7', 'Moon 7 Description', 70000);
INSERT INTO public.moon VALUES (8, 8, 'Moon 8', 'Moon 8 Description', 80000);
INSERT INTO public.moon VALUES (9, 9, 'Moon 9', 'Moon 9 Description', 90000);
INSERT INTO public.moon VALUES (10, 10, 'Moon 10', 'Moon 10 Description', 100000);
INSERT INTO public.moon VALUES (11, 11, 'Moon 11', 'Moon 11 Description', 110000);
INSERT INTO public.moon VALUES (12, 12, 'Moon 12', 'Moon 12 Description', 120000);
INSERT INTO public.moon VALUES (13, 1, 'Moon 13', 'Moon 13 Description', 30000);
INSERT INTO public.moon VALUES (14, 2, 'Moon 14', 'Moon 14 Description', 40000);
INSERT INTO public.moon VALUES (15, 3, 'Moon 15', 'Moon 15 Description', 50000);
INSERT INTO public.moon VALUES (16, 4, 'Moon 16', 'Moon 16 Description', 60000);
INSERT INTO public.moon VALUES (17, 5, 'Moon 17', 'Moon 17 Description', 70000);
INSERT INTO public.moon VALUES (18, 6, 'Moon 18', 'Moon 18 Description', 80000);
INSERT INTO public.moon VALUES (19, 7, 'Moon 19', 'Moon 19 Description', 90000);
INSERT INTO public.moon VALUES (20, 8, 'Moon 20', 'Moon 20 Description', 100000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Planet 1', 'Planet 1 Description', 100000, true);
INSERT INTO public.planet VALUES (2, 2, 'Planet 2', 'Planet 2 Description', 200000, false);
INSERT INTO public.planet VALUES (3, 3, 'Planet 3', 'Planet 3 Description', 300000, true);
INSERT INTO public.planet VALUES (4, 4, 'Planet 4', 'Planet 4 Description', 400000, false);
INSERT INTO public.planet VALUES (5, 5, 'Planet 5', 'Planet 5 Description', 500000, true);
INSERT INTO public.planet VALUES (6, 6, 'Planet 6', 'Planet 6 Description', 600000, false);
INSERT INTO public.planet VALUES (7, 1, 'Planet 7', 'Planet 7 Description', 100000, true);
INSERT INTO public.planet VALUES (8, 2, 'Planet 8', 'Planet 8 Description', 200000, false);
INSERT INTO public.planet VALUES (9, 3, 'Planet 9', 'Planet 9 Description', 300000, true);
INSERT INTO public.planet VALUES (10, 4, 'Planet 10', 'Planet 10 Description', 400000, false);
INSERT INTO public.planet VALUES (11, 5, 'Planet 11', 'Planet 11 Description', 500000, true);
INSERT INTO public.planet VALUES (12, 6, 'Planet 12', 'Planet 12 Description', 600000, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Star 1', 'Star 1 Description', 1000000, 10, true);
INSERT INTO public.star VALUES (2, 2, 'Star 2', 'Star 2 Description', 2000000, 2, false);
INSERT INTO public.star VALUES (3, 3, 'Star 3', 'Star 3 Description', 3000000, 3, true);
INSERT INTO public.star VALUES (4, 4, 'Star 4', 'Star 4 Description', 4000000, 4, false);
INSERT INTO public.star VALUES (5, 5, 'Star 5', 'Star 5 Description', 5000000, 5, true);
INSERT INTO public.star VALUES (6, 6, 'Star 6', 'Star 6 Description', 6000000, 6, false);


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
-- Name: galaxytype galaxytype_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxytype
    ADD CONSTRAINT galaxytype_name_key UNIQUE (name);


--
-- Name: galaxytype galaxytype_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxytype
    ADD CONSTRAINT galaxytype_pkey PRIMARY KEY (galaxytype_id);


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
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy galaxytype_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxytype_id FOREIGN KEY (galaxytype_id) REFERENCES public.galaxytype(galaxytype_id);


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
