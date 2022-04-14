Password: 
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO arturo_moreno;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO arturo_moreno;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO arturo_moreno;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO arturo_moreno;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO arturo_moreno;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO arturo_moreno;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO arturo_moreno;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO arturo_moreno;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO arturo_moreno;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO arturo_moreno;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO arturo_moreno;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO arturo_moreno;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: books_author; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.books_author (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    last_name character varying(128)
);


ALTER TABLE public.books_author OWNER TO arturo_moreno;

--
-- Name: books_author_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.books_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_author_id_seq OWNER TO arturo_moreno;

--
-- Name: books_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.books_author_id_seq OWNED BY public.books_author.id;


--
-- Name: books_book; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.books_book (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    publish_year smallint NOT NULL,
    pages smallint NOT NULL,
    price numeric(6,2) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.books_book OWNER TO arturo_moreno;

--
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.books_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_book_id_seq OWNER TO arturo_moreno;

--
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books_book.id;


--
-- Name: books_booksauthors; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.books_booksauthors (
    id bigint NOT NULL,
    author_id bigint NOT NULL,
    book_id bigint NOT NULL
);


ALTER TABLE public.books_booksauthors OWNER TO arturo_moreno;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.books_booksauthors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_booksauthors_id_seq OWNER TO arturo_moreno;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.books_booksauthors_id_seq OWNED BY public.books_booksauthors.id;


--
-- Name: books_booksgenres; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.books_booksgenres (
    id bigint NOT NULL,
    book_id bigint NOT NULL,
    genre_id bigint NOT NULL
);


ALTER TABLE public.books_booksgenres OWNER TO arturo_moreno;

--
-- Name: books_booksgenres_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.books_booksgenres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_booksgenres_id_seq OWNER TO arturo_moreno;

--
-- Name: books_booksgenres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.books_booksgenres_id_seq OWNED BY public.books_booksgenres.id;


--
-- Name: books_bookslenguajes; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.books_bookslenguajes (
    id bigint NOT NULL,
    book_id bigint NOT NULL,
    lenguaje_id bigint NOT NULL
);


ALTER TABLE public.books_bookslenguajes OWNER TO arturo_moreno;

--
-- Name: books_bookslenguajes_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.books_bookslenguajes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_bookslenguajes_id_seq OWNER TO arturo_moreno;

--
-- Name: books_bookslenguajes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.books_bookslenguajes_id_seq OWNED BY public.books_bookslenguajes.id;


--
-- Name: books_genre; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.books_genre (
    id bigint NOT NULL,
    genre character varying(128) NOT NULL
);


ALTER TABLE public.books_genre OWNER TO arturo_moreno;

--
-- Name: books_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.books_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_genre_id_seq OWNER TO arturo_moreno;

--
-- Name: books_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.books_genre_id_seq OWNED BY public.books_genre.id;


--
-- Name: books_lenguaje; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.books_lenguaje (
    id bigint NOT NULL,
    lenguaje character varying(128) NOT NULL
);


ALTER TABLE public.books_lenguaje OWNER TO arturo_moreno;

--
-- Name: books_lenguaje_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.books_lenguaje_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_lenguaje_id_seq OWNER TO arturo_moreno;

--
-- Name: books_lenguaje_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.books_lenguaje_id_seq OWNED BY public.books_lenguaje.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO arturo_moreno;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO arturo_moreno;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO arturo_moreno;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO arturo_moreno;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO arturo_moreno;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO arturo_moreno;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO arturo_moreno;

--
-- Name: token_blacklist_blacklistedtoken; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);


ALTER TABLE public.token_blacklist_blacklistedtoken OWNER TO arturo_moreno;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_blacklistedtoken_id_seq OWNER TO arturo_moreno;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;


--
-- Name: token_blacklist_outstandingtoken; Type: TABLE; Schema: public; Owner: arturo_moreno
--

CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id integer,
    jti character varying(255) NOT NULL
);


ALTER TABLE public.token_blacklist_outstandingtoken OWNER TO arturo_moreno;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: arturo_moreno
--

CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_outstandingtoken_id_seq OWNER TO arturo_moreno;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arturo_moreno
--

ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: books_author id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_author ALTER COLUMN id SET DEFAULT nextval('public.books_author_id_seq'::regclass);


--
-- Name: books_book id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_book ALTER COLUMN id SET DEFAULT nextval('public.books_book_id_seq'::regclass);


--
-- Name: books_booksauthors id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_booksauthors ALTER COLUMN id SET DEFAULT nextval('public.books_booksauthors_id_seq'::regclass);


--
-- Name: books_booksgenres id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_booksgenres ALTER COLUMN id SET DEFAULT nextval('public.books_booksgenres_id_seq'::regclass);


--
-- Name: books_bookslenguajes id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_bookslenguajes ALTER COLUMN id SET DEFAULT nextval('public.books_bookslenguajes_id_seq'::regclass);


--
-- Name: books_genre id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_genre ALTER COLUMN id SET DEFAULT nextval('public.books_genre_id_seq'::regclass);


