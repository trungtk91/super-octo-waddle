--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    has_life boolean,
    has_blackhole boolean,
    age_in_millions_of_years numeric(4,1),
    description text NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    has_gas boolean,
    has_diamond boolean,
    has_gold boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_info (
    moon_info_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(30)
);


ALTER TABLE public.moon_info OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(30) NOT NULL,
    can_invade boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight integer NOT NULL,
    can_harvest boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andro', true, true, 300.0, 'vast and big');
INSERT INTO public.galaxy VALUES (2, 'beta2', false, false, 123.0, 'devoid');
INSERT INTO public.galaxy VALUES (3, 'centauri', false, true, 323.0, 'blackholes!');
INSERT INTO public.galaxy VALUES (4, 'delta4', true, false, 12.0, 'colonize now!');
INSERT INTO public.galaxy VALUES (5, 'phi5', true, false, 500.0, 'old');
INSERT INTO public.galaxy VALUES (6, 'gamma6', false, false, 120.0, 'crash and burn');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, true, true, false);
INSERT INTO public.moon VALUES (2, 'moon2', 1, true, true, false);
INSERT INTO public.moon VALUES (3, 'moon3', 1, true, true, false);
INSERT INTO public.moon VALUES (4, 'moon4', 2, true, true, false);
INSERT INTO public.moon VALUES (5, 'moon5', 3, true, true, false);
INSERT INTO public.moon VALUES (6, 'moon6', 3, true, true, false);
INSERT INTO public.moon VALUES (7, 'moon7', 3, true, true, false);
INSERT INTO public.moon VALUES (8, 'moon8', 3, true, true, false);
INSERT INTO public.moon VALUES (9, 'moon9', 3, true, true, false);
INSERT INTO public.moon VALUES (10, 'moon10', 3, true, true, false);
INSERT INTO public.moon VALUES (11, 'moon11', 3, true, true, false);
INSERT INTO public.moon VALUES (12, 'moon12', 4, true, true, false);
INSERT INTO public.moon VALUES (13, 'moon13', 4, true, true, false);
INSERT INTO public.moon VALUES (14, 'moon14', 4, true, true, false);
INSERT INTO public.moon VALUES (15, 'moon15', 4, true, true, false);
INSERT INTO public.moon VALUES (16, 'moon16', 4, true, true, false);
INSERT INTO public.moon VALUES (17, 'moon17', 4, true, true, false);
INSERT INTO public.moon VALUES (18, 'moon18', 5, true, true, false);
INSERT INTO public.moon VALUES (19, 'moon19', 5, true, true, false);
INSERT INTO public.moon VALUES (20, 'moon20', 5, true, true, false);


--
-- Data for Name: moon_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_info VALUES (1, 'something!', 'foo');
INSERT INTO public.moon_info VALUES (2, 'bar', 'foo2');
INSERT INTO public.moon_info VALUES (3, 'foo2', 'bar3');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'xyz1', 'small', true);
INSERT INTO public.planet VALUES (2, 2, 'xyz2', 'big', true);
INSERT INTO public.planet VALUES (3, 3, 'xyz3', 'huge', true);
INSERT INTO public.planet VALUES (4, 4, 'xyz4', 'tiny', false);
INSERT INTO public.planet VALUES (5, 5, 'xyz5', 'feable', false);
INSERT INTO public.planet VALUES (6, 6, 'xyz56', 'feable', false);
INSERT INTO public.planet VALUES (7, 7, 'xyz7', 'feable', false);
INSERT INTO public.planet VALUES (8, 8, 'xyz8', 'feable', false);
INSERT INTO public.planet VALUES (9, 9, 'xyz9', 'feable', false);
INSERT INTO public.planet VALUES (10, 10, 'xyz10', 'feable', false);
INSERT INTO public.planet VALUES (11, 11, 'xyz11', 'feable', false);
INSERT INTO public.planet VALUES (12, 12, 'xyz12', 'feable', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'abc', 1, 10, 20, true);
INSERT INTO public.star VALUES (2, 1, 'abc1', 1, 11, 2, true);
INSERT INTO public.star VALUES (3, 1, 'abc2', 1, 11, 2, true);
INSERT INTO public.star VALUES (4, 2, 'abc32', 1, 11, 2, true);
INSERT INTO public.star VALUES (5, 2, 'abc342', 1, 11, 2, true);
INSERT INTO public.star VALUES (6, 2, 'abc3342', 1, 11, 2, true);
INSERT INTO public.star VALUES (7, 3, 'abc33442', 1, 11, 2, true);
INSERT INTO public.star VALUES (8, 4, 'abc233442', 1, 11, 2, true);
INSERT INTO public.star VALUES (9, 4, 'abc5233442', 1, 11, 2, true);
INSERT INTO public.star VALUES (10, 4, 'abc523442', 1, 11, 2, true);
INSERT INTO public.star VALUES (11, 4, 'ab4c523442', 1, 11, 2, true);
INSERT INTO public.star VALUES (12, 3, 'a3b4c523442', 1, 11, 2, true);
INSERT INTO public.star VALUES (13, 1, '3a3b4c523442', 1, 11, 2, true);


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
-- Name: moon_info moon_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_info
    ADD CONSTRAINT moon_info_name_key UNIQUE (name);


--
-- Name: moon_info moon_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_info
    ADD CONSTRAINT moon_info_pkey PRIMARY KEY (moon_info_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


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
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


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

