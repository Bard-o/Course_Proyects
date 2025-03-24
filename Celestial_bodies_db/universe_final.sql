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
    name character varying(255) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    number_of_stars_in_millions integer
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
-- Name: kind; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.kind (
    kind_id integer NOT NULL,
    name character varying(255) NOT NULL,
    kind_description text
);


ALTER TABLE public.kind OWNER TO freecodecamp;

--
-- Name: kind_kind_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.kind_kind_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kind_kind_id_seq OWNER TO freecodecamp;

--
-- Name: kind_kind_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.kind_kind_id_seq OWNED BY public.kind.kind_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    has_water boolean,
    distance_from_planet numeric(10,2),
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
-- Name: other; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other (
    other_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    kind_id integer
);


ALTER TABLE public.other OWNER TO freecodecamp;

--
-- Name: other_other_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.other_other_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_other_id_seq OWNER TO freecodecamp;

--
-- Name: other_other_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.other_other_id_seq OWNED BY public.other.other_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    number_of_moons integer,
    has_water boolean,
    star_id integer
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
    name character varying(255) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    number_of_planets integer,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: kind kind_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.kind ALTER COLUMN kind_id SET DEFAULT nextval('public.kind_kind_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: other other_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other ALTER COLUMN other_id SET DEFAULT nextval('public.other_other_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 'Our home galaxy, a barred spiral galaxy', 200000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 'Nearest major galaxy to the Milky Way', 1000000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 10000, 'Third-largest galaxy in the Local Group', 40000);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 13000, 'Supergiant elliptical galaxy with a supermassive black hole', 2400000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 400, 'Interacting grand-design spiral galaxy', 100000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 13250, 'Bright spiral galaxy with a prominent dust lane', 100000);


--
-- Data for Name: kind; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.kind VALUES (1, 'Asteroid', 'Rocky objects orbiting the Sun that are too small to be planets');
INSERT INTO public.kind VALUES (2, 'Comet', 'Icy bodies that release gas and dust when they approach the Sun');
INSERT INTO public.kind VALUES (3, 'Dwarf Planet', 'Celestial body that orbits the Sun and has sufficient mass for gravity to make it round');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500, 'Earth''s only natural satellite', true, 384400.00, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, 'Larger and innermost of Mars''s two moons', false, 9376.00, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, 'Smaller and outermost of Mars''s two moons', false, 23463.00, 4);
INSERT INTO public.moon VALUES (4, 'Io', 4500, 'Volcanically active moon of Jupiter', false, 421700.00, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 4500, 'Moon of Jupiter with subsurface ocean', true, 671034.00, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4500, 'Largest moon in the Solar System', true, 1070400.00, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 4500, 'Second-largest moon of Jupiter', true, 1882700.00, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 4500, 'Largest moon of Saturn with thick atmosphere', true, 1221870.00, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4500, 'Moon of Saturn with subsurface ocean', true, 238020.00, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 4500, 'Moon of Saturn with large impact crater', false, 185520.00, 6);
INSERT INTO public.moon VALUES (11, 'Tethys', 4500, 'Mid-sized moon of Saturn', false, 294619.00, 6);
INSERT INTO public.moon VALUES (12, 'Dione', 4500, 'Moon of Saturn with water ice', true, 377396.00, 6);
INSERT INTO public.moon VALUES (13, 'Rhea', 4500, 'Second-largest moon of Saturn', false, 527108.00, 6);
INSERT INTO public.moon VALUES (14, 'Iapetus', 4500, 'Third-largest moon of Saturn', false, 3560820.00, 6);
INSERT INTO public.moon VALUES (15, 'Miranda', 4500, 'Smallest and innermost of Uranus''s five major moons', false, 129390.00, 7);
INSERT INTO public.moon VALUES (16, 'Ariel', 4500, 'Fourth-largest moon of Uranus', true, 190900.00, 7);
INSERT INTO public.moon VALUES (17, 'Umbriel', 4500, 'Third-largest moon of Uranus', false, 266000.00, 7);
INSERT INTO public.moon VALUES (18, 'Titania', 4500, 'Largest moon of Uranus', true, 435910.00, 7);
INSERT INTO public.moon VALUES (19, 'Triton', 4500, 'Largest moon of Neptune', true, 354759.00, 8);
INSERT INTO public.moon VALUES (20, 'Nereid', 4500, 'Third-largest moon of Neptune', false, 5513818.00, 8);


--
-- Data for Name: other; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other VALUES (1, 'Ceres', 4500, 'Largest object in the asteroid belt between Mars and Jupiter', 3);
INSERT INTO public.other VALUES (2, 'Halley''s Comet', 4500, 'Short-period comet visible from Earth every 75-76 years', 2);
INSERT INTO public.other VALUES (3, 'Pluto', 4500, 'Dwarf planet in the Kuiper belt', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4500, 'Smallest planet in our Solar System', 0, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4500, 'Second planet from the Sun with thick atmosphere', 0, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4500, 'Our home planet, third from the Sun', 1, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4500, 'Fourth planet from the Sun, known as the Red Planet', 2, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4500, 'Largest planet in our Solar System', 79, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4500, 'Known for its prominent ring system', 82, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4500, 'Ice giant with a tilted axis of rotation', 27, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4500, 'Farthest known planet from the Sun', 14, true, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 4850, 'Potentially habitable exoplanet orbiting Proxima Centauri', 0, true, 2);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', 4850, 'Super-Earth exoplanet orbiting Proxima Centauri', 1, false, 2);
INSERT INTO public.planet VALUES (11, 'Sirius b Companion', 230, 'Hypothetical planet orbiting Sirius', 3, true, 4);
INSERT INTO public.planet VALUES (12, 'Vega Prime', 455, 'Hypothetical exoplanet orbiting Vega', 2, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 'G-type main-sequence star at the center of our Solar System', 8, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4850, 'Red dwarf star closest to the Sun', 3, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 8, 'Red supergiant star in the constellation Orion', 0, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 230, 'Brightest star in the night sky', 2, 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', 6000, 'Primary star of the Alpha Centauri system', 5, 1);
INSERT INTO public.star VALUES (6, 'Vega', 455, 'Bright blue star in the constellation Lyra', 4, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: kind_kind_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.kind_kind_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: other_other_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.other_other_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: kind kind_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.kind
    ADD CONSTRAINT kind_name_key UNIQUE (name);


--
-- Name: kind kind_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.kind
    ADD CONSTRAINT kind_pkey PRIMARY KEY (kind_id);


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
-- Name: other other_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_name_key UNIQUE (name);


--
-- Name: other other_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_pkey PRIMARY KEY (other_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: other other_kind_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_kind_id_fkey FOREIGN KEY (kind_id) REFERENCES public.kind(kind_id);


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