--
-- Name: books_lenguaje id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_lenguaje ALTER COLUMN id SET DEFAULT nextval('public.books_lenguaje_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: token_blacklist_blacklistedtoken id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);


--
-- Name: token_blacklist_outstandingtoken id; Type: DEFAULT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add author	7	add_author
26	Can change author	7	change_author
27	Can delete author	7	delete_author
28	Can view author	7	view_author
29	Can add lenguaje	8	add_lenguaje
30	Can change lenguaje	8	change_lenguaje
31	Can delete lenguaje	8	delete_lenguaje
32	Can view lenguaje	8	view_lenguaje
33	Can add genre	9	add_genre
34	Can change genre	9	change_genre
35	Can delete genre	9	delete_genre
36	Can view genre	9	view_genre
37	Can add book	10	add_book
38	Can change book	10	change_book
39	Can delete book	10	delete_book
40	Can view book	10	view_book
41	Can add books authors	11	add_booksauthors
42	Can change books authors	11	change_booksauthors
43	Can delete books authors	11	delete_booksauthors
44	Can view books authors	11	view_booksauthors
45	Can add books lenguajes	12	add_bookslenguajes
46	Can change books lenguajes	12	change_bookslenguajes
47	Can delete books lenguajes	12	delete_bookslenguajes
48	Can view books lenguajes	12	view_bookslenguajes
49	Can add books genres	13	add_booksgenres
50	Can change books genres	13	change_booksgenres
51	Can delete books genres	13	delete_booksgenres
52	Can view books genres	13	view_booksgenres
53	Can add blacklisted token	14	add_blacklistedtoken
54	Can change blacklisted token	14	change_blacklistedtoken
55	Can delete blacklisted token	14	delete_blacklistedtoken
56	Can view blacklisted token	14	view_blacklistedtoken
57	Can add outstanding token	15	add_outstandingtoken
58	Can change outstanding token	15	change_outstandingtoken
59	Can delete outstanding token	15	delete_outstandingtoken
60	Can view outstanding token	15	view_outstandingtoken
61	Can add user	16	add_user
62	Can change user	16	change_user
63	Can delete user	16	delete_user
64	Can view user	16	view_user
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$fBsFoJW9pNokQL0ohghpYi$9X9efeVHWz4K+Oth0ssRABjNbRXF1HEWItejcO9yNnA=	\N	t	admin			admin@gmail.com	t	t	2022-04-12 18:24:50.666576+00
2	pbkdf2_sha256$320000$zNBlgpiM2zeqmW2Yn2oubx$KoWc2DnVlYVnUESNZZPVa/A3D+doF1asrORxgOpl6Vo=	\N	t	arturo			arturo@gmail.com	t	t	2022-04-12 18:25:27.141073+00
34	pbkdf2_sha256$320000$IfLaJoSFHiHFx5VY8IsvVO$Kh/LXP5Uey4KtK6GWhzXtNRdAC6hdFbu9lRC/muDfDI=	\N	f	nene3			nene3@gmail.com	f	t	2022-04-13 02:53:33.690111+00
35	pbkdf2_sha256$320000$LZwHCzCJmMBZxsC6ioyjdV$Akb2IINZbsWf9/uH/yqiAKR8HC5zGSJpkH4fYcI79Ng=	\N	f	nene4			nene4@gmail.com	f	t	2022-04-13 03:58:50.673146+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: books_author; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.books_author (id, name, last_name) FROM stdin;
\.


--
-- Data for Name: books_book; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.books_book (id, name, publish_year, pages, price, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: books_booksauthors; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.books_booksauthors (id, author_id, book_id) FROM stdin;
\.


--
-- Data for Name: books_booksgenres; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.books_booksgenres (id, book_id, genre_id) FROM stdin;
\.


--
-- Data for Name: books_bookslenguajes; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.books_bookslenguajes (id, book_id, lenguaje_id) FROM stdin;
\.


--
-- Data for Name: books_genre; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.books_genre (id, genre) FROM stdin;
\.


--
-- Data for Name: books_lenguaje; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.books_lenguaje (id, lenguaje) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	books	author
8	books	lenguaje
9	books	genre
10	books	book
11	books	booksauthors
12	books	bookslenguajes
13	books	booksgenres
14	token_blacklist	blacklistedtoken
15	token_blacklist	outstandingtoken
16	users	user
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-04-12 18:08:06.66898+00
2	auth	0001_initial	2022-04-12 18:08:06.738171+00
3	admin	0001_initial	2022-04-12 18:08:06.757485+00
4	admin	0002_logentry_remove_auto_add	2022-04-12 18:08:06.763545+00
5	admin	0003_logentry_add_action_flag_choices	2022-04-12 18:08:06.77056+00
6	contenttypes	0002_remove_content_type_name	2022-04-12 18:08:06.785165+00
7	auth	0002_alter_permission_name_max_length	2022-04-12 18:08:06.791462+00
8	auth	0003_alter_user_email_max_length	2022-04-12 18:08:06.797912+00
9	auth	0004_alter_user_username_opts	2022-04-12 18:08:06.804258+00
10	auth	0005_alter_user_last_login_null	2022-04-12 18:08:06.810432+00
11	auth	0006_require_contenttypes_0002	2022-04-12 18:08:06.811971+00
12	auth	0007_alter_validators_add_error_messages	2022-04-12 18:08:06.819177+00
13	auth	0008_alter_user_username_max_length	2022-04-12 18:08:06.829486+00
14	auth	0009_alter_user_last_name_max_length	2022-04-12 18:08:06.835662+00
15	auth	0010_alter_group_name_max_length	2022-04-12 18:08:06.843049+00
16	auth	0011_update_proxy_permissions	2022-04-12 18:08:06.851263+00
17	auth	0012_alter_user_first_name_max_length	2022-04-12 18:08:06.857277+00
18	sessions	0001_initial	2022-04-12 18:08:06.873437+00
19	token_blacklist	0001_initial	2022-04-12 18:08:06.938048+00
20	token_blacklist	0002_outstandingtoken_jti_hex	2022-04-12 18:08:06.947489+00
21	token_blacklist	0003_auto_20171017_2007	2022-04-12 18:08:06.958694+00
22	token_blacklist	0004_auto_20171017_2013	2022-04-12 18:08:06.970008+00
23	token_blacklist	0005_remove_outstandingtoken_jti	2022-04-12 18:08:06.977615+00
24	token_blacklist	0006_auto_20171017_2113	2022-04-12 18:08:06.985154+00
25	token_blacklist	0007_auto_20171017_2214	2022-04-12 18:08:07.006669+00
26	token_blacklist	0008_migrate_to_bigautofield	2022-04-12 18:08:07.0473+00
27	token_blacklist	0010_fix_migrate_to_bigautofield	2022-04-12 18:08:07.061097+00
28	token_blacklist	0011_linearizes_history	2022-04-12 18:08:07.062701+00
29	token_blacklist	0012_alter_outstandingtoken_user	2022-04-12 18:08:07.069491+00
30	books	0001_initial	2022-04-12 18:29:05.85912+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
1	2022-04-13 04:42:57.038254+00	279
2	2022-04-13 05:01:30.969736+00	327
3	2022-04-13 05:01:39.221067+00	328
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: arturo_moreno
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg3NDY3MywiaWF0IjoxNjQ5Nzg4MjczLCJqdGkiOiI3MDc2YTVjOGUzZGE0MzQxOTg5ZTdlMTYxZjRlOGI5OSIsInVzZXJfaWQiOjJ9.FNDG9FUVpvdtkT6IhwEvZO2bqDxHEldBCpPk7yT8WNg	2022-04-12 18:31:13.907293+00	2022-04-13 18:31:13+00	2	7076a5c8e3da4341989e7e161f4e8b99
2	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg3NDc1MSwiaWF0IjoxNjQ5Nzg4MzUxLCJqdGkiOiIzYjgzYTE3MTViODU0ZWY0YTA5YjJjMWRlNjQxZTdmMiIsInVzZXJfaWQiOjJ9.Yqw7lVviViwxpeZo4UnmAtSGGzLV9e4Cqe-F6U0cBC0	2022-04-12 18:32:31.759779+00	2022-04-13 18:32:31+00	2	3b83a1715b854ef4a09b2c1de641e7f2
3	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg3NTAzNCwiaWF0IjoxNjQ5Nzg4NjM0LCJqdGkiOiJhNjEwNjdlMWUyMTQ0MjdiOWQxMGJjMTBlNzI0MjA5YSIsInVzZXJfaWQiOjJ9.5lXpZFgSIhR7BLhz98NPgRdWORhHfizfIjaCy0qQR6o	2022-04-12 18:37:14.884164+00	2022-04-13 18:37:14+00	2	a61067e1e214427b9d10bc10e724209a
4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg3NTAzNywiaWF0IjoxNjQ5Nzg4NjM3LCJqdGkiOiJkNmI5NWRiMmQ2MDY0NjdjYTQ0ZDBkM2JlOTVmNGI1MSIsInVzZXJfaWQiOjJ9.eZN4IewTYWoxvNNkOpS6g-f-9XQP2ybPu5gMgw0gzco	2022-04-12 18:37:17.93783+00	2022-04-13 18:37:17+00	2	d6b95db2d606467ca44d0d3be95f4b51
5	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4MDQyNCwiaWF0IjoxNjQ5Nzk0MDI0LCJqdGkiOiI4OGM1OWMwYjRkZmM0NDEzOTcwZDU3MGYwYmVmZjgwNyIsInVzZXJfaWQiOjJ9.j59uyApLNwNqfGJ9KnZLcogX5NIXCAJ0gn_Emt3EIUU	2022-04-12 20:07:04.1187+00	2022-04-13 20:07:04+00	2	88c59c0b4dfc4413970d570f0beff807
6	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4MDQyNiwiaWF0IjoxNjQ5Nzk0MDI2LCJqdGkiOiIzZDBiMTM4N2IzYTI0NDc3YTM3Mzg0MDU4MTA4M2IyMSIsInVzZXJfaWQiOjJ9.C9tYNIjRowJ2IFA7wMRFW7-VxDxH6l4F_FXNcUfTAgk	2022-04-12 20:07:06.713615+00	2022-04-13 20:07:06+00	2	3d0b1387b3a24477a373840581083b21
7	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5NzI3MCwiaWF0IjoxNjQ5ODEwODcwLCJqdGkiOiJkNzJjZTVkNTcyYTI0YmUzYjYwYzM4MjU5OTIwMGVmYiIsInVzZXJfaWQiOjJ9.T4BcnZhX8J_Sr-W6Vz_nH8BJW2CBJi34_kucnDuB9f4	2022-04-13 00:47:50.42057+00	2022-04-14 00:47:50+00	2	d72ce5d572a24be3b60c382599200efb
8	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5NzI3MywiaWF0IjoxNjQ5ODEwODczLCJqdGkiOiIxMDFmMmZkNmMxN2U0OGJlODZmZDI2M2M2NDk0MDk4ZiIsInVzZXJfaWQiOjJ9.qT55vUOC8_-uW9zzx5RzycOAQE0WoXnqRkXWBlSJG3M	2022-04-13 00:47:53.653351+00	2022-04-14 00:47:53+00	2	101f2fd6c17e48be86fd263c6494098f
9	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5OTMwOCwiaWF0IjoxNjQ5ODEyOTA4LCJqdGkiOiIxZTU4MDA5NmY3NmM0MWQ1YTFlODI0YzY3MTdjOGM5NSIsInVzZXJfaWQiOjJ9.38wvH_OhrK8_8A_wxX1GLwcA3ONh8FEQiGOtV8FpZPA	2022-04-13 01:21:48.393344+00	2022-04-14 01:21:48+00	2	1e580096f76c41d5a1e824c6717c8c95
10	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5OTYxNCwiaWF0IjoxNjQ5ODEzMjE0LCJqdGkiOiIxMWYzZGFiNTQ5MGE0NWJhYjgzMTc4ZGI3MGJhYmExZiIsInVzZXJfaWQiOjJ9.SxCz1IAGM-iFcdFexxmq75nqGitmxuKtVFme1nvpPBI	2022-04-13 01:26:54.602011+00	2022-04-14 01:26:54+00	2	11f3dab5490a45bab83178db70baba1f
11	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwMDU4NCwiaWF0IjoxNjQ5ODE0MTg0LCJqdGkiOiIzY2UxMjcxNzNkOGM0Yzg2YWQyMTc0OTYzYTUzYWU2NSIsInVzZXJfaWQiOjJ9.f27T6q-mh-f5xY9EO03enKSCpP86ncqMnsyLjwiqD8g	2022-04-13 01:43:04.283043+00	2022-04-14 01:43:04+00	2	3ce127173d8c4c86ad2174963a53ae65
12	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwMDU5NCwiaWF0IjoxNjQ5ODE0MTk0LCJqdGkiOiIwMWM5YTIxMDBhZGQ0Y2U0YmUxNTQ2Zjc0MWJkZjJlNyIsInVzZXJfaWQiOjJ9.FxU9s8Kim4PvGj4_hQquOQ0Q2WbZsNZ1wYkm4JfHI48	2022-04-13 01:43:14.36218+00	2022-04-14 01:43:14+00	2	01c9a2100add4ce4be1546f741bdf2e7
13	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwMTAwMSwiaWF0IjoxNjQ5ODE0NjAxLCJqdGkiOiI3ZGEwNWQ4MjUwZjM0NGJmYTc2MGE2NGJmNzM4OTQ0ZCIsInVzZXJfaWQiOjJ9.MFxwDTVYr4amMBdPivxHEKQ-d36kh2fbKBxcHEoyWM0	2022-04-13 01:50:01.970391+00	2022-04-14 01:50:01+00	2	7da05d8250f344bfa760a64bf738944d
14	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwMTQxMiwiaWF0IjoxNjQ5ODE1MDEyLCJqdGkiOiJjMWRhOWM3MzcyN2I0OWZlYTliNWNiNzk1YzhkZWUwOSIsInVzZXJfaWQiOjJ9.QCNTHrBfKn2GKe-dZOjMNwDc-uC1C9t9_6A7GQ903KA	2022-04-13 01:56:52.917035+00	2022-04-14 01:56:52+00	2	c1da9c73727b49fea9b5cb795c8dee09
15	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwMTYwNSwiaWF0IjoxNjQ5ODE1MjA1LCJqdGkiOiI5NDkxNjkwZmM5NTU0MTVlODI0ZmI0NGE1YjVjZWIzYyIsInVzZXJfaWQiOjJ9.4t4iM4pPlkea9MAYZKZS7s8gYTZVXTg152aIvlaOOl4	2022-04-13 02:00:05.716979+00	2022-04-14 02:00:05+00	2	9491690fc955415e824fb44a5b5ceb3c
16	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwMTcwNCwiaWF0IjoxNjQ5ODE1MzA0LCJqdGkiOiIzN2VkYTNjYzlkYWE0MzY5ODU3Yjk2NTk1NWI3OTdhMyIsInVzZXJfaWQiOjJ9.4v1m6N0l2E2QnowteATQD_5Od4q7uYuVzUX-5u5l_4M	2022-04-13 02:01:44.948472+00	2022-04-14 02:01:44+00	2	37eda3cc9daa4369857b965955b797a3
17	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwMTc4MiwiaWF0IjoxNjQ5ODE1MzgyLCJqdGkiOiI3NTZhYmE3ZDc1MzM0MWFkOGYyMTIyZDcyYTI2ZTAyZCIsInVzZXJfaWQiOjJ9.VgNqdg5iB6D3ZeR2UYLZiF7zg6AAYDGC52Gf9CZEmVk	2022-04-13 02:03:02.630578+00	2022-04-14 02:03:02+00	2	756aba7d753341ad8f2122d72a26e02d
18	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwMTkwMCwiaWF0IjoxNjQ5ODE1NTAwLCJqdGkiOiJhNmM3NDEzNjVjNTU0NThlYWY5NzhlNzAwN2QzMTI3YiIsInVzZXJfaWQiOjJ9.OOFbFDjWe1PW_yJlPisxdx882u0ug_C3U4rq5l6i-TM	2022-04-13 02:05:00.22213+00	2022-04-14 02:05:00+00	2	a6c741365c55458eaf978e7007d3127b
19	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwMjA2OSwiaWF0IjoxNjQ5ODE1NjY5LCJqdGkiOiIyYzRhNGZlNjRhZjc0YmIyYjI0YzAzOWQ5MjA4OWU1ZCIsInVzZXJfaWQiOjJ9.-rIggjW0WX4sfTA3zLL4U9P4sSf-TOGeLV17EhSoXcM	2022-04-13 02:07:49.669251+00	2022-04-14 02:07:49+00	2	2c4a4fe64af74bb2b24c039d92089e5d
20	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwMjE2NiwiaWF0IjoxNjQ5ODE1NzY2LCJqdGkiOiIxNTc1YWRmOGNkMjg0NWZjODMxOTE5N2Q4NTBhNzgxZCIsInVzZXJfaWQiOjJ9.nF3M8MydVYlh1ekx9q5TQgAQAKZriTTYJfPIQDy3EFo	2022-04-13 02:09:26.897498+00	2022-04-14 02:09:26+00	2	1575adf8cd2845fc8319197d850a781d
21	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwMjc2NSwiaWF0IjoxNjQ5ODE2MzY1LCJqdGkiOiI0ZWMwOWU3MjUwYTA0MTFlYWUzNjA3YmM2MTUzYzIxZSIsInVzZXJfaWQiOjJ9.nSHnLepO_pfWAqmAr_M2eb6QuAxP_3Xm4mhxp2qtzyI	2022-04-13 02:19:25.655744+00	2022-04-14 02:19:25+00	2	4ec09e7250a0411eae3607bc6153c21e
22	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwMjkwOSwiaWF0IjoxNjQ5ODE2NTA5LCJqdGkiOiI0M2FkNmNmYTk3N2U0YTcyYmNmNzdlNTdiZTBhMzliOCIsInVzZXJfaWQiOjJ9.shnCGgRnTeUmC0VrckcPyfWs_afQN_1PEfGh-aDKUhw	2022-04-13 02:21:49.877705+00	2022-04-14 02:21:49+00	2	43ad6cfa977e4a72bcf77e57be0a39b8
23	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwMjkyMiwiaWF0IjoxNjQ5ODE2NTIyLCJqdGkiOiIxM2YxYmUyZjQ1OGY0NjAzODRkMDk2ZWExNjZmMTI4NyIsInVzZXJfaWQiOjJ9.lxToxzNcAsee3ipds9VzTixC3n1hzDWamK3jy1KP-ds	2022-04-13 02:22:02.145036+00	2022-04-14 02:22:02+00	2	13f1be2f458f460384d096ea166f1287
24	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwMzAwMywiaWF0IjoxNjQ5ODE2NjAzLCJqdGkiOiI3OWI1M2NlNjIwNTY0YTljYTgxNmYwNGU0N2I3NDFmNCIsInVzZXJfaWQiOjJ9.gPjkBaVf8EPPUVdazdyfB3hPTsmhIp8Frjt-2ZWoCmc	2022-04-13 02:23:23.220707+00	2022-04-14 02:23:23+00	2	79b53ce620564a9ca816f04e47b741f4
25	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwMzEzMCwiaWF0IjoxNjQ5ODE2NzMwLCJqdGkiOiI5ZGM0YTJkNWVlN2M0MjczYTUwMjZkNzZmMTUzZjNkYyIsInVzZXJfaWQiOjJ9.oq4tTNXIQdjd3q_HpqOPS-3AQt-IYQBDYKBBEwpRt8U	2022-04-13 02:25:30.173485+00	2022-04-14 02:25:30+00	2	9dc4a2d5ee7c4273a5026d76f153f3dc
26	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNDMxNywiaWF0IjoxNjQ5ODE3OTE3LCJqdGkiOiI1YjI0ZWY2OTMzZGU0YTY1ODcwZGY1OTFkZTlmYzFlYyIsInVzZXJfaWQiOjJ9.jMQmelXKctHEgPqngB6_yJuyubWCkBHyNdmdDgbhzfg	2022-04-13 02:45:17.167972+00	2022-04-14 02:45:17+00	2	5b24ef6933de4a65870df591de9fc1ec
27	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNDQzMSwiaWF0IjoxNjQ5ODE4MDMxLCJqdGkiOiIwNjUzNzUwNTZiMzQ0NTZhOWZhYWZlYTNhZDAxNjUxZCIsInVzZXJfaWQiOjJ9.qtltYp9ZkGcxQRb9AmW1R-v70rhqQTWjNUvYDnFWfHk	2022-04-13 02:47:11.582636+00	2022-04-14 02:47:11+00	2	065375056b34456a9faafea3ad01651d
28	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNDQ0OCwiaWF0IjoxNjQ5ODE4MDQ4LCJqdGkiOiI3ZmI5ZmY5ZWJlOTc0NTJiOTM5OGY2ZDY1OGZjMTY1MyIsInVzZXJfaWQiOjJ9.JCZaEQxt8ZgrsT9ZhPwLTbdKpuSnxqUnD1VmUrxKMq8	2022-04-13 02:47:28.910009+00	2022-04-14 02:47:28+00	2	7fb9ff9ebe97452b9398f6d658fc1653
29	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNDU2NSwiaWF0IjoxNjQ5ODE4MTY1LCJqdGkiOiJjODkzMzg3OTNjODQ0OTYzYmYyOTA3Y2ZmMjNkZmU4OCIsInVzZXJfaWQiOjJ9.XVCNcnjf6iRUnBQXIwZGzND5gliHbkbXjTreBgd3UJM	2022-04-13 02:49:25.613651+00	2022-04-14 02:49:25+00	2	c89338793c844963bf2907cff23dfe88
30	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNDcxMiwiaWF0IjoxNjQ5ODE4MzEyLCJqdGkiOiIwYzZiOTYxNDNkYmE0Mzg1OTY4ZWM2MWQ4YWFhNDI1NCIsInVzZXJfaWQiOjJ9.-Fj1KZWgEtfIsFR5V7effCkhlD2ALam0QwW819OQC3w	2022-04-13 02:51:52.299772+00	2022-04-14 02:51:52+00	2	0c6b96143dba4385968ec61d8aaa4254
63	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNTE1MSwiaWF0IjoxNjQ5ODE4NzUxLCJqdGkiOiIyM2M0OGQwZjJkZjg0ZDU3YmFmM2I4ZDE0ZjQ5Njk2YyIsInVzZXJfaWQiOjM0fQ.L_boRQdFRvVJDUuJkm9D996gq2YEVSjn9iNS8YwBCMc	2022-04-13 02:59:11.569796+00	2022-04-14 02:59:11+00	34	23c48d0f2df84d57baf3b8d14f49696c
64	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNTg1MywiaWF0IjoxNjQ5ODE5NDUzLCJqdGkiOiI2YWMzMmExMTg1MTQ0ZjQ5OTM3YTY3M2ZlMmVmMjIwZiIsInVzZXJfaWQiOjJ9.Hp8t4waHECZANV_FUBXeKNK6H84DWcCDkq0upPQOijw	2022-04-13 03:10:53.901317+00	2022-04-14 03:10:53+00	2	6ac32a1185144f49937a673fe2ef220f
65	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNjEyNCwiaWF0IjoxNjQ5ODE5NzI0LCJqdGkiOiI5ZDE0YTIxNmM0MDQ0ODBhYWZkOWY0YWRhMzJkMWI0OCIsInVzZXJfaWQiOjJ9.S1R77mu5E99CSZr51gUC9Z3CgFQ4BiZCysKicUux0G0	2022-04-13 03:15:24.225391+00	2022-04-14 03:15:24+00	2	9d14a216c404480aafd9f4ada32d1b48
66	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNjc3MCwiaWF0IjoxNjQ5ODIwMzcwLCJqdGkiOiIwMWIyOWE5MTYwOTI0NWNjYjE5OGQ1MTRiMjM0NTY0NSIsInVzZXJfaWQiOjJ9.QhfUTPGZstq5knnhkDvpGWS0n4BrWKmFfa5gNBfaIhA	2022-04-13 03:26:10.852925+00	2022-04-14 03:26:10+00	2	01b29a91609245ccb198d514b2345645
67	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNjkxNiwiaWF0IjoxNjQ5ODIwNTE2LCJqdGkiOiIyZjlmOGI5MWI1NmE0OGFhOGFkNzQ0YjNkYjkxZWUwYiIsInVzZXJfaWQiOjJ9.gI7NxUjFz3cah90QMF6tySes3VfUz5JFmb388bPFk0s	2022-04-13 03:28:36.338776+00	2022-04-14 03:28:36+00	2	2f9f8b91b56a48aa8ad744b3db91ee0b
68	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNjk5OSwiaWF0IjoxNjQ5ODIwNTk5LCJqdGkiOiJjODc0OWFjYjYxOTk0NDA0YTk5YTdmYzYwM2U5MTZiMyIsInVzZXJfaWQiOjJ9.lHDsGp7G5VkkPGppSxBhs0oq5rHnNaQhh52IaUdlPSU	2022-04-13 03:29:59.436446+00	2022-04-14 03:29:59+00	2	c8749acb61994404a99a7fc603e916b3
69	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNzE2MiwiaWF0IjoxNjQ5ODIwNzYyLCJqdGkiOiJkNTNjYWY1MGJiMzE0MDIzYjVhOGYzNGQzZjdlMzg3ZCIsInVzZXJfaWQiOjJ9.CbGdgJGXGqGlSouCtEcl6pF31PFkXL397Bv0uDn6BIc	2022-04-13 03:32:42.225792+00	2022-04-14 03:32:42+00	2	d53caf50bb314023b5a8f34d3f7e387d
70	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNzIzMCwiaWF0IjoxNjQ5ODIwODMwLCJqdGkiOiI1NzZlMDQyNzAxZWY0NDRhYjU1ZjU4OGNhMGM1ODA5MyIsInVzZXJfaWQiOjJ9.r6S4-WdqQ3dxs5dPsrqDlwuUFfVtWtD3hA4sSbYEsSM	2022-04-13 03:33:50.703639+00	2022-04-14 03:33:50+00	2	576e042701ef444ab55f588ca0c58093
71	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNzUzMCwiaWF0IjoxNjQ5ODIxMTMwLCJqdGkiOiJiZGFjODE1MzlmZTI0ZDI4YWZlMjcwZjk3ZjEzYmE0YSIsInVzZXJfaWQiOjJ9.I0O6esGqdNi0dig94aF0Wac5wrubwB5YFDL7Z74SHWA	2022-04-13 03:38:50.777188+00	2022-04-14 03:38:50+00	2	bdac81539fe24d28afe270f97f13ba4a
72	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNzc0MCwiaWF0IjoxNjQ5ODIxMzQwLCJqdGkiOiIwZWQ4OGUzMTBjOTk0NTBjYjg3MGU2MWIxZmE5Mzg5ZCIsInVzZXJfaWQiOjJ9.3LqfY1pgK8N6rXG8v2y0LWkJVvS4gEQgo-F3K-6lcAM	2022-04-13 03:42:20.39585+00	2022-04-14 03:42:20+00	2	0ed88e310c99450cb870e61b1fa9389d
73	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNzgyNywiaWF0IjoxNjQ5ODIxNDI3LCJqdGkiOiJmZDEwODQ2YzIxZDc0NzgxYjM0OTg2NmQ3ZGFkNWEwNSIsInVzZXJfaWQiOjJ9.IZ1UI1fLzraPr0G4rJ4oAqrCj1DIaUcntfJxvKBd-G0	2022-04-13 03:43:47.065199+00	2022-04-14 03:43:47+00	2	fd10846c21d74781b349866d7dad5a05
106	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwODYyNSwiaWF0IjoxNjQ5ODIyMjI1LCJqdGkiOiJhOTI3ODQxYjYxNGQ0OTc1OTQzM2QyMjU4NjE3NjRkMyIsInVzZXJfaWQiOjJ9.PJMyuaa5Cv1HDSSjbKZ-lpvCepn5ekgd63a8Ekc_hgc	2022-04-13 03:57:05.041586+00	2022-04-14 03:57:05+00	2	a927841b614d49759433d225861764d3
139	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwODc3MywiaWF0IjoxNjQ5ODIyMzczLCJqdGkiOiJiZGIzNzQ4Y2FmNDE0ZjZiODg0ZTNkMGZmODQ2ODU0ZiIsInVzZXJfaWQiOjJ9.RkrtVDg40FiBdBqDrFqTk6gcAwjJL7gPSBTgBLOzPe0	2022-04-13 03:59:33.402373+00	2022-04-14 03:59:33+00	2	bdb3748caf414f6b884e3d0ff846854f
140	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwOTEyOSwiaWF0IjoxNjQ5ODIyNzI5LCJqdGkiOiJhMTJjNGM4YTIzODE0ZTBmOTVhYjE0NmU1YTFjYjljMSIsInVzZXJfaWQiOjJ9.L_eBo4ENuhfogAJ0kvr-QHqhh41291jywjBXN1KLwPo	2022-04-13 04:05:29.818784+00	2022-04-14 04:05:29+00	2	a12c4c8a23814e0f95ab146e5a1cb9c1
173	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwOTI4NCwiaWF0IjoxNjQ5ODIyODg0LCJqdGkiOiIwNGY4MDI0MDFiODg0Y2VhOWM0OGYwMGVlY2Y1MWJlNiIsInVzZXJfaWQiOjJ9.3UY_RMz2vHmRyH2YgNBOs-Om0r87oTcgoAItdJZgB2Y	2022-04-13 04:08:04.510395+00	2022-04-14 04:08:04+00	2	04f802401b884cea9c48f00eecf51be6
206	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwOTczNiwiaWF0IjoxNjQ5ODIzMzM2LCJqdGkiOiIxYjMxOWZiMzJlODQ0NTA3ODdlZjE2MTBmYTI3ZDIyOCIsInVzZXJfaWQiOjJ9._hDl91f2axWllqLyIvmCnoZfutymL6A5GEL97Ypk7i0	2022-04-13 04:15:36.440427+00	2022-04-14 04:15:36+00	2	1b319fb32e84450787ef1610fa27d228
207	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwOTgxMiwiaWF0IjoxNjQ5ODIzNDEyLCJqdGkiOiJiZTgxN2MzMTMwNDM0ZWE3ODgxOWNjODc0ZjZhODJiOCIsInVzZXJfaWQiOjJ9.HIAAkiidbGZH1OQfn9QGIZTl8HpIVWJd6GqG8lkBfMg	2022-04-13 04:16:52.681447+00	2022-04-14 04:16:52+00	2	be817c3130434ea78819cc874f6a82b8
208	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwOTk3OSwiaWF0IjoxNjQ5ODIzNTc5LCJqdGkiOiIzMjU2NzhjNjUxMDQ0NjJmYTY3Njc0OTVmNWRkYTAzYyIsInVzZXJfaWQiOjJ9.vbjNcu486H0WSI42ozckitjfxUm4OPVMabuOt3rFQJc	2022-04-13 04:19:39.425715+00	2022-04-14 04:19:39+00	2	325678c65104462fa6767495f5dda03c
209	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwOTk3OSwiaWF0IjoxNjQ5ODIzNTc5LCJqdGkiOiJiZWM3ZDBjMzlmMTM0NjAyYjllODlkOTUwMzRlNjBlOCIsInVzZXJfaWQiOjJ9._jtyXjzWvP0x5usMcztcwA8zvSs7p_-xVA6ou0NHDsk	2022-04-13 04:19:39.545422+00	2022-04-14 04:19:39+00	2	bec7d0c39f134602b9e89d95034e60e8
210	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMDczMywiaWF0IjoxNjQ5ODI0MzMzLCJqdGkiOiIyMDA0ZmExYWNjZjQ0OGJlODZkYzZkMjg3NTNhOWM1MSIsInVzZXJfaWQiOjJ9.NOCYmvpB5HOUwtqO5RQUDtJoZ9UWMm3YBQNJAKBxU7U	2022-04-13 04:32:13.448734+00	2022-04-14 04:32:13+00	2	2004fa1accf448be86dc6d28753a9c51
211	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMDczMywiaWF0IjoxNjQ5ODI0MzMzLCJqdGkiOiI4YjU4ZGQ4NDhiNjM0ZDAyYWVkYjQyYzk2MjBjYTQ2ZCIsInVzZXJfaWQiOjJ9.bTTpZy-evHB0LXqsETv_1HM2iHJfAk4uiiWjh7Y3Abs	2022-04-13 04:32:13.484845+00	2022-04-14 04:32:13+00	2	8b58dd848b634d02aedb42c9620ca46d
212	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMDc3MSwiaWF0IjoxNjQ5ODI0MzcxLCJqdGkiOiI1ZWExZjU4MzI1YjA0Yjc4YWU1Y2U3Nzk0ZDcyYzBjZCIsInVzZXJfaWQiOjJ9.YLyQc5H6VboY4MWgSs3mz0EhDelLoFXNnNntBO4NPtM	2022-04-13 04:32:51.40181+00	2022-04-14 04:32:51+00	2	5ea1f58325b04b78ae5ce7794d72c0cd
213	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMDc3MSwiaWF0IjoxNjQ5ODI0MzcxLCJqdGkiOiJhNjhjODMzM2UzMzA0NjAzODYxZmEzNTA5ZWMzMjczYyIsInVzZXJfaWQiOjJ9.Gm2l-shS219DK860FUbBckDolPE3GLFPWYJcXmQZO7w	2022-04-13 04:32:51.482653+00	2022-04-14 04:32:51+00	2	a68c8333e3304603861fa3509ec3273c
243	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMDgxNCwiaWF0IjoxNjQ5ODI0NDE0LCJqdGkiOiI3OTI1OGJjMmM2OGI0Zjg0YmFhOTVkOGVhZTU5ZTRjOSIsInVzZXJfaWQiOjJ9.iGTZJx2rEb3piV1fzfU2vj2YmVOr9vfvZogC6B0XHdM	2022-04-13 04:33:34.134568+00	2022-04-14 04:33:34+00	2	79258bc2c68b4f84baa95d8eae59e4c9
244	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMDgyNywiaWF0IjoxNjQ5ODI0NDI3LCJqdGkiOiI2NGNiMDQyZjgzYWM0ZGFlODIyZmVkZjMxMTIxNzI2ZiIsInVzZXJfaWQiOjJ9.L9T7qOpzUnGug-oRwzLdhmKT2z5J5mWFnPcUi3kB_YQ	2022-04-13 04:33:47.569604+00	2022-04-14 04:33:47+00	2	64cb042f83ac4dae822fedf31121726f
245	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMDgyNywiaWF0IjoxNjQ5ODI0NDI3LCJqdGkiOiI0Nzk1ZGM2YWRmYTY0NjY1OGZjMzYxNmNiYmMzZDI1NiIsInVzZXJfaWQiOjJ9.CgciyDFJn55Z8T7k6H1B4vx3D_TgBBs6LLRbqu8g7Qc	2022-04-13 04:33:47.818477+00	2022-04-14 04:33:47+00	2	4795dc6adfa646658fc3616cbbc3d256
246	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMDg1MSwiaWF0IjoxNjQ5ODI0NDUxLCJqdGkiOiI1YzE4ODkzOTVjOWQ0MTRlYmQ4OTFlYTYyNjJiNjRlZiIsInVzZXJfaWQiOjJ9.-GaeiPqcCX3okYXPkaPQiu7S57UjX50WUxh28j_vh_4	2022-04-13 04:34:11.681641+00	2022-04-14 04:34:11+00	2	5c1889395c9d414ebd891ea6262b64ef
247	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMDg1MSwiaWF0IjoxNjQ5ODI0NDUxLCJqdGkiOiIzZDg3MjA3ZGEyZDg0MDQwODNiYzg5MzJkYTAyYzYwNCIsInVzZXJfaWQiOjJ9.x5oPmw-8ZipnrCcer8zKnaCJIWf4_-Bp_wBS9v_wQNM	2022-04-13 04:34:11.741571+00	2022-04-14 04:34:11+00	2	3d87207da2d8404083bc8932da02c604
248	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMDkwOCwiaWF0IjoxNjQ5ODI0NTA4LCJqdGkiOiIxYjA1ZThhMjYyMTY0NmM5OTk0YzcwYTc0Y2ViMGE3ZSIsInVzZXJfaWQiOjJ9.6ppiWNa98X_UIn4hVZVAR3VEWWTM-E1G4ky3o42kdFA	2022-04-13 04:35:08.562933+00	2022-04-14 04:35:08+00	2	1b05e8a2621646c9994c70a74ceb0a7e
249	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMDkwOCwiaWF0IjoxNjQ5ODI0NTA4LCJqdGkiOiJhZTFjYTNlYzkyMTc0YWQ2YTYwYjFlNGFiYzYyN2MwNiIsInVzZXJfaWQiOjJ9.X7JHu10ncTJqgGwrLuiL75xraeCA7ux0ROvdoBc8fOQ	2022-04-13 04:35:08.612005+00	2022-04-14 04:35:08+00	2	ae1ca3ec92174ad6a60b1e4abc627c06
250	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMDkzMSwiaWF0IjoxNjQ5ODI0NTMxLCJqdGkiOiIzYjMzY2YyYmE5NDE0MDAzYWU5MGQ0OWYyMjE0NjgyNyIsInVzZXJfaWQiOjJ9.Ef2cNYCXtiyikvqlgF6YxsoPDhXNsnEmWI-4WsEApG0	2022-04-13 04:35:31.098372+00	2022-04-14 04:35:31+00	2	3b33cf2ba9414003ae90d49f22146827
251	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMDkzMSwiaWF0IjoxNjQ5ODI0NTMxLCJqdGkiOiIyOTkyNjVhM2YxYTk0OWY1ODAzNTNkY2MzMzQ2YjUwMSIsInVzZXJfaWQiOjJ9.Px6PF7pf0rVm9sqAZt1IGWTb462SFRn9i7CqGePFCoA	2022-04-13 04:35:31.16156+00	2022-04-14 04:35:31+00	2	299265a3f1a949f580353dcc3346b501
276	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMDk1NSwiaWF0IjoxNjQ5ODI0NTU1LCJqdGkiOiI1YmIxOGIzZDQ4OGY0OWU0OGJjNTljNmNjOWJhMjdmZiIsInVzZXJfaWQiOjJ9.0gplFr5kHemX9jv3RqQ9NGPxRxtIsU0cMmixle7Aj6s	2022-04-13 04:35:55.192972+00	2022-04-14 04:35:55+00	2	5bb18b3d488f49e48bc59c6cc9ba27ff
277	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMTA2NiwiaWF0IjoxNjQ5ODI0NjY2LCJqdGkiOiJkMjg5NzVkNTljYjk0MDU1YmZkNTNlM2IwNzdkYjNlYSIsInVzZXJfaWQiOjJ9.YMSMgr7lCZVUQBK44Wsk7qZv2vlkeeLa47LWBksZXBs	2022-04-13 04:37:46.388322+00	2022-04-14 04:37:46+00	2	d28975d59cb94055bfd53e3b077db3ea
278	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMTA2NiwiaWF0IjoxNjQ5ODI0NjY2LCJqdGkiOiJlNDk5NjM3MTRjZjY0Y2ViYWI2NDM5NGY5N2MxNmY1NyIsInVzZXJfaWQiOjJ9.M-JLPcVu7AvMbPADknZ6Xs7aYnc4VLrXyhqNmcLL1Ow	2022-04-13 04:37:46.507291+00	2022-04-14 04:37:46+00	2	e49963714cf64cebab64394f97c16f57
279	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMTE2MywiaWF0IjoxNjQ5ODI0NzYzLCJqdGkiOiI2OTIzZWMzYTRhOGU0NDhlYjk5MjRmYzRmOTIxNDdlNSIsInVzZXJfaWQiOjM1fQ.d67KgrqnynkrlPSLL92-IpkKDLGl6yTVIQKwIpj665M	2022-04-13 04:39:23.723104+00	2022-04-14 04:39:23+00	35	6923ec3a4a8e448eb9924fc4f92147e5
280	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMTU2MiwiaWF0IjoxNjQ5ODI1MTYyLCJqdGkiOiJhMjA3NDkwMjJlNzQ0MmU2YjkwZjFjODgyODdjYmQ2YSIsInVzZXJfaWQiOjJ9.8SWOZOxT-08EyFpFP3rRBqUVsk05MQVWqClmhDJGLGM	2022-04-13 04:46:02.711252+00	2022-04-14 04:46:02+00	2	a20749022e7442e6b90f1c88287cbd6a
281	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMTU2MiwiaWF0IjoxNjQ5ODI1MTYyLCJqdGkiOiI3ZGViMTRhYjBkY2U0Zjc2ODE2ZDEzNGFiMDEyNGJjYyIsInVzZXJfaWQiOjJ9.fjlQdgZSZpKGKSokrXJZlo9h1ESgBBkbAmPUfhT8c4o	2022-04-13 04:46:02.760829+00	2022-04-14 04:46:02+00	2	7deb14ab0dce4f76816d134ab0124bcc
282	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMTY0MCwiaWF0IjoxNjQ5ODI1MjQwLCJqdGkiOiIyNTgwNTJlZmVmYzI0YzA0YjFmZTY0MGYxNTczMGUzYiIsInVzZXJfaWQiOjJ9.5FSHzvwGYYV_dt45w7NDdHfWt6VzzBTiRI8jpYm71Pk	2022-04-13 04:47:20.096357+00	2022-04-14 04:47:20+00	2	258052efefc24c04b1fe640f15730e3b
283	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMTY0MCwiaWF0IjoxNjQ5ODI1MjQwLCJqdGkiOiI4ZGQ0ZDI5NTM4ZDE0NTYyYmE0NjQwNzc3MTI4MWYxZiIsInVzZXJfaWQiOjJ9.61lPOMuLOnseQGK8pZM_2atimnrnBANiMspQr29hAmM	2022-04-13 04:47:20.184888+00	2022-04-14 04:47:20+00	2	8dd4d29538d14562ba46407771281f1f
284	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMTg2MywiaWF0IjoxNjQ5ODI1NDYzLCJqdGkiOiI1ZGRkODUyYzFhYjM0NzZmYTNmM2YxZGM0ZTM2M2ZlYSIsInVzZXJfaWQiOjJ9.YFSlLaue2j_rjnp2kMhKRemmNZS1H6T4ndAP_4jqxPk	2022-04-13 04:51:03.414278+00	2022-04-14 04:51:03+00	2	5ddd852c1ab3476fa3f3f1dc4e363fea
285	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMTg2MywiaWF0IjoxNjQ5ODI1NDYzLCJqdGkiOiI0NTg3MmE0OWZlY2Q0NmRhYTMwZDNkYTYzMDU3Mjg1NiIsInVzZXJfaWQiOjJ9.H91F_JvjlTfGRSO0McZTWdKUAC-8lFytUrN3Nkgwwio	2022-04-13 04:51:03.473845+00	2022-04-14 04:51:03+00	2	45872a49fecd46daa30d3da630572856
286	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMjAxMCwiaWF0IjoxNjQ5ODI1NjEwLCJqdGkiOiI4OTg4ZDU3ZTdlZjg0ODQ4OTcyNGVjNTM3MTk2MDMwNiIsInVzZXJfaWQiOjJ9.oOa4UShpa_qhQ1cvRKZmlFHyG2oG8qE77td_bi3IU2A	2022-04-13 04:53:30.224849+00	2022-04-14 04:53:30+00	2	8988d57e7ef848489724ec5371960306
287	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMjAxMCwiaWF0IjoxNjQ5ODI1NjEwLCJqdGkiOiI4ZTc4ZjM5MTU1YzY0ZWZhOTEwZDYxODY1YWI1MGUxNiIsInVzZXJfaWQiOjJ9.Ksg2J_9zHQqTDKK_ZF8wgRE_gD8BZIihiKd2AAz4vvU	2022-04-13 04:53:30.268335+00	2022-04-14 04:53:30+00	2	8e78f39155c64efa910d61865ab50e16
288	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMjA2OCwiaWF0IjoxNjQ5ODI1NjY4LCJqdGkiOiJmNzE2ZDBkYzI1ZWY0Y2Y5OTNmOTY1ZGIyODY0MTRkNSIsInVzZXJfaWQiOjJ9.zf81J6AL2FBCZp7oodyIguPv-VCsZVBK71g68k12rCE	2022-04-13 04:54:28.185772+00	2022-04-14 04:54:28+00	2	f716d0dc25ef4cf993f965db286414d5
289	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMjA2OCwiaWF0IjoxNjQ5ODI1NjY4LCJqdGkiOiIwODA0MmM0NDQ1ZjE0OWNmYmM4Zjk5NDllMWRmMTQyYSIsInVzZXJfaWQiOjJ9.TThe_1crqq2u5W4gAqZIS-tXrhrH78lrgKY4rfVOE7c	2022-04-13 04:54:28.241678+00	2022-04-14 04:54:28+00	2	08042c4445f149cfbc8f9949e1df142a
290	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMjA5OCwiaWF0IjoxNjQ5ODI1Njk4LCJqdGkiOiI2NmZlYWMwZDM1ZGY0OWQxOWM1ZjhkYjZiMTVlMDA4OCIsInVzZXJfaWQiOjM1fQ.hQ0KHRNvgagMvRYMOwD0vg5Nfki63reCnwsmS-42f0o	2022-04-13 04:54:58.836461+00	2022-04-14 04:54:58+00	35	66feac0d35df49d19c5f8db6b15e0088
291	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMjA5OCwiaWF0IjoxNjQ5ODI1Njk4LCJqdGkiOiIyYmFlYTYwOTZkYzM0MjYzOTI2ZmFkZTkzMGMzMGMzYyIsInVzZXJfaWQiOjM1fQ.tvuVXmaR8NVyGUm-faTzG_1MF_gjsO1lZZ0QjD52x1M	2022-04-13 04:54:58.893553+00	2022-04-14 04:54:58+00	35	2baea6096dc34263926fade930c30c3c
292	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMjE5NSwiaWF0IjoxNjQ5ODI1Nzk1LCJqdGkiOiIwNDY5ZDhiMGJmN2U0ZjlkYTBlYmYzMWNjOTQzYzRkMSIsInVzZXJfaWQiOjM1fQ.cAqyT6qSkHZ_8BTMTIqiHRHtOOflaPcXW6yfZWYUXqM	2022-04-13 04:56:35.400808+00	2022-04-14 04:56:35+00	35	0469d8b0bf7e4f9da0ebf31cc943c4d1
293	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMjE5NSwiaWF0IjoxNjQ5ODI1Nzk1LCJqdGkiOiIxNWU4OTVlNTU4YzQ0Zjk0OTFmNTk5MGE0ZjU0MGI1MyIsInVzZXJfaWQiOjM1fQ.ptsOWZ7QuZjjkqGTlPJnVlDAHveY4twfle2tKLHoFJE	2022-04-13 04:56:35.441756+00	2022-04-14 04:56:35+00	35	15e895e558c44f9491f5990a4f540b53
294	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMjI1MCwiaWF0IjoxNjQ5ODI1ODUwLCJqdGkiOiJiODZkNTYyZjFlM2I0MmU0YWI4Y2IwODE4MTMzNjc5MCIsInVzZXJfaWQiOjM1fQ.XcOsqbwTfoaHLUHwYDeMUjTumv5ei0czwLHLsWd0Hc4	2022-04-13 04:57:30.008941+00	2022-04-14 04:57:30+00	35	b86d562f1e3b42e4ab8cb08181336790
295	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMjI1MCwiaWF0IjoxNjQ5ODI1ODUwLCJqdGkiOiJkMzg4ODg4Mzg4MWQ0ZDliOTc1ZTc4NmFkYjBiYWExYyIsInVzZXJfaWQiOjM1fQ.FmZmSwA9uMbDid_DKW596Ci-WK-_4eCeePWl5oclVsg	2022-04-13 04:57:30.074747+00	2022-04-14 04:57:30+00	35	d3888883881d4d9b975e786adb0baa1c
296	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMjMxNiwiaWF0IjoxNjQ5ODI1OTE2LCJqdGkiOiIzZmYzZmI0NzkyMmU0NzE3OTk2MTU5ZjAxYTNhNDFkMCIsInVzZXJfaWQiOjM1fQ.x-eFxFXVgBiwoCKhZZm-umWik8-33FWiGBGtxRVKAQw	2022-04-13 04:58:36.2111+00	2022-04-14 04:58:36+00	35	3ff3fb47922e4717996159f01a3a41d0
325	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMjM0NCwiaWF0IjoxNjQ5ODI1OTQ0LCJqdGkiOiIzYTIyYzU2NmY3N2Y0OWU4OWFkNmFmYzU1NDNiNTc3MyIsInVzZXJfaWQiOjM1fQ.yWq35C8mc2J_j99bfk96QwUtr20B_idGICXEY0ULFVs	2022-04-13 04:59:04.820816+00	2022-04-14 04:59:04+00	35	3a22c566f77f49e89ad6afc5543b5773
326	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMjQ4OCwiaWF0IjoxNjQ5ODI2MDg4LCJqdGkiOiI3NTJhZDYyM2UwMmY0ODliOTU1ZmU3MGY1MDk1ODUxMCIsInVzZXJfaWQiOjM1fQ.De6Sj30xGqmV0SJTI0nkw2DpM2Zl0NzEneF75ZMvw4A	2022-04-13 05:01:28.385544+00	2022-04-14 05:01:28+00	35	752ad623e02f489b955fe70f50958510
327	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMjQ4OCwiaWF0IjoxNjQ5ODI2MDg4LCJqdGkiOiI4MjZiMWVjYmI4YjU0OWIxYmVjYTMyMTQ4Y2JlNjVkOSIsInVzZXJfaWQiOjM1fQ.alqW7IsT0Wpd00-Ea6SQiiyWOWKQviUfMM5uqml_FRg	2022-04-13 05:01:28.511853+00	2022-04-14 05:01:28+00	35	826b1ecbb8b549b1beca32148cbe65d9
328	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkxMjQ5OCwiaWF0IjoxNjQ5ODI2MDk4LCJqdGkiOiI5MDFiYzY4NTg2Yjc0OGYwOWExMjBkYmMzOWQ3MWFhZSIsInVzZXJfaWQiOjM1fQ.Qq5pje7xF6mhTbErbK5Gja0RHGDa_nBWinhE9f-EwBw	2022-04-13 05:01:38.41311+00	2022-04-14 05:01:38+00	35	901bc68586b748f09a120dbc39d71aae
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 35, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: books_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.books_author_id_seq', 1, false);


--
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.books_book_id_seq', 1, false);


--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.books_booksauthors_id_seq', 1, false);


--
-- Name: books_booksgenres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.books_booksgenres_id_seq', 1, false);


--
-- Name: books_bookslenguajes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.books_bookslenguajes_id_seq', 1, false);


--
-- Name: books_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.books_genre_id_seq', 1, false);


--
-- Name: books_lenguaje_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.books_lenguaje_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 62, true);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 3, true);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arturo_moreno
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 328, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: books_author books_author_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_author
    ADD CONSTRAINT books_author_pkey PRIMARY KEY (id);


