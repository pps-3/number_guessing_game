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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 32, 286);
INSERT INTO public.games VALUES (2, 32, 199);
INSERT INTO public.games VALUES (3, 33, 454);
INSERT INTO public.games VALUES (4, 33, 279);
INSERT INTO public.games VALUES (5, 32, 584);
INSERT INTO public.games VALUES (6, 32, 627);
INSERT INTO public.games VALUES (7, 32, 821);
INSERT INTO public.games VALUES (8, 34, 614);
INSERT INTO public.games VALUES (9, 34, 33);
INSERT INTO public.games VALUES (10, 35, 596);
INSERT INTO public.games VALUES (11, 35, 659);
INSERT INTO public.games VALUES (12, 34, 649);
INSERT INTO public.games VALUES (13, 34, 569);
INSERT INTO public.games VALUES (14, 34, 551);
INSERT INTO public.games VALUES (15, 36, 123);
INSERT INTO public.games VALUES (16, 36, 712);
INSERT INTO public.games VALUES (17, 37, 487);
INSERT INTO public.games VALUES (18, 37, 480);
INSERT INTO public.games VALUES (19, 36, 761);
INSERT INTO public.games VALUES (20, 36, 37);
INSERT INTO public.games VALUES (21, 36, 948);
INSERT INTO public.games VALUES (22, 38, 566);
INSERT INTO public.games VALUES (23, 38, 510);
INSERT INTO public.games VALUES (24, 39, 155);
INSERT INTO public.games VALUES (25, 39, 26);
INSERT INTO public.games VALUES (26, 38, 462);
INSERT INTO public.games VALUES (27, 38, 658);
INSERT INTO public.games VALUES (28, 38, 289);
INSERT INTO public.games VALUES (29, 40, 2);
INSERT INTO public.games VALUES (30, 40, 694);
INSERT INTO public.games VALUES (31, 41, 236);
INSERT INTO public.games VALUES (32, 41, 836);
INSERT INTO public.games VALUES (33, 40, 368);
INSERT INTO public.games VALUES (34, 40, 162);
INSERT INTO public.games VALUES (35, 40, 690);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1741795034046');
INSERT INTO public.users VALUES (3, 'user_1741795034045');
INSERT INTO public.users VALUES (8, 'user_1741795088975');
INSERT INTO public.users VALUES (10, 'user_1741795088974');
INSERT INTO public.users VALUES (15, 'user_1741795254919');
INSERT INTO public.users VALUES (16, 'user_1741795254918');
INSERT INTO public.users VALUES (17, 'user_1741795508582');
INSERT INTO public.users VALUES (18, 'user_1741795508581');
INSERT INTO public.users VALUES (19, 'user_1741795580908');
INSERT INTO public.users VALUES (20, 'user_1741795580907');
INSERT INTO public.users VALUES (21, 'user_1741796022344');
INSERT INTO public.users VALUES (22, 'user_1741796022343');
INSERT INTO public.users VALUES (23, 'preti');
INSERT INTO public.users VALUES (24, 'user_1741796226144');
INSERT INTO public.users VALUES (25, 'user_1741796226143');
INSERT INTO public.users VALUES (26, 'user_1741796624118');
INSERT INTO public.users VALUES (27, 'user_1741796624117');
INSERT INTO public.users VALUES (28, 'user_1741796738168');
INSERT INTO public.users VALUES (29, 'user_1741796738167');
INSERT INTO public.users VALUES (30, 'user_1741796795423');
INSERT INTO public.users VALUES (31, 'user_1741796795422');
INSERT INTO public.users VALUES (32, 'user_1741796929031');
INSERT INTO public.users VALUES (33, 'user_1741796929030');
INSERT INTO public.users VALUES (34, 'user_1741797051142');
INSERT INTO public.users VALUES (35, 'user_1741797051141');
INSERT INTO public.users VALUES (36, 'user_1741797125759');
INSERT INTO public.users VALUES (37, 'user_1741797125758');
INSERT INTO public.users VALUES (38, 'user_1741797201016');
INSERT INTO public.users VALUES (39, 'user_1741797201015');
INSERT INTO public.users VALUES (40, 'user_1741797367597');
INSERT INTO public.users VALUES (41, 'user_1741797367596');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 35, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 41, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

