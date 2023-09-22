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
    description text NOT NULL
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
    description text NOT NULL,
    age_in_millions_of_years integer,
    galaxy_types_id integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    planet_id integer,
    description text NOT NULL
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
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    has_life boolean,
    galaxy_id integer,
    star_id integer,
    description text NOT NULL,
    habitable boolean
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_id integer,
    description text NOT NULL,
    constellation_id integer
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
-- Name: star_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_types (
    star_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.star_types OWNER TO freecodecamp;

--
-- Name: star_types_star_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_types_star_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_types_star_types_id_seq OWNER TO freecodecamp;

--
-- Name: star_types_star_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_types_star_types_id_seq OWNED BY public.star_types.star_types_id;


--
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_types star_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_types ALTER COLUMN star_types_id SET DEFAULT nextval('public.star_types_star_types_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Hydra', 'Hydra, the water snake, is the largest constellation in the sky. It lies in the southern celestial hemisphere, stretching across 1303 square degrees of the southern sky.');
INSERT INTO public.constellation VALUES (2, 'Orion', 'Orion is a prominent constellation during winter in the northern celestial hemisphere. It is one of the 88 modern constellations.');
INSERT INTO public.constellation VALUES (3, 'Ursa major', 'Ursa Major constellation lies in the northern sky. Its name means “the great bear,” or “the larger bear,” in Latin. The smaller bear is represented by Ursa Minor.');
INSERT INTO public.constellation VALUES (4, 'Cetus', 'Cetus constellation is located in the northern sky. Also known as the Whale, it is one of the largest constellations in the sky.');
INSERT INTO public.constellation VALUES (5, 'Hercules', 'Hercules constellation is located in the northern sky. It was named after Hercules, the Roman version of the Greek hero Heracles.');
INSERT INTO public.constellation VALUES (6, 'Pegasus', 'Pegasus constellation lies in the northern hemisphere. It is one of the largest constellations in the sky.');
INSERT INTO public.constellation VALUES (7, 'Leo', 'Leo constellation lies in the northern sky. It is one of the zodiac constellations and one of the largest constellations in the sky.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Milky Way Galaxy, large spiral system consisting of several hundred billion stars, one of which is the Sun. It takes its name from the Milky Way, the irregular luminous band of stars and gas clouds that stretches across the sky as seen from Earth.', 0, 2);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Andromeda Galaxy, also called Andromeda Nebula, great spiral galaxy in the constellation Andromeda, the nearest large galaxy. The Andromeda Galaxy is one of the few visible to the unaided eye, appearing as a milky blur.', 3, 2);
INSERT INTO public.galaxy VALUES (3, 'Pinwheel galaxy', 'The Pinwheel Galaxy (also known as Messier 101, M101 or NGC 5457) is a face-on spiral galaxy 21 million light-years (6.4 megaparsecs)[5] away from Earth in the constellation Ursa Major.', 21, 2);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool galaxy', 'The Whirlpool Galaxy, also known as Messier 51a (M51a) or NGC 5194, is an interacting grand-design spiral galaxy with a Seyfert active galactic nucleus.', 32, 2);
INSERT INTO public.galaxy VALUES (5, 'Triangulum galaxy', 'The galaxy is the smallest spiral galaxy in the Local Group (although the smaller Large and Small Magellanic Clouds may have been spirals before their encounters with the Milky Way), and is believed to be a satellite of the Andromeda Galaxy', 61, 3);
INSERT INTO public.galaxy VALUES (6, 'Sombrero galaxy', 'The Sombrero Galaxy is a peculiar galaxy of unclear classification in the constellation borders of Virgo and Corvus.', 50, 2);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Elliptical galaxy', 'The Hubble classification system rates elliptical galaxies on the basis of their ellipticity, ranging from E0, being nearly spherical, up to E7, which is highly elongated. These galaxies have an ellipsoidal profile, giving them an elliptical appearance regardless of the viewing angle.');
INSERT INTO public.galaxy_types VALUES (2, 'Spiral galaxy', 'Spiral galaxies resemble spiraling pinwheels. Spiral galaxies consist of a rotating disk of stars and interstellar medium, along with a central bulge of generally older stars.');
INSERT INTO public.galaxy_types VALUES (3, 'Dwarf galaxy', 'Despite the prominence of large elliptical and spiral galaxies, most galaxies are dwarf galaxies. They are relatively small when compared with other galactic formations, being about one hundredth the size of the Milky Way, with only a few billion stars. ');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Callisto', 55, 2, 'Callisto, or Jupiter IV, is the second-largest moon of Jupiter, after Ganymede.');
INSERT INTO public.moon VALUES (2, 'Elara', 4, 12, 'Elara is a prograde irregular satellite of Jupiter.');
INSERT INTO public.moon VALUES (3, 'Titan', 87, 5, 'Titan is the largest moon of Saturn, the second-largest in the Solar System and larger than any of the dwarf planets of the Solar System.');
INSERT INTO public.moon VALUES (4, 'Europa', 66, 3, 'Europa, or Jupiter II, is the smallest of the four Galilean moons orbiting Jupiter, and the sixth-closest to the planet of all the 95 known moons of Jupiter. ');
INSERT INTO public.moon VALUES (5, 'Larissa', 25, 4, 'Larissa, also known as Neptune VII, is the fifth-closest inner satellite of Neptune.');
INSERT INTO public.moon VALUES (6, 'Helene', 5, 8, 'Helene is a moon of Saturn. It was discovered by Pierre Laques and Jean Lecacheux in 1980.');
INSERT INTO public.moon VALUES (7, 'Arche', 96, 11, 'Arche, also known as Jupiter XLIII, is a moon of Jupiter.');
INSERT INTO public.moon VALUES (8, 'Ganymede', 46, 13, 'Ganymede, or Jupiter III, is the largest and most massive natural satellite of Jupiter as well as in the Solar System, being a planetary-mass moon.');
INSERT INTO public.moon VALUES (9, 'Enceladus', 555, 10, 'Enceladus is the sixth-largest moon of Saturn.');
INSERT INTO public.moon VALUES (10, 'Tethys', 85, 11, 'Tethys, or Saturn III, is a mid-sized moon of Saturn about 1,060 km across.');
INSERT INTO public.moon VALUES (11, 'Mimas', 67, 12, 'Mimas, also designated Saturn I, is a natural satellite of Saturn that has the second largest crater on any moon in the Solar System, named Herschel.');
INSERT INTO public.moon VALUES (12, 'Dione', 32, 4, 'Dione, also designated Saturn IV, is the fourth-largest moon of Saturn.');
INSERT INTO public.moon VALUES (13, 'Titania', 24, 5, 'Titania, also designated Uranus III, is the largest of the moons of Uranus and the eighth largest moon in the Solar System.');
INSERT INTO public.moon VALUES (14, 'Hyperion', 45, 6, 'Hyperion, also known as Saturn VII, is a moon of Saturn discovered by William Cranch Bond, his son George Phillips Bond and William Lassell in 1848.');
INSERT INTO public.moon VALUES (15, 'Rhea', 8, 8, 'Rhea is the second-largest moon of Saturn and the ninth-largest moon in the Solar System.');
INSERT INTO public.moon VALUES (16, 'Atlas', 76, 7, 'Atlas is an inner satellite of Saturn which was discovered by Richard Terrile in 1980 from Voyager photos and was designated S/1980 S 28.');
INSERT INTO public.moon VALUES (17, 'Carme', 585, 9, 'Carme is a retrograde irregular satellite of Jupiter. ');
INSERT INTO public.moon VALUES (18, 'Himalia', 41, 3, 'Himalia, or Jupiter VI, is the largest irregular satellite of Jupiter, with a diameter of at least 140 km.');
INSERT INTO public.moon VALUES (19, 'Adrastea', 1, 5, 'Adrastea, also known as Jupiter XV, is the second by distance, and the smallest of the four inner moons of Jupiter.');
INSERT INTO public.moon VALUES (20, 'Charon', 11, 8, 'Charon, known as Pluto I, is the largest of the five known natural satellites of the dwarf planet Pluto.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Earth', 16, 0, true, 1, 2, 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', true);
INSERT INTO public.planet VALUES (3, 'Venus', 23, 2, false, 2, 3, 'Venus is the second planet from the Sun.', true);
INSERT INTO public.planet VALUES (4, 'Mercury', 42, 5, true, 3, 4, 'Mercury is the first planet from the Sun and the smallest in the Solar System.', true);
INSERT INTO public.planet VALUES (5, 'Mars', 5, 3, false, 1, 8, 'Mars is the fourth planet and the furthest terrestrial planet from the Sun.', true);
INSERT INTO public.planet VALUES (6, 'Jupiter', 645, 10, true, 5, 2, 'Jupiter is the fifth planet from the Sun and the largest in the Solar System.', false);
INSERT INTO public.planet VALUES (7, 'Uranus', 278, 56, true, 4, 6, 'Uranus is the seventh planet from the Sun and is a gaseous cyan ice giant.', true);
INSERT INTO public.planet VALUES (8, 'Saturn', 50, 11, false, 2, 4, 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter.', false);
INSERT INTO public.planet VALUES (9, 'Pluto', 1, 6, true, 6, 3, 'Pluto is a dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune.', true);
INSERT INTO public.planet VALUES (10, 'Neptune', 6, 58, false, 3, 4, 'Neptune is the eighth planet from the Sun and the farthest IAU-recognized planet in the Solar System.', false);
INSERT INTO public.planet VALUES (11, 'Ceres', 57, 47, true, 4, 5, 'Ceres minor-planet designation 1 Ceres, is a dwarf planet in the asteroid belt between the orbits of Mars and Jupiter.', true);
INSERT INTO public.planet VALUES (12, 'Eris', 3, 40, false, 2, 2, 'Eris (minor-planet designation 136199 Eris) is the most massive and second-largest known dwarf planet in the Solar System.', false);
INSERT INTO public.planet VALUES (13, 'Haumea', 4, 22, true, 5, 8, 'Haumea (minor-planet designation 136108 Haumea) is a dwarf planet located beyond Neptunes orbit.', true);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Gas giant', 'A gas giant is a large planet mostly composed of helium and/or hydrogen.');
INSERT INTO public.planet_types VALUES (2, 'Neptunian', 'Neptunian exoplanets are similar in size to Neptune or Uranus in our solar system.');
INSERT INTO public.planet_types VALUES (3, 'Terrestrial', 'The planets Mercury, Venus, Earth, and Mars, are called terrestrial because they have a compact, rocky surface like Earths terra firma.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sirius', 250, 6, ' the brightest star in the night sky', 2);
INSERT INTO public.star VALUES (3, 'Beletegueuse', 10, 5, 'Betelgeuse is a red supergiant star of spectral type M1-2 and one of the largest visible to the naked eye. It is usually the tenth-brightest star in the night sky and, after Rigel, the second-brightest in the constellation of Orion.', 2);
INSERT INTO public.star VALUES (4, 'Polaris', 70, 1, 'Polaris is a star in the northern circumpolar constellation of Ursa Minor. It is designated α Ursae Minoris (Latinized to Alpha Ursae Minoris) and is commonly called the North Star or Pole Star.', 3);
INSERT INTO public.star VALUES (5, 'Rigel', 8, 5, 'Rigel is a blue supergiant star in the constellation of Orion.', 2);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 4853, 4, 'Proxima Centauri is a small, low-mass star located 4.2465 light-years away from the Sun in the southern constellation of Centaurus.', 1);
INSERT INTO public.star VALUES (8, 'Arcturus', 7105, 2, 'Arcturus is the brightest star in the northern constellation of Boötes.', 4);


--
-- Data for Name: star_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_types VALUES (1, 'White dwarf', 'A white dwarf is a stellar core remnant composed mostly of electron-degenerate matter.');
INSERT INTO public.star_types VALUES (2, 'Neutron star', 'A neutron star is the collapsed core of a massive supergiant star, which had a total mass of between 10 and 25 solar masses, possibly more if the star was especially metal-rich.');
INSERT INTO public.star_types VALUES (3, 'Red giant', 'A red giant is a luminous giant star of low or intermediate mass in a late phase of stellar evolution.');
INSERT INTO public.star_types VALUES (4, 'Red dwarf', 'A red dwarf is the smallest and coolest kind of star on the main sequence.');
INSERT INTO public.star_types VALUES (5, 'Supergiant', 'Supergiants are among the most massive and most luminous stars.');
INSERT INTO public.star_types VALUES (6, 'Protostar', 'A protostar is a very young star that is still gathering mass from its parent molecular cloud.');
INSERT INTO public.star_types VALUES (7, 'Binary star', 'A binary star or binary star system is a system of two stars that are gravitationally bound to and in orbit around each other.');
INSERT INTO public.star_types VALUES (8, 'Brown dwarf', 'Brown dwarfs are substellar objects that are not massive enough to sustain nuclear fusion of ordinary hydrogen into helium in their cores, unlike a main-sequence star.');
INSERT INTO public.star_types VALUES (9, 'Yellow dwarf', 'A G-type main-sequence star, also often, and imprecisely called a yellow dwarf, or G star, is a main-sequence star of spectral type G.');


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: star_types_star_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_types_star_types_id_seq', 3, true);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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
-- Name: star_types star_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_types
    ADD CONSTRAINT star_types_name_key UNIQUE (name);


--
-- Name: star_types star_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_types
    ADD CONSTRAINT star_types_pkey PRIMARY KEY (star_types_id);


--
-- Name: galaxy galaxy_galaxy_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