--
-- Name: books_book books_book_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_pkey PRIMARY KEY (id);


--
-- Name: books_booksauthors books_booksauthors_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_pkey PRIMARY KEY (id);


--
-- Name: books_booksgenres books_booksgenres_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_booksgenres
    ADD CONSTRAINT books_booksgenres_pkey PRIMARY KEY (id);


--
-- Name: books_bookslenguajes books_bookslenguajes_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_bookslenguajes
    ADD CONSTRAINT books_bookslenguajes_pkey PRIMARY KEY (id);


--
-- Name: books_genre books_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_genre
    ADD CONSTRAINT books_genre_pkey PRIMARY KEY (id);


--
-- Name: books_lenguaje books_lenguaje_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_lenguaje
    ADD CONSTRAINT books_lenguaje_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: books_booksauthors_author_id_799022ff; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX books_booksauthors_author_id_799022ff ON public.books_booksauthors USING btree (author_id);


--
-- Name: books_booksauthors_book_id_f6bd8a7e; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX books_booksauthors_book_id_f6bd8a7e ON public.books_booksauthors USING btree (book_id);


--
-- Name: books_booksgenres_book_id_b33184f2; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX books_booksgenres_book_id_b33184f2 ON public.books_booksgenres USING btree (book_id);


--
-- Name: books_booksgenres_genre_id_607041db; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX books_booksgenres_genre_id_607041db ON public.books_booksgenres USING btree (genre_id);


--
-- Name: books_bookslenguajes_book_id_8dc7f815; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX books_bookslenguajes_book_id_8dc7f815 ON public.books_bookslenguajes USING btree (book_id);


--
-- Name: books_bookslenguajes_lenguaje_id_e9375442; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX books_bookslenguajes_lenguaje_id_e9375442 ON public.books_bookslenguajes USING btree (lenguaje_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: arturo_moreno
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_author_id_799022ff_fk_books_author_id; Type: FK CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_author_id_799022ff_fk_books_author_id FOREIGN KEY (author_id) REFERENCES public.books_author(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_book_id_f6bd8a7e_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_book_id_f6bd8a7e_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksgenres books_booksgenres_book_id_b33184f2_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_booksgenres
    ADD CONSTRAINT books_booksgenres_book_id_b33184f2_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksgenres books_booksgenres_genre_id_607041db_fk_books_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_booksgenres
    ADD CONSTRAINT books_booksgenres_genre_id_607041db_fk_books_genre_id FOREIGN KEY (genre_id) REFERENCES public.books_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_bookslenguajes books_bookslenguajes_book_id_8dc7f815_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_bookslenguajes
    ADD CONSTRAINT books_bookslenguajes_book_id_8dc7f815_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_bookslenguajes books_bookslenguajes_lenguaje_id_e9375442_fk_books_lenguaje_id; Type: FK CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.books_bookslenguajes
    ADD CONSTRAINT books_bookslenguajes_lenguaje_id_e9375442_fk_books_lenguaje_id FOREIGN KEY (lenguaje_id) REFERENCES public.books_lenguaje(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: arturo_moreno
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

