--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: bususer; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO bususer;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: bususer
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO bususer;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bususer
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: bususer; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO bususer;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: bususer
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO bususer;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bususer
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: bususer; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO bususer;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: bususer
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO bususer;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bususer
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: bususer; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    password character varying(128) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    is_superuser boolean NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO bususer;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: bususer; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO bususer;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: bususer
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO bususer;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bususer
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: bususer
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO bususer;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bususer
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: bususer; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO bususer;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: bususer
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO bususer;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bususer
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: bususer; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO bususer;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: bususer
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO bususer;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bususer
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: bususer; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO bususer;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: bususer
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO bususer;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bususer
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: bususer; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO bususer;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: bususer; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO bususer;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: bususer
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO bususer;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bususer
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: routes_route; Type: TABLE; Schema: public; Owner: bususer; Tablespace: 
--

CREATE TABLE routes_route (
    id integer NOT NULL,
    number character varying(5) NOT NULL,
    name character varying(100) NOT NULL,
    from_stop_id integer NOT NULL,
    to_stop_id integer NOT NULL
);


ALTER TABLE public.routes_route OWNER TO bususer;

--
-- Name: routes_route_id_seq; Type: SEQUENCE; Schema: public; Owner: bususer
--

CREATE SEQUENCE routes_route_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.routes_route_id_seq OWNER TO bususer;

--
-- Name: routes_route_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bususer
--

ALTER SEQUENCE routes_route_id_seq OWNED BY routes_route.id;


--
-- Name: routes_route_stops; Type: TABLE; Schema: public; Owner: bususer; Tablespace: 
--

CREATE TABLE routes_route_stops (
    id integer NOT NULL,
    route_id integer NOT NULL,
    stop_id integer NOT NULL
);


ALTER TABLE public.routes_route_stops OWNER TO bususer;

--
-- Name: routes_route_stops_id_seq; Type: SEQUENCE; Schema: public; Owner: bususer
--

CREATE SEQUENCE routes_route_stops_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.routes_route_stops_id_seq OWNER TO bususer;

--
-- Name: routes_route_stops_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bususer
--

ALTER SEQUENCE routes_route_stops_id_seq OWNED BY routes_route_stops.id;


--
-- Name: routes_stop; Type: TABLE; Schema: public; Owner: bususer; Tablespace: 
--

CREATE TABLE routes_stop (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    latitude character varying(20) NOT NULL,
    longitude character varying(20) NOT NULL
);


ALTER TABLE public.routes_stop OWNER TO bususer;

--
-- Name: routes_stop_id_seq; Type: SEQUENCE; Schema: public; Owner: bususer
--

CREATE SEQUENCE routes_stop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.routes_stop_id_seq OWNER TO bususer;

--
-- Name: routes_stop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bususer
--

ALTER SEQUENCE routes_stop_id_seq OWNED BY routes_stop.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY routes_route ALTER COLUMN id SET DEFAULT nextval('routes_route_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY routes_route_stops ALTER COLUMN id SET DEFAULT nextval('routes_route_stops_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY routes_stop ALTER COLUMN id SET DEFAULT nextval('routes_stop_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: bususer
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bususer
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: bususer
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bususer
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: bususer
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add site	6	add_site
17	Can change site	6	change_site
18	Can delete site	6	delete_site
19	Can add log entry	7	add_logentry
20	Can change log entry	7	change_logentry
21	Can delete log entry	7	delete_logentry
22	Can add stop	8	add_stop
23	Can change stop	8	change_stop
24	Can delete stop	8	delete_stop
25	Can add route	9	add_route
26	Can change route	9	change_route
27	Can delete route	9	delete_route
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bususer
--

SELECT pg_catalog.setval('auth_permission_id_seq', 27, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: bususer
--

COPY auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) FROM stdin;
1	ragsagar			ragsagar@gmail.com	pbkdf2_sha256$10000$RtZOczsOY2Pt$nGP1jGUac/2pn1l6bC4MGfG+byfHox8EIBXcVHI7Dfg=	t	t	t	2013-01-22 23:34:56.573074+05:30	2013-01-22 23:34:56.573074+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: bususer
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bususer
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bususer
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: bususer
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bususer
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: bususer
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bususer
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: bususer
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	permission	auth	permission
2	group	auth	group
3	user	auth	user
4	content type	contenttypes	contenttype
5	session	sessions	session
6	site	sites	site
7	log entry	admin	logentry
8	stop	routes	stop
9	route	routes	route
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bususer
--

SELECT pg_catalog.setval('django_content_type_id_seq', 9, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: bususer
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: bususer
--

COPY django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bususer
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Data for Name: routes_route; Type: TABLE DATA; Schema: public; Owner: bususer
--

COPY routes_route (id, number, name, from_stop_id, to_stop_id) FROM stdin;
1	120	Manapa bhavan to Chakan MIDC	1	57
2	6S	Pune Station to Dange chowk	58	90
3	1	Swargate to Shivajinagar Circle route	91	100
4	12S	Manapa to Ishan nagari	57	116
5	46	Swargate to Lohgaon	91	145
6	120	Manapa bhavan to Chakan MIDC	1	57
7	6S	Pune Station to Dange chowk	58	90
8	1	Swargate to Shivajinagar Circle route	91	100
9	12S	Manapa to Ishan nagari	57	116
50	240	Market yard to Khanapur	190	221
10	46	Swargate to Lohgaon	91	145
11	120	Manapa bhavan to Chakan MIDC	1	57
12	6S	Pune Station to Dange chowk	58	90
13	1	Swargate to Shivajinagar Circle route	91	100
14	12S	Manapa to Ishan nagari	57	116
15	46	Swargate to Lohgaon	91	145
16	120	Manapa bhavan to Chakan MIDC	1	57
17	6S	Pune Station to Dange chowk	58	90
18	1	Swargate to Shivajinagar Circle route	91	100
19	12S	Manapa to Ishan nagari	57	116
20	46	Swargate to Lohgaon	91	145
21	120	Manapa bhavan to Chakan MIDC	1	57
22	6S	Pune Station to Dange chowk	58	90
23	1	Swargate to Shivajinagar Circle route	91	100
24	12S	Manapa to Ishan nagari	57	116
25	46	Swargate to Lohgaon	91	145
26	120	Manapa bhavan to Chakan MIDC	1	57
27	6S	Pune Station to Dange chowk	58	90
28	1	Swargate to Shivajinagar Circle route	91	100
29	12S	Manapa to Ishan nagari	57	116
30	46	Swargate to Lohgaon	91	145
31	120	Manapa bhavan to Chakan MIDC	1	57
32	6S	Pune Station to Dange chowk	58	90
33	1	Swargate to Shivajinagar Circle route	91	100
34	12S	Manapa to Ishan nagari	57	116
35	46	Swargate to Lohgaon	91	145
36	120	Manapa bhavan to Chakan MIDC	1	57
37	6S	Pune Station to Dange chowk	58	90
38	1	Swargate to Shivajinagar Circle route	91	100
39	12S	Manapa to Ishan nagari	57	116
40	46	Swargate to Lohgaon	91	145
41	120	Manapa bhavan to Chakan MIDC	1	57
42	6S	Pune Station to Dange chowk	58	90
43	1	Swargate to Shivajinagar Circle route	91	100
44	12S	Manapa to Ishan nagari	57	116
45	46	Swargate to Lohgaon	91	145
46	2	Katraj to Shivajinagar Station	146	158
47	121	Bhosari to Manapa bhavan	28	57
48	216	Ambegaon to Shaniwar wada	160	168
49	294	Katraj to Khadakwasala	146	189
51	63	Swaragte to Kalyani nagar	91	239
52	205P	Pune Station to Sangvi	60	257
53	192	Hadapsar to Udri	258	273
54	60	Swargate to Pune Vidyapeeth	91	290
55	43	Katraj to Nigdi bypass	146	334
56	323	Chikhali to Manapa bhavan	335	57
57	276	Warje malwadi to Chinchwad gaon	355	364
58	302	Pimpri gaon to Bhosari	365	382
59	277	Kondhava gate to Khadaki bajar	383	401
60	292R	Swaragate to Rahatwade	91	433
61	355	Chikhali to Dange Chauk	335	90
62	3S	Katraj to Swargate Mandai	146	448
63	110	Manapa to Manapa via Karve road	57	57
64	127	Manapa bhavan Telegaon Dabhade	57	517
65	335	Jambhe to Pune Station via Punawale	518	58
66	236	Manapa to Khulewadi	533	550
67	9	Hadapasar to Uruli Kanchan Railway Staion	258	586
68	20	Sahakar nagar to Pune Station	587	229
69	366	Nigadi to Pune Station via Yerwada	600	58
70	68S	Sutardara to Swargate via Mandai	611	91
71	58P	Shanipar to Pandavnagar	624	625
72	292A	Swargate to Avasarwadi	91	430
73	317	Sambhajinagar to Pune Station	626	58
74	118	Swargate to Wadgaon Bu	91	630
75	187	Hadapsar to Pune Station	258	229
76	144A	Sai Sayaji nagar to Pune Station	650	229
77	12	Uppar Depot to Nigadi	654	334
78	11K	Katraj to Pimple Gurav	146	676
79	144B	Kumbre park to Sainathnagar	677	694
80	11S	Deccan gymkhana to Ghotawade phata	102	717
81	61	Katraj to Nasrapur	146	732
82	176	Swargate to Mohmmadwadi	91	268
83	197	Hadapsar to Kothrud Depot	258	459
84	6	Swargate to Wadgaon Sheri	91	771
85	131	Pune Station to Wadgaon Shinde	772	798
86	166	Pune Station to Viman nagar	229	804
87	329A	Dehugaon Pune Station Via Yerwada	805	58
88	7A	Hadapsar to Uruli Kanchan	258	829
89	147	Manapa bhavan to Pimpri Sandas	533	858
90	133	Manapa to Sainathnagar	533	694
91	78	Market yard to Kondhava gate	190	876
92	89	Swargate to Niljyoti	91	883
93	307	Chintamani chauk to Pimpri manapa	884	899
94	162	Manama bhavan to Karandi 	57	914
95	225	Swargate to Wakadgaon	91	918
96	113	A B Chowk to Sangvi	919	257
97	126	Mhaske wasti to Pimple nilakh	920	933
98	68	Swargate to Kothrud Depot	91	459
99	347	Dapodi Gaon to Alandi	934	971
100	174	Pune Station to NDA gate	58	876
101	306	Moshi to Chinchwad gaon	19	364
102	108	Sutardara to Pune Station	611	229
103	291A	Bibvewadi to Hadpasar	658	258
104	158B	Deccan to Lohgaon Airport	1016	102
105	346A	Bhosari to Hadapsar	28	258
106	311A	Pimpri gaon to Pune Station via Wakdewadi	365	58
107	303	Nigadi to Alandi via Chinchwad	334	971
108	69	Market yard to Ghotawade gaon	190	1054
109	341	Mohan nagar to Manapa via Aundh	989	57
110	90P	Swargate to Pandavnagar	91	624
111	114A	Hadapsar to Mhalunge Gaon	258	1065
112	146	Pune Station to Gokhalenagar	772	1068
113	298	Katraj to Chinchwad gaon	146	364
114	309	Dehugaon to Alandi	805	971
115	185	Hadapsar to Manjri bu	258	1089
116	57A	Pune Station to Suncity	772	1104
117	1S	Bharati Vidyapeeth to Shanipar Mandai	166	448
118	205	Hadapsar to Sangvi gaon	258	257
119	26	Dhankavadi to Pune Station	1120	229
120	56	Shanipar to Wadgaon	625	630
121	229	Bharti Vidyapeeth to Vishrantwadi	166	139
122	3	Swaragte to Pune Station	91	229
123	371	Pimpri manapa to Pimpri manapa via Chinchwad station Circle	485	373
124	96	Warje Malwadi to Pimple Gurav	355	676
125	159	Manapa bhavan to Talegaon Dhamdhere	1136	57
126	80	Manapa bhavan to Cipla center	57	299
127	64	Swargate to Warje Malwadi	91	355
128	23	Rajiv Gandhinagar to Pune Station	654	229
129	113B	Manapa to Pimple Gurav	57	676
130	79	Warje Malwadi to Shivajinagar	355	158
131	83	Manapa bhavan to Warje malwadi	57	355
132	320	Alandi to Mhalunge gaon	971	1065
133	158	Manapa to Lohgaon	533	145
134	139A	Nigadi to Hadapsar	334	258
135	131	Pune Station to Wadgaon Shinde	229	798
136	29	Swargate to Alandi devachi	91	971
137	41	Market yard to Sangvi	190	257
138	36	Manapa to Chinchwad Gaon	57	364
139	140	Upper Depot to Pune station	654	1176
140	349	Pimpri gaon to Vishrantwadi	365	139
141	363	Nigadi to Kiwale	1193	600
142	358	Pimpri Manapa toRajgurunagar	373	1221
143	227	Market yard to Marnewadi	190	1230
144	292K	Swargate to Kalyan	91	1236
145	64A	Swagate to Warje Malwadi	91	355
146	49	Pune Station to Khanapur	772	221
147	59	Shanipar to Niljyoti	625	883
148	1R	Hadapsar to Swargate	258	91
149	130	Yewlewadi to Shivajinagar	1244	158
150	14s	Nigadi to Chinchwad gaon	600	364
151	157	Swargate to Lohgaon	91	145
152	117	Swaragte to Dhayari gaon	91	1256
153	376B	Nigadi to Hadapsar via Masulkar Colony	600	258
154	70	Deccan gymkhana to Paudgaon	102	1276
155	134	Pune Station to Vidyanagar	60	1280
156	163	Pune Station to Kharadi	229	1285
157	148	Hadapsar to Pimple Gurav	258	676
158	42A	Bhakti Shakti to Katraj	334	146
159	90	Swargate to Gokhalenagar	91	1068
160	38	Dhanakwadi to Natawadi	1120	100
161	167	Hadapsar to Wagholi Kesanand phata	258	837
162	327	Hinjewadi phase2  to Alandi	1290	971
163	233	Market yard to Paudgaon	190	1276
164	21N	Swargate to Pimple Nilakh	91	933
165	310	Pimpri gaon to Vikasnagar via Kivale	365	1200
166	333	Pune Station to Hinjewadi Phase3	58	1299
167	86	Kothrud Depot to Manapa	57	459
168	94A	Kumbre park Wadgaon sheri	677	771
169	304	Bhosari to Chinchwad gaon	382	364
170	298	Katraj to Chinchwad gaon	146	364
171	121A	Manapa bhavan to Bhosari Telco	28	57
172	215	Ganesh nagar to Sarasbag	1302	92
173	370	Pimpri manapa to Pimpri manapa via Kalewadi Circle	1307	373
174	301K	Katraj to Hadapsar	146	258
175	207	Swargate to Saswad	91	1336
176	196	Swargate to Kaleboratenagar	91	1341
177	11	Market yard to Pimple Gurav	190	676
178	25	Rajiv Gandhinagar to Pune Vidyapeeth	654	290
179	22	Sukhsagar to Shaniwar wada	999	168
180	264	Manapa to Bahul gaon	57	1358
181	132	Manapa bhavan to Shubham soc	533	1362
182	344	Pimple Nilakh to Alandi	933	971
183	76	Kumbre park to Swargate	677	91
184	293	Swaragate to Khed Shivapur	146	1368
185	105	Deccan gymkhana to Medi point	102	1371
186	328A	Rupinagar to Nigadi	1372	600
187	217	Jambulwadi to Gujarwadi	1375	1386
188	62	Market yard to Sangamwadi	190	1390
189	31	Padmavati to Pune Station	1069	229
190	187C	Pune Station to Kalubai mandir	1176	1015
191	145	Pune Station to NDA D2	58	1406
192	322B	Akurdi Rly Station to Hadapsar	1032	229
193	203	Phursungi to Pune Station	1421	229
194	181	Natawadi to Kondhava bu	100	1006
195	331	Charholi gaon to Rahatani gaon	941	1443
196	190	Hadapsar to Phursungi	258	1421
197	376	Nigadi to Katraj via Masulkar colony	600	146
198	328	Rupinagar to Manapa	57	1372
199	87A	Deccan gymkhana to Sutarwadi	102	309
200	188	Hadapsar to Katraj	258	146
201	179	Mahatma Gandhi to Wadachi wadi	734	1453
202	82	Manapa bhavan to Kondhava Gate	57	876
203	95	Kothrud depot to Pimple Gurav	1454	676
204	291	Hadapsar to Katraj	258	146
205	312A	Chinchwad gaon to Pune Station via Chinchwad station	364	58
206	77	Warje Malwadi to Shivajinagar Station via Sahwas	158	355
207	350	Nigadi to Dehugaon Via Talwade 	600	805
208	143	Galinde path to Pune Station	359	229
209	123A	Akurdi Station to Manapa	57	1032
210	113A	A B Chowk to Pimple Gurav	919	676
211	73	Kothrud depot to Hadapsar	258	459
212	119	Manapa bhavan to Alandi	57	971
213	354	Pimpri  gaon to Market yard 	365	190
214	158A	Deccan to Lohgaon Airport	102	1016
215	16S	Alandi to YCM hospital	971	351
216	353	Pimpri gaon to Dehugaon	365	805
217	100	Manpa bhavan to Hinjewadi phase 3	57	1299
218	331A	Bhosari to Rahatani gaon	382	941
219	68P	Kothrud depot to Swargate via Mandai	1454	91
220	170	Pune station to Kondhava	58	1439
221	7	Swargate to Uruli Kanchan	92	829
222	118A	Swargate to Suncity	91	1104
223	201	Hadapsar to Alandi devachi	971	258
224	200	Sadesatara nali to Swargate	91	1506
225	4S	Pune Station to Alandi Devachi	58	971
226	237	Warje Malwadi to Kharadi gaon	355	1285
227	155A	Pune Station to Munjaba wasti	229	1512
228	5	Swargate to Pune Station	91	229
229	319	Sangvi to Shirgaon	257	1520
230	87	Deccan gymkhana to Abhinav college	102	309
231	15S	Bhosari to Alandi	28	971
232	284	Kothrud depot to Nigdi	1454	334
233	262	Manapa to Dehu gaon	57	805
234	372	Nigadi to Hinjewadi phase3	600	1299
235	48	Pune Station to Venitai college	772	1533
236	5S	Pune Station to Kesnand phata	772	837
237	19	Kondhava Hospital to Shivajinagar	1244	158
238	322	Akurdi Rly Station to Katraj	1032	146
239	112	Eklavya college to Swargate	1365	91
240	84	Deccan gymkhana to Sangrun	102	1552
241	94	Kothrud depot to Pune Station	1454	229
242	360	Alandi to Balewadi	971	1554
243	278	Katraj to Kothrud Depot	146	459
244	85	Manapa bhavan to Ahire gaon	57	1556
245	282	Warje Malwadi to Bhosari	355	28
246	50	Shaniwar wada to Singhgad payatha	168	1562
247	253	Manapa to Vidyanagar	57	1280
248	203P	Pune Station to Hadapsar	1176	258
249	101	Kothrud depot to Kondhava Bu	1006	459
250	123	Nigadi Bhakti shakti to Manpa bhavan	334	57
251	168	Manapa to Keshavnagar	533	1572
252	339B	Indrayani nagar to Pune Station	1573	229
253	368	Alandi to Lonikand phata	971	842
254	337	Pune Station to Pimple Saudagar	58	1414
255	299	Katraj to Bhosari	146	28
256	28	Bharti Vidyapeeth to Pune Vidyapeeth	166	290
257	297	Rajas soc to Shivajinagar Station	1586	158
258	207A	Hadapsar to Saswad	258	1336
259	47	Shaniwar wada to Sanaswadi	168	1595
260	322A	Akurdi Station to Warje Malwadi	1032	355
261	102	Kothrud Depot to Lohgaon	1454	145
262	168P	Pune Station to Keshavnagar	58	1572
263	189	Hadapsar to Uruli Devachi	258	1603
264	27	Bharti Vidyapeeth to Shivajinagar Station	166	158
265	226	Pune Station to Dhayari	58	1605
266	72	Upper depot to Kondhva gate	654	876
267	33	Padmavati to NT wadi	1069	100
268	367	Nigdi to Bhosari	600	382
269	24	Katraj to Maharashtra housing board	146	1610
270	97	Warje Malwadi to Sahkarnagar	355	587
271	281	Warje Malwadi to Nigdi	355	334
272	66	Market yard to Agalambe Gaon	190	1613
273	183	Hadapsar to Theur Factory	258	1622
274	57	Pune Station to Wadgaon bu	772	630
275	154	Pune Station to Vishrantwadi	229	139
276	45	Swargate to Vidyanagar	91	1280
277	157	Swargate to Lohgaon	91	145
278	9S	Galinde path to Swargate via Mandai	359	91
279	315	Bhosari to Pune Station via Yerwada	28	58
280	164	Mahatma Gandhi to Viman nagar	734	804
281	8	Hadapsar to Mhatobachi Alandi	258	1629
282	230	Bharti vidyapeeth to Punestation	166	229
283	202	Hadapsar to Warje Malwadi	258	355
284	65	Upper Depot to Maharashtra housing board	654	1610
285	18	Swargate to Wadgaon Tukai nagar	91	630
286	114	Manapa to Mhalunge gaon	57	1065
287	312B	Chinchwad to Pune station via Bhatnagr	364	58
288	111	Hadapsar to Manapa	258	57
289	161	Deccan gymkhana to Viman nagar	102	804
290	256	Manapa to Balewadi Mojhe vidyalay	57	1637
291	357	Rajgurunagar to Pune Station	229	1221
292	283	Kumbre park to Pune Station	677	229
293	325	Masulkar colony to Pune Station	1257	58
294	177	Pune Station to Salunke vihar	58	745
295	155	Pune Station to Dhanori	58	144
296	81	Kumbre park to Pune Station	677	229
297	141	Khandoba mandir to Pune Station	1639	229
298	88	Swargate to Medipoint	91	1371
299	80A	Manapa bhavan to Garden city	57	301
300	39	Dhankwadi to Pune Station	1120	229
301	37	Natawadi to Sahkaranagar	100	587
302	115P	Pune Station to Infosys phase 3	1299	58
303	235	Katraj to Kharadi	146	1285
304	2S	Katraj to Balewadi	146	1554
305	318	Krushnanagar to Pune Station via Aundh	1644	229
306	13L	Upper Depot Laketown to Shivajinagar	654	158
307	67	Swargate to Kharadi	1285	91
308	71A	Upper depot to Kothrud depot	654	460
309	158	Manapa to Lohgaon	533	145
310	257	Manapa to Markal gaon	533	1575
311	152	Manapa to Vishrantwadi	57	920
312	103	Katraj to Kothrud Depot	146	459
313	195	Hadapsar to Holkarwadi	258	1657
314	351	Alandi to Jambhe	971	518
315	311	Pimpri gaon to Pune Station via Yerwada	365	58
316	75	Deccan gymkhana to Vidyanagar	102	1280
317	332A	Pimpri to Pune station via Kalewadi Aundh	373	58
318	8S	Manapa to Pabal phata	533	1661
319	135	Manapa to Wade Bolhai	533	1671
320	180	Hadapsar to Narveer Tanaji Wadi	258	100
321	315A	Bhosari to Pune Station via Vishrantwadi	28	228
322	10S	Kumbre Park to Shivaji nagar	677	158
323	198	Hadapsar to Manjari via keshavnagar	258	1086
324	252	Manapa bhavan to Charholi Alandi	57	971
325	2R	Katraj to Shivajinagar	146	158
326	122	Manapa bhavan to Chinchwad gaon	57	364
327	149	Hadapsar to Pimpri road	258	485
328	348	Nigadi to Pune Station via Aundh	600	229
329	32	Jyoti park to Shivajinagar station	1678	158
330	42	Katraj to Nigadi	146	334
331	55	Shanipar to Suncity	625	1104
332	295	Katraj to Pune station via gangadham	146	229
333	145A	Pune Station to Sutarwadi	58	309
334	234	Manapa to Kharadi gaon	533	1285
335	13S	Nigadi to Akurdi Railway station	600	1032
336	139	Hadapsar to Nigadi	258	333
337	329	Dehugaon to Pune Station	805	58
338	17	Shaniwarwada to Narhe Ambegaon	168	1691
339	53	Shaniwar wada to DSK	168	1256
340	3R	Katraj to Pune Station	146	229
341	129	Pune Station to Medi Point	58	1371
342	228	Katraj to Telegaon Dabhade	146	517
343	326A	Pimpri gaon to Chikhali via Kudalwadi	365	335
344	301H	Hadapsar to Katraj	258	146
345	308	Nigadi to Bebad ohal	600	1701
346	34	Katraj to Pune Vidyapeeth	146	290
347	309A	Alandi to Dehugaon	805	971
348	376A	Nigadi to Warje Malwadi Via Masulkar colony	600	355
349	339A	Indrayani nagar to Manapa	1573	57
350	13	Upper depot Sukhsagar to Shivajinagar Station	1639	158
351	165	Manapa to Wadgaon sheri	533	771
352	296	Jambhulwadi to Shivajinagar Station	1375	158
353	346	Hadapsar to Bhosari	258	28
354	339C	Indrayani nagar to Manapa bhavan	1573	57
355	332B	Pimpri manpa to Pune Station via Jagtap dairy Aundh	884	58
356	54	Shaniwar wada to Vetutai college	168	1533
357	305	Nigadi to Wadgaon	600	517
358	326B	Pimpri gaon to Chikhali	365	335
359	125	Sangvi to Vishrantwadi	257	139
360	133A	Manapa to Aanand park	533	1713
361	204	Hadapsar to Chinchwad	258	364
362	93	Deccan gymkhana to PimpleNilakh	102	933
363	30	Market yard to Ghotawade phata	190	717
364	7S	Pune Station to Hinjewadi phase3	58	1299
365	58	Shanipar to Gokhalenagar	625	1068
366	184	Swargate to Hadapsar Bhekrainagar Phursungi	91	1421
367	51	Shivajinagar to Dhyari maruti mandir	158	1605
368	144	Kothrud Stand to Pune Station	111	229
369	21	Swargate to Sangvi	91	256
370	169	Manapa to Keshavnagar via koregaon park	533	1572
371	191	Pune Station to Kondhava hospital	58	1245
372	107	Deccan gymkhana to Pimple gurav	102	676
373	52	Shaniwar wada to Wardade gaon	168	1744
374	109	Manapa to Manapa via Pashan	57	57
375	71	Kothrud Depot to Upper Depot	654	459
\.


--
-- Name: routes_route_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bususer
--

SELECT pg_catalog.setval('routes_route_id_seq', 375, true);


--
-- Data for Name: routes_route_stops; Type: TABLE DATA; Schema: public; Owner: bususer
--

COPY routes_route_stops (id, route_id, stop_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	1	7
8	1	8
9	1	9
10	1	10
11	1	11
12	1	12
13	1	13
14	1	14
15	1	15
16	1	16
17	1	17
18	1	18
19	1	19
20	1	20
21	1	21
22	1	22
23	1	23
24	1	24
25	1	25
26	1	26
27	1	27
28	1	28
29	1	29
30	1	30
31	1	31
32	1	32
33	1	33
34	1	34
35	1	35
36	1	36
37	1	37
38	1	38
39	1	39
40	1	40
41	1	41
42	1	42
43	1	43
44	1	44
45	1	45
46	1	46
47	1	47
48	1	48
49	1	49
50	1	50
51	1	51
52	1	52
53	1	53
54	1	54
55	1	55
56	1	56
57	1	57
58	2	57
59	2	58
60	2	59
61	2	60
62	2	61
63	2	62
64	2	63
65	2	64
66	2	65
67	2	66
68	2	67
69	2	68
70	2	69
71	2	70
72	2	71
73	2	72
74	2	73
75	2	74
76	2	75
77	2	76
78	2	77
79	2	78
80	2	79
81	2	80
82	2	81
83	2	82
84	2	83
85	2	84
86	2	85
87	2	86
88	2	87
89	2	88
90	2	89
91	2	90
92	3	96
93	3	97
94	3	98
95	3	99
96	3	100
97	3	65
98	3	64
99	3	91
100	3	92
101	3	93
102	3	94
103	3	95
104	4	101
105	4	102
106	4	103
107	4	104
108	4	105
109	4	106
110	4	107
111	4	108
112	4	109
113	4	110
114	4	111
115	4	112
116	4	113
117	4	114
118	4	115
119	4	116
120	4	57
121	5	128
122	5	129
123	5	130
124	5	131
125	5	132
126	5	133
127	5	134
128	5	135
129	5	136
130	5	137
131	5	138
132	5	139
133	5	140
134	5	141
135	5	142
136	5	143
137	5	144
138	5	145
139	5	50
140	5	51
141	5	54
142	5	65
143	5	91
144	5	92
145	5	117
146	5	118
147	5	119
148	5	120
149	5	121
150	5	122
151	5	123
152	5	124
153	5	125
154	5	126
155	5	127
156	6	1
157	6	2
158	6	3
159	6	4
160	6	5
161	6	6
162	6	7
163	6	8
164	6	9
165	6	10
166	6	11
167	6	12
168	6	13
169	6	14
170	6	15
171	6	16
172	6	17
173	6	18
174	6	19
175	6	20
176	6	21
177	6	22
178	6	23
179	6	24
180	6	25
181	6	26
182	6	27
183	6	28
184	6	29
185	6	30
186	6	31
187	6	32
188	6	33
189	6	34
190	6	35
191	6	36
192	6	37
193	6	38
194	6	39
195	6	40
196	6	41
197	6	42
198	6	43
199	6	44
200	6	45
201	6	46
202	6	47
203	6	48
204	6	49
205	6	50
206	6	51
207	6	52
208	6	53
209	6	54
210	6	55
211	6	56
212	6	57
213	7	57
214	7	58
215	7	59
216	7	60
217	7	61
218	7	62
219	7	63
220	7	64
221	7	65
222	7	66
223	7	67
224	7	68
225	7	69
226	7	70
227	7	71
228	7	72
229	7	73
230	7	74
231	7	75
232	7	76
233	7	77
234	7	78
235	7	79
236	7	80
237	7	81
238	7	82
239	7	83
240	7	84
241	7	85
242	7	86
243	7	87
244	7	88
245	7	89
246	7	90
247	8	96
248	8	97
249	8	98
250	8	99
251	8	100
252	8	65
253	8	64
254	8	91
255	8	92
256	8	93
257	8	94
258	8	95
259	9	101
260	9	102
261	9	103
262	9	104
263	9	105
264	9	106
265	9	107
266	9	108
267	9	109
268	9	110
269	9	111
270	9	112
271	9	113
272	9	114
273	9	115
274	9	116
275	9	57
311	10	146
312	10	147
313	10	148
314	10	149
315	10	150
316	10	151
317	10	152
318	10	153
319	10	154
320	10	155
321	10	156
322	10	157
323	10	64
324	10	65
325	10	91
326	10	92
327	10	93
328	10	94
329	10	95
330	10	96
331	10	97
332	10	98
333	11	1
334	11	2
335	11	3
336	11	4
337	11	5
338	11	6
339	11	7
340	11	8
341	11	9
342	11	10
343	11	11
344	11	12
345	11	13
346	11	14
347	11	15
348	11	16
349	11	17
350	11	18
351	11	19
352	11	20
353	11	21
354	11	22
355	11	23
356	11	24
357	11	25
358	11	26
359	11	27
360	11	28
361	11	29
362	11	30
363	11	31
364	11	32
365	11	33
366	11	34
367	11	35
368	11	36
369	11	37
370	11	38
371	11	39
372	11	40
373	11	41
374	11	42
375	11	43
376	11	44
377	11	45
378	11	46
379	11	47
380	11	48
381	11	49
382	11	50
383	11	51
384	11	52
385	11	53
386	11	54
387	11	55
388	11	56
389	11	57
390	12	57
391	12	58
392	12	59
393	12	60
394	12	61
395	12	62
396	12	63
397	12	64
398	12	65
399	12	66
400	12	67
401	12	68
402	12	69
403	12	70
404	12	71
405	12	72
406	12	73
407	12	74
408	12	75
409	12	76
410	12	77
411	12	78
412	12	79
413	12	80
414	12	81
415	12	82
416	12	83
417	12	84
418	12	85
419	12	86
420	12	87
421	12	88
422	12	89
423	12	90
424	13	96
425	13	97
426	13	98
427	13	99
428	13	100
429	13	65
430	13	64
431	13	91
432	13	92
433	13	93
434	13	94
435	13	95
436	14	101
437	14	102
438	14	103
439	14	104
440	14	105
441	14	106
442	14	107
443	14	108
444	14	109
445	14	110
446	14	111
447	14	112
448	14	113
449	14	114
450	14	115
451	14	116
452	14	57
453	15	128
454	15	129
455	15	130
456	15	131
457	15	132
458	15	133
459	15	134
460	15	135
461	15	136
462	15	137
463	15	138
464	15	139
465	15	140
466	15	141
467	15	142
468	15	143
469	15	144
470	15	145
471	15	50
472	15	51
473	15	54
474	15	65
475	15	91
476	15	92
477	15	117
478	15	118
479	15	119
480	15	120
481	15	121
482	15	122
483	15	123
484	15	124
485	15	125
486	15	126
487	15	127
488	16	1
489	16	2
490	16	3
491	16	4
492	16	5
493	16	6
494	16	7
495	16	8
496	16	9
497	16	10
498	16	11
499	16	12
500	16	13
501	16	14
502	16	15
503	16	16
504	16	17
505	16	18
506	16	19
507	16	20
508	16	21
509	16	22
510	16	23
511	16	24
512	16	25
513	16	26
514	16	27
515	16	28
516	16	29
517	16	30
518	16	31
519	16	32
520	16	33
521	16	34
522	16	35
523	16	36
524	16	37
525	16	38
526	16	39
527	16	40
528	16	41
529	16	42
530	16	43
531	16	44
532	16	45
533	16	46
534	16	47
535	16	48
536	16	49
537	16	50
538	16	51
539	16	52
540	16	53
541	16	54
542	16	55
543	16	56
544	16	57
545	17	57
546	17	58
547	17	59
548	17	60
549	17	61
550	17	62
551	17	63
552	17	64
553	17	65
554	17	66
555	17	67
556	17	68
557	17	69
558	17	70
559	17	71
560	17	72
561	17	73
562	17	74
563	17	75
564	17	76
565	17	77
566	17	78
567	17	79
568	17	80
569	17	81
570	17	82
571	17	83
572	17	84
573	17	85
574	17	86
575	17	87
576	17	88
577	17	89
578	17	90
579	18	96
580	18	97
581	18	98
582	18	99
583	18	100
584	18	65
585	18	64
586	18	91
587	18	92
588	18	93
589	18	94
590	18	95
591	19	101
592	19	102
593	19	103
594	19	104
595	19	105
596	19	106
597	19	107
598	19	108
599	19	109
600	19	110
601	19	111
602	19	112
603	19	113
604	19	114
605	19	115
606	19	116
607	19	57
608	20	128
609	20	129
610	20	130
611	20	131
612	20	132
613	20	133
614	20	134
615	20	135
616	20	136
617	20	137
618	20	138
619	20	139
620	20	140
621	20	141
622	20	142
623	20	143
624	20	144
625	20	145
626	20	50
627	20	51
628	20	54
629	20	65
630	20	91
631	20	92
632	20	117
633	20	118
634	20	119
635	20	120
636	20	121
637	20	122
638	20	123
639	20	124
640	20	125
641	20	126
642	20	127
643	21	1
644	21	2
645	21	3
646	21	4
647	21	5
648	21	6
649	21	7
650	21	8
651	21	9
652	21	10
653	21	11
654	21	12
655	21	13
656	21	14
657	21	15
658	21	16
659	21	17
660	21	18
661	21	19
662	21	20
663	21	21
664	21	22
665	21	23
666	21	24
667	21	25
668	21	26
669	21	27
670	21	28
671	21	29
672	21	30
673	21	31
674	21	32
675	21	33
676	21	34
677	21	35
678	21	36
679	21	37
680	21	38
681	21	39
682	21	40
683	21	41
684	21	42
685	21	43
686	21	44
687	21	45
688	21	46
689	21	47
690	21	48
691	21	49
692	21	50
693	21	51
694	21	52
695	21	53
696	21	54
697	21	55
698	21	56
699	21	57
700	22	57
701	22	58
702	22	59
703	22	60
704	22	61
705	22	62
706	22	63
707	22	64
708	22	65
709	22	66
710	22	67
711	22	68
712	22	69
713	22	70
714	22	71
715	22	72
716	22	73
717	22	74
718	22	75
719	22	76
720	22	77
721	22	78
722	22	79
723	22	80
724	22	81
725	22	82
726	22	83
727	22	84
728	22	85
729	22	86
730	22	87
731	22	88
732	22	89
733	22	90
734	23	96
735	23	97
736	23	98
737	23	99
738	23	100
739	23	65
740	23	64
741	23	91
742	23	92
743	23	93
744	23	94
745	23	95
746	24	101
747	24	102
748	24	103
749	24	104
750	24	105
751	24	106
752	24	107
753	24	108
754	24	109
755	24	110
756	24	111
757	24	112
758	24	113
759	24	114
760	24	115
761	24	116
762	24	57
763	25	128
764	25	129
765	25	130
766	25	131
767	25	132
768	25	133
769	25	134
770	25	135
771	25	136
772	25	137
773	25	138
774	25	139
775	25	140
776	25	141
777	25	142
778	25	143
779	25	144
780	25	145
781	25	50
782	25	51
783	25	54
784	25	65
785	25	91
786	25	92
787	25	117
788	25	118
789	25	119
790	25	120
791	25	121
792	25	122
793	25	123
794	25	124
795	25	125
796	25	126
797	25	127
798	26	1
799	26	2
800	26	3
801	26	4
802	26	5
803	26	6
804	26	7
805	26	8
806	26	9
807	26	10
808	26	11
809	26	12
810	26	13
811	26	14
812	26	15
813	26	16
814	26	17
815	26	18
816	26	19
817	26	20
818	26	21
819	26	22
820	26	23
821	26	24
822	26	25
823	26	26
824	26	27
825	26	28
826	26	29
827	26	30
828	26	31
829	26	32
830	26	33
831	26	34
832	26	35
833	26	36
834	26	37
835	26	38
836	26	39
837	26	40
838	26	41
839	26	42
840	26	43
841	26	44
842	26	45
843	26	46
844	26	47
845	26	48
846	26	49
847	26	50
848	26	51
849	26	52
850	26	53
851	26	54
852	26	55
853	26	56
854	26	57
855	27	57
856	27	58
857	27	59
858	27	60
859	27	61
860	27	62
861	27	63
862	27	64
863	27	65
864	27	66
865	27	67
866	27	68
867	27	69
868	27	70
869	27	71
870	27	72
871	27	73
872	27	74
873	27	75
874	27	76
875	27	77
876	27	78
877	27	79
878	27	80
879	27	81
880	27	82
881	27	83
882	27	84
883	27	85
884	27	86
885	27	87
886	27	88
887	27	89
888	27	90
889	28	96
890	28	97
891	28	98
892	28	99
893	28	100
894	28	65
895	28	64
896	28	91
897	28	92
898	28	93
899	28	94
900	28	95
901	29	101
902	29	102
903	29	103
904	29	104
905	29	105
906	29	106
907	29	107
908	29	108
909	29	109
910	29	110
911	29	111
912	29	112
913	29	113
914	29	114
915	29	115
916	29	116
917	29	57
918	30	128
919	30	129
920	30	130
921	30	131
922	30	132
923	30	133
924	30	134
925	30	135
926	30	136
927	30	137
928	30	138
929	30	139
930	30	140
931	30	141
932	30	142
933	30	143
934	30	144
935	30	145
936	30	50
937	30	51
938	30	54
939	30	65
940	30	91
941	30	92
942	30	117
943	30	118
944	30	119
945	30	120
946	30	121
947	30	122
948	30	123
949	30	124
950	30	125
951	30	126
952	30	127
953	31	1
954	31	2
955	31	3
956	31	4
957	31	5
958	31	6
959	31	7
960	31	8
961	31	9
962	31	10
963	31	11
964	31	12
965	31	13
966	31	14
967	31	15
968	31	16
969	31	17
970	31	18
971	31	19
972	31	20
973	31	21
974	31	22
975	31	23
976	31	24
977	31	25
978	31	26
979	31	27
980	31	28
981	31	29
982	31	30
983	31	31
984	31	32
985	31	33
986	31	34
987	31	35
988	31	36
989	31	37
990	31	38
991	31	39
992	31	40
993	31	41
994	31	42
995	31	43
996	31	44
997	31	45
998	31	46
999	31	47
1000	31	48
1001	31	49
1002	31	50
1003	31	51
1004	31	52
1005	31	53
1006	31	54
1007	31	55
1008	31	56
1009	31	57
1010	32	57
1011	32	58
1012	32	59
1013	32	60
1014	32	61
1015	32	62
1016	32	63
1017	32	64
1018	32	65
1019	32	66
1020	32	67
1021	32	68
1022	32	69
1023	32	70
1024	32	71
1025	32	72
1026	32	73
1027	32	74
1028	32	75
1029	32	76
1030	32	77
1031	32	78
1032	32	79
1033	32	80
1034	32	81
1035	32	82
1036	32	83
1037	32	84
1038	32	85
1039	32	86
1040	32	87
1041	32	88
1042	32	89
1043	32	90
1044	33	96
1045	33	97
1046	33	98
1047	33	99
1048	33	100
1049	33	65
1050	33	64
1051	33	91
1052	33	92
1053	33	93
1054	33	94
1055	33	95
1056	34	101
1057	34	102
1058	34	103
1059	34	104
1060	34	105
1061	34	106
1062	34	107
1063	34	108
1064	34	109
1065	34	110
1066	34	111
1067	34	112
1068	34	113
1069	34	114
1070	34	115
1071	34	116
1072	34	57
1073	35	128
1074	35	129
1075	35	130
1076	35	131
1077	35	132
1078	35	133
1079	35	134
1080	35	135
1081	35	136
1082	35	137
1083	35	138
1084	35	139
1085	35	140
1086	35	141
1087	35	142
1088	35	143
1089	35	144
1090	35	145
1091	35	50
1092	35	51
1093	35	54
1094	35	65
1095	35	91
1096	35	92
1097	35	117
1098	35	118
1099	35	119
1100	35	120
1101	35	121
1102	35	122
1103	35	123
1104	35	124
1105	35	125
1106	35	126
1107	35	127
1108	36	1
1109	36	2
1110	36	3
1111	36	4
1112	36	5
1113	36	6
1114	36	7
1115	36	8
1116	36	9
1117	36	10
1118	36	11
1119	36	12
1120	36	13
1121	36	14
1122	36	15
1123	36	16
1124	36	17
1125	36	18
1126	36	19
1127	36	20
1128	36	21
1129	36	22
1130	36	23
1131	36	24
1132	36	25
1133	36	26
1134	36	27
1135	36	28
1136	36	29
1137	36	30
1138	36	31
1139	36	32
1140	36	33
1141	36	34
1142	36	35
1143	36	36
1144	36	37
1145	36	38
1146	36	39
1147	36	40
1148	36	41
1149	36	42
1150	36	43
1151	36	44
1152	36	45
1153	36	46
1154	36	47
1155	36	48
1156	36	49
1157	36	50
1158	36	51
1159	36	52
1160	36	53
1161	36	54
1162	36	55
1163	36	56
1164	36	57
1165	37	57
1166	37	58
1167	37	59
1168	37	60
1169	37	61
1170	37	62
1171	37	63
1172	37	64
1173	37	65
1174	37	66
1175	37	67
1176	37	68
1177	37	69
1178	37	70
1179	37	71
1180	37	72
1181	37	73
1182	37	74
1183	37	75
1184	37	76
1185	37	77
1186	37	78
1187	37	79
1188	37	80
1189	37	81
1190	37	82
1191	37	83
1192	37	84
1193	37	85
1194	37	86
1195	37	87
1196	37	88
1197	37	89
1198	37	90
1199	38	96
1200	38	97
1201	38	98
1202	38	99
1203	38	100
1204	38	65
1205	38	64
1206	38	91
1207	38	92
1208	38	93
1209	38	94
1210	38	95
1211	39	101
1212	39	102
1213	39	103
1214	39	104
1215	39	105
1216	39	106
1217	39	107
1218	39	108
1219	39	109
1220	39	110
1221	39	111
1222	39	112
1223	39	113
1224	39	114
1225	39	115
1226	39	116
1227	39	57
1228	40	128
1229	40	129
1230	40	130
1231	40	131
1232	40	132
1233	40	133
1234	40	134
1235	40	135
1236	40	136
1237	40	137
1238	40	138
1239	40	139
1240	40	140
1241	40	141
1242	40	142
1243	40	143
1244	40	144
1245	40	145
1246	40	50
1247	40	51
1248	40	54
1249	40	65
1250	40	91
1251	40	92
1252	40	117
1253	40	118
1254	40	119
1255	40	120
1256	40	121
1257	40	122
1258	40	123
1259	40	124
1260	40	125
1261	40	126
1262	40	127
1263	41	1
1264	41	2
1265	41	3
1266	41	4
1267	41	5
1268	41	6
1269	41	7
1270	41	8
1271	41	9
1272	41	10
1273	41	11
1274	41	12
1275	41	13
1276	41	14
1277	41	15
1278	41	16
1279	41	17
1280	41	18
1281	41	19
1282	41	20
1283	41	21
1284	41	22
1285	41	23
1286	41	24
1287	41	25
1288	41	26
1289	41	27
1290	41	28
1291	41	29
1292	41	30
1293	41	31
1294	41	32
1295	41	33
1296	41	34
1297	41	35
1298	41	36
1299	41	37
1300	41	38
1301	41	39
1302	41	40
1303	41	41
1304	41	42
1305	41	43
1306	41	44
1307	41	45
1308	41	46
1309	41	47
1310	41	48
1311	41	49
1312	41	50
1313	41	51
1314	41	52
1315	41	53
1316	41	54
1317	41	55
1318	41	56
1319	41	57
1320	42	57
1321	42	58
1322	42	59
1323	42	60
1324	42	61
1325	42	62
1326	42	63
1327	42	64
1328	42	65
1329	42	66
1330	42	67
1331	42	68
1332	42	69
1333	42	70
1334	42	71
1335	42	72
1336	42	73
1337	42	74
1338	42	75
1339	42	76
1340	42	77
1341	42	78
1342	42	79
1343	42	80
1344	42	81
1345	42	82
1346	42	83
1347	42	84
1348	42	85
1349	42	86
1350	42	87
1351	42	88
1352	42	89
1353	42	90
1354	43	96
1355	43	97
1356	43	98
1357	43	99
1358	43	100
1359	43	65
1360	43	64
1361	43	91
1362	43	92
1363	43	93
1364	43	94
1365	43	95
1366	44	101
1367	44	102
1368	44	103
1369	44	104
1370	44	105
1371	44	106
1372	44	107
1373	44	108
1374	44	109
1375	44	110
1376	44	111
1377	44	112
1378	44	113
1379	44	114
1380	44	115
1381	44	116
1382	44	57
1383	45	128
1384	45	129
1385	45	130
1386	45	131
1387	45	132
1388	45	133
1389	45	134
1390	45	135
1391	45	136
1392	45	137
1393	45	138
1394	45	139
1395	45	140
1396	45	141
1397	45	142
1398	45	143
1399	45	144
1400	45	145
1401	45	50
1402	45	51
1403	45	54
1404	45	65
1405	45	91
1406	45	92
1407	45	117
1408	45	118
1409	45	119
1410	45	120
1411	45	121
1412	45	122
1413	45	123
1414	45	124
1415	45	125
1416	45	126
1417	45	127
1418	46	146
1419	46	147
1420	46	148
1421	46	149
1422	46	150
1423	46	151
1424	46	152
1425	46	153
1426	46	154
1427	46	155
1428	46	156
1429	46	157
1430	46	158
1431	46	64
1432	46	65
1433	46	91
1434	46	92
1435	46	93
1436	46	94
1437	46	95
1438	46	96
1439	46	97
1440	46	98
1441	47	28
1442	47	29
1443	47	31
1444	47	32
1445	47	33
1446	47	34
1447	47	35
1448	47	36
1449	47	37
1450	47	38
1451	47	39
1452	47	40
1453	47	41
1454	47	42
1455	47	43
1456	47	44
1457	47	45
1458	47	46
1459	47	47
1460	47	48
1461	47	49
1462	47	50
1463	47	51
1464	47	52
1465	47	53
1466	47	54
1467	47	55
1468	47	56
1469	47	57
1470	47	159
1471	48	147
1472	48	148
1473	48	149
1474	48	150
1475	48	151
1476	48	152
1477	48	153
1478	48	154
1479	48	155
1480	48	156
1481	48	157
1482	48	160
1483	48	161
1484	48	162
1485	48	163
1486	48	164
1487	48	165
1488	48	166
1489	48	167
1490	48	168
1491	48	91
1492	48	92
1493	48	93
1494	48	94
1495	48	95
1496	48	96
1497	48	97
1498	49	146
1499	49	161
1500	49	162
1501	49	163
1502	49	169
1503	49	170
1504	49	171
1505	49	172
1506	49	173
1507	49	174
1508	49	175
1509	49	176
1510	49	177
1511	49	178
1512	49	179
1513	49	180
1514	49	181
1515	49	182
1516	49	183
1517	49	184
1518	49	185
1519	49	186
1520	49	187
1521	49	188
1522	49	189
1523	50	155
1524	50	156
1525	50	157
1526	50	91
1527	50	181
1528	50	182
1529	50	183
1530	50	184
1531	50	185
1532	50	186
1533	50	187
1534	50	188
1535	50	189
1536	50	190
1537	50	191
1538	50	192
1539	50	193
1540	50	194
1541	50	195
1542	50	196
1543	50	197
1544	50	198
1545	50	199
1546	50	200
1547	50	201
1548	50	202
1549	50	203
1550	50	204
1551	50	205
1552	50	206
1553	50	207
1554	50	208
1555	50	209
1556	50	210
1557	50	211
1558	50	212
1559	50	213
1560	50	214
1561	50	215
1562	50	216
1563	50	217
1564	50	218
1565	50	219
1566	50	220
1567	50	221
1568	51	94
1569	51	95
1570	51	61
1571	51	96
1572	51	97
1573	51	91
1574	51	92
1575	51	93
1576	51	222
1577	51	223
1578	51	224
1579	51	225
1580	51	226
1581	51	227
1582	51	228
1583	51	229
1584	51	230
1585	51	231
1586	51	232
1587	51	233
1588	51	234
1589	51	235
1590	51	236
1591	51	237
1592	51	238
1593	51	239
1594	52	256
1595	52	257
1596	52	57
1597	52	60
1598	52	61
1599	52	62
1600	52	63
1601	52	64
1602	52	65
1603	52	66
1604	52	67
1605	52	68
1606	52	69
1607	52	70
1608	52	76
1609	52	77
1610	52	78
1611	52	240
1612	52	241
1613	52	242
1614	52	243
1615	52	244
1616	52	245
1617	52	246
1618	52	247
1619	52	248
1620	52	249
1621	52	250
1622	52	251
1623	52	252
1624	52	253
1625	52	254
1626	52	255
1627	53	258
1628	53	259
1629	53	260
1630	53	261
1631	53	262
1632	53	263
1633	53	264
1634	53	265
1635	53	266
1636	53	267
1637	53	268
1638	53	269
1639	53	270
1640	53	271
1641	53	272
1642	53	273
1643	54	274
1644	54	275
1645	54	276
1646	54	277
1647	54	278
1648	54	279
1649	54	280
1650	54	281
1651	54	282
1652	54	283
1653	54	284
1654	54	285
1655	54	286
1656	54	287
1657	54	288
1658	54	289
1659	54	290
1660	54	91
1661	54	92
1662	54	93
1663	54	94
1664	54	103
1665	54	104
1666	54	105
1667	54	106
1668	54	107
1669	54	240
1670	55	146
1671	55	291
1672	55	292
1673	55	293
1674	55	294
1675	55	295
1676	55	296
1677	55	297
1678	55	298
1679	55	299
1680	55	300
1681	55	301
1682	55	302
1683	55	303
1684	55	304
1685	55	305
1686	55	306
1687	55	307
1688	55	308
1689	55	309
1690	55	310
1691	55	311
1692	55	312
1693	55	313
1694	55	314
1695	55	315
1696	55	316
1697	55	317
1698	55	318
1699	55	319
1700	55	320
1701	55	321
1702	55	322
1703	55	323
1704	55	324
1705	55	325
1706	55	326
1707	55	327
1708	55	328
1709	55	329
1710	55	330
1711	55	331
1712	55	332
1713	55	333
1714	55	334
1715	55	90
1716	56	34
1717	56	35
1718	56	36
1719	56	37
1720	56	38
1721	56	39
1722	56	40
1723	56	41
1724	56	42
1725	56	43
1726	56	44
1727	56	45
1728	56	46
1729	56	47
1730	56	48
1731	56	49
1732	56	50
1733	56	51
1734	56	52
1735	56	53
1736	56	54
1737	56	55
1738	56	56
1739	56	57
1740	56	335
1741	56	336
1742	56	337
1743	56	338
1744	56	339
1745	56	340
1746	56	341
1747	56	342
1748	56	343
1749	56	344
1750	56	345
1751	56	346
1752	56	347
1753	56	348
1754	56	349
1755	56	350
1756	56	351
1757	56	352
1758	56	353
1759	56	354
1760	57	107
1761	57	278
1762	57	279
1763	57	280
1764	57	281
1765	57	282
1766	57	283
1767	57	284
1768	57	285
1769	57	320
1770	57	321
1771	57	322
1772	57	323
1773	57	324
1774	57	325
1775	57	71
1776	57	72
1777	57	73
1778	57	74
1779	57	75
1780	57	76
1781	57	77
1782	57	78
1783	57	79
1784	57	80
1785	57	81
1786	57	82
1787	57	83
1788	57	84
1789	57	85
1790	57	86
1791	57	87
1792	57	88
1793	57	89
1794	57	90
1795	57	355
1796	57	356
1797	57	357
1798	57	358
1799	57	359
1800	57	360
1801	57	361
1802	57	362
1803	57	363
1804	57	364
1805	57	110
1806	57	111
1807	57	112
1808	57	114
1809	58	348
1810	58	30
1811	58	365
1812	58	366
1813	58	367
1814	58	368
1815	58	369
1816	58	370
1817	58	371
1818	58	372
1819	58	373
1820	58	374
1821	58	375
1822	58	376
1823	58	377
1824	58	378
1825	58	379
1826	58	380
1827	58	381
1828	58	382
1829	59	384
1830	59	385
1831	59	386
1832	59	387
1833	59	388
1834	59	389
1835	59	390
1836	59	391
1837	59	392
1838	59	393
1839	59	394
1840	59	395
1841	59	396
1842	59	397
1843	59	398
1844	59	399
1845	59	400
1846	59	401
1847	59	278
1848	59	279
1849	59	280
1850	59	281
1851	59	282
1852	59	283
1853	59	284
1854	59	285
1855	59	286
1856	59	287
1857	59	288
1858	59	112
1859	59	290
1860	59	41
1861	59	44
1862	59	355
1863	59	356
1864	59	357
1865	59	358
1866	59	359
1867	59	360
1868	59	361
1869	59	362
1870	59	107
1871	59	110
1872	59	111
1873	59	240
1874	59	114
1875	59	383
1876	60	150
1877	60	151
1878	60	152
1879	60	146
1880	60	147
1881	60	404
1882	60	149
1883	60	406
1884	60	407
1885	60	408
1886	60	409
1887	60	154
1888	60	411
1889	60	412
1890	60	413
1891	60	410
1892	60	415
1893	60	416
1894	60	417
1895	60	418
1896	60	419
1897	60	420
1898	60	421
1899	60	422
1900	60	423
1901	60	424
1902	60	156
1903	60	426
1904	60	427
1905	60	428
1906	60	429
1907	60	430
1908	60	431
1909	60	432
1910	60	433
1911	60	414
1912	60	91
1913	60	402
1914	60	403
1915	60	425
1916	60	148
1917	60	405
1918	61	320
1919	61	321
1920	61	363
1921	61	325
1922	61	331
1923	61	335
1924	61	446
1925	61	434
1926	61	435
1927	61	436
1928	61	437
1929	61	438
1930	61	439
1931	61	440
1932	61	441
1933	61	90
1934	61	443
1935	61	444
1936	61	442
1937	61	445
1938	61	447
1939	62	448
1940	62	155
1941	62	156
1942	62	157
1943	62	146
1944	62	147
1945	62	148
1946	62	405
1947	62	150
1948	62	151
1949	62	152
1950	62	153
1951	62	154
1952	62	91
1953	62	92
1954	62	93
1955	62	94
1956	62	149
1957	63	449
1958	63	450
1959	63	451
1960	63	452
1961	63	454
1962	63	304
1963	63	55
1964	63	57
1965	63	65
1966	63	66
1967	63	67
1968	63	68
1969	63	453
1970	63	70
1971	63	455
1972	63	456
1973	63	457
1974	63	458
1975	63	459
1976	63	460
1977	63	461
1978	63	462
1979	63	463
1980	63	464
1981	63	465
1982	63	466
1983	63	467
1984	63	468
1985	63	469
1986	63	470
1987	63	471
1988	63	472
1989	63	473
1990	63	474
1991	63	475
1992	63	476
1993	63	101
1994	63	102
1995	63	104
1996	63	105
1997	63	106
1998	63	107
1999	63	240
2000	64	512
2001	64	513
2002	64	514
2003	64	515
2004	64	516
2005	64	517
2006	64	126
2007	64	124
2008	64	327
2009	64	125
2010	64	34
2011	64	36
2012	64	38
2013	64	39
2014	64	40
2015	64	372
2016	64	42
2017	64	43
2018	64	44
2019	64	47
2020	64	50
2021	64	51
2022	64	54
2023	64	56
2024	64	57
2025	64	65
2026	64	326
2027	64	481
2028	64	328
2029	64	329
2030	64	330
2031	64	331
2032	64	332
2033	64	333
2034	64	477
2035	64	478
2036	64	479
2037	64	480
2038	64	353
2039	64	482
2040	64	483
2041	64	484
2042	64	485
2043	64	486
2044	64	487
2045	64	488
2046	64	489
2047	64	490
2048	64	491
2049	64	492
2050	64	493
2051	64	494
2052	64	495
2053	64	496
2054	64	497
2055	64	498
2056	64	499
2057	64	500
2058	64	501
2059	64	502
2060	64	503
2061	64	504
2062	64	505
2063	64	506
2064	64	507
2065	64	508
2066	64	509
2067	64	510
2068	64	511
2069	65	518
2070	65	519
2071	65	520
2072	65	521
2073	65	522
2074	65	523
2075	65	524
2076	65	525
2077	65	526
2078	65	527
2079	65	528
2080	65	529
2081	65	530
2082	65	531
2083	65	532
2084	65	58
2085	65	61
2086	65	62
2087	65	65
2088	65	66
2089	65	67
2090	65	68
2091	65	70
2092	65	73
2093	65	75
2094	65	76
2095	65	77
2096	65	79
2097	65	80
2098	65	81
2099	65	82
2100	65	83
2101	65	84
2102	65	85
2103	65	86
2104	65	87
2105	65	88
2106	65	90
2107	65	475
2108	65	228
2109	65	229
2110	65	240
2111	65	249
2112	65	124
2113	66	533
2114	66	534
2115	66	535
2116	66	536
2117	66	537
2118	66	538
2119	66	539
2120	66	540
2121	66	541
2122	66	542
2123	66	543
2124	66	544
2125	66	545
2126	66	546
2127	66	547
2128	66	548
2129	66	549
2130	66	550
2131	66	61
2132	66	62
2133	66	228
2134	66	229
2135	66	230
2136	66	231
2137	67	258
2138	67	551
2139	67	552
2140	67	553
2141	67	554
2142	67	555
2143	67	556
2144	67	557
2145	67	558
2146	67	559
2147	67	560
2148	67	561
2149	67	562
2150	67	563
2151	67	564
2152	67	565
2153	67	566
2154	67	567
2155	67	568
2156	67	569
2157	67	570
2158	67	571
2159	67	572
2160	67	573
2161	67	574
2162	67	575
2163	67	576
2164	67	577
2165	67	578
2166	67	579
2167	67	580
2168	67	581
2169	67	582
2170	67	583
2171	67	584
2172	67	585
2173	67	586
2174	68	91
2175	68	228
2176	68	229
2177	68	587
2178	68	588
2179	68	589
2180	68	590
2181	68	591
2182	68	592
2183	68	593
2184	68	594
2185	68	595
2186	68	596
2187	68	597
2188	68	598
2189	68	599
2190	68	59
2191	68	60
2192	68	157
2193	69	129
2194	69	130
2195	69	131
2196	69	398
2197	69	399
2198	69	400
2199	69	401
2200	69	532
2201	69	535
2202	69	536
2203	69	537
2204	69	34
2205	69	35
2206	69	36
2207	69	37
2208	69	38
2209	69	39
2210	69	40
2211	69	41
2212	69	42
2213	69	58
2214	69	444
2215	69	327
2216	69	331
2217	69	332
2218	69	600
2219	69	601
2220	69	602
2221	69	603
2222	69	604
2223	69	605
2224	69	606
2225	69	607
2226	69	608
2227	69	353
2228	69	610
2229	69	484
2230	69	486
2231	69	372
2232	69	373
2233	69	609
2234	70	448
2235	70	623
2236	70	451
2237	70	612
2238	70	453
2239	70	454
2240	70	615
2241	70	616
2242	70	617
2243	70	618
2244	70	107
2245	70	620
2246	70	614
2247	70	622
2248	70	621
2249	70	619
2250	70	104
2251	70	611
2252	70	277
2253	70	91
2254	70	613
2255	71	102
2256	71	618
2257	71	619
2258	71	624
2259	71	625
2260	71	279
2261	71	280
2262	71	281
2263	72	150
2264	72	151
2265	72	152
2266	72	146
2267	72	147
2268	72	404
2269	72	149
2270	72	406
2271	72	407
2272	72	408
2273	72	409
2274	72	154
2275	72	411
2276	72	412
2277	72	413
2278	72	410
2279	72	415
2280	72	416
2281	72	417
2282	72	418
2283	72	419
2284	72	420
2285	72	421
2286	72	422
2287	72	423
2288	72	424
2289	72	156
2290	72	426
2291	72	427
2292	72	428
2293	72	429
2294	72	430
2295	72	414
2296	72	91
2297	72	402
2298	72	403
2299	72	425
2300	72	148
2301	72	405
2302	73	530
2303	73	531
2304	73	532
2305	73	34
2306	73	35
2307	73	36
2308	73	37
2309	73	38
2310	73	39
2311	73	40
2312	73	41
2313	73	43
2314	73	44
2315	73	46
2316	73	47
2317	73	48
2318	73	49
2319	73	50
2320	73	51
2321	73	52
2322	73	437
2323	73	438
2324	73	439
2325	73	440
2326	73	372
2327	73	58
2328	73	444
2329	73	53
2330	73	54
2331	73	327
2332	73	601
2333	73	602
2334	73	603
2335	73	604
2336	73	605
2337	73	353
2338	73	354
2339	73	484
2340	73	486
2341	73	626
2342	73	627
2343	73	628
2344	73	373
2345	74	195
2346	74	196
2347	74	197
2348	74	198
2349	74	199
2350	74	200
2351	74	201
2352	74	202
2353	74	203
2354	74	204
2355	74	205
2356	74	206
2357	74	207
2358	74	208
2359	74	629
2360	74	630
2361	74	91
2362	75	640
2363	75	641
2364	75	258
2365	75	259
2366	75	644
2367	75	645
2368	75	646
2369	75	647
2370	75	648
2371	75	649
2372	75	642
2373	75	643
2374	75	59
2375	75	60
2376	75	599
2377	75	228
2378	75	229
2379	75	631
2380	75	632
2381	75	633
2382	75	634
2383	75	635
2384	75	636
2385	75	637
2386	75	638
2387	75	639
2388	76	107
2389	76	650
2390	76	651
2391	76	652
2392	76	653
2393	76	277
2394	76	359
2395	76	299
2396	76	300
2397	76	223
2398	76	61
2399	76	96
2400	76	616
2401	76	222
2402	76	95
2403	76	224
2404	76	97
2405	76	226
2406	76	227
2407	76	228
2408	76	229
2409	76	358
2410	76	615
2411	76	104
2412	76	361
2413	76	618
2414	76	619
2415	76	110
2416	76	111
2417	76	112
2418	76	360
2419	76	114
2420	76	617
2421	76	362
2422	77	654
2423	77	655
2424	77	656
2425	77	657
2426	77	658
2427	77	659
2428	77	660
2429	77	661
2430	77	662
2431	77	663
2432	77	664
2433	77	665
2434	77	154
2435	77	155
2436	77	156
2437	77	157
2438	77	34
2439	77	36
2440	77	38
2441	77	39
2442	77	40
2443	77	42
2444	77	43
2445	77	44
2446	77	47
2447	77	50
2448	77	51
2449	77	54
2450	77	65
2451	77	195
2452	77	196
2453	77	326
2454	77	481
2455	77	328
2456	77	329
2457	77	330
2458	77	331
2459	77	332
2460	77	333
2461	77	334
2462	77	91
2463	77	477
2464	77	478
2465	77	479
2466	77	480
2467	77	353
2468	77	482
2469	77	483
2470	77	484
2471	77	485
2472	77	486
2473	77	327
2474	77	530
2475	77	372
2476	77	121
2477	77	122
2478	77	123
2479	77	125
2480	77	126
2481	78	128
2482	78	398
2483	78	400
2484	78	146
2485	78	147
2486	78	148
2487	78	149
2488	78	150
2489	78	151
2490	78	152
2491	78	153
2492	78	154
2493	78	667
2494	78	156
2495	78	157
2496	78	670
2497	78	671
2498	78	672
2499	78	673
2500	78	674
2501	78	155
2502	78	676
2503	78	666
2504	78	668
2505	78	42
2506	78	669
2507	78	50
2508	78	51
2509	78	54
2510	78	64
2511	78	65
2512	78	96
2513	78	675
2514	78	91
2515	78	92
2516	78	93
2517	78	94
2518	78	95
2519	78	608
2520	78	97
2521	78	98
2522	78	530
2523	78	125
2524	78	126
2525	78	127
2526	79	619
2527	79	651
2528	79	652
2529	79	653
2530	79	277
2531	79	535
2532	79	536
2533	79	537
2534	79	538
2535	79	539
2536	79	540
2537	79	541
2538	79	542
2539	79	543
2540	79	544
2541	79	545
2542	79	546
2543	79	677
2544	79	678
2545	79	679
2546	79	680
2547	79	681
2548	79	682
2549	79	683
2550	79	684
2551	79	685
2552	79	686
2553	79	687
2554	79	688
2555	79	689
2556	79	690
2557	79	691
2558	79	692
2559	79	693
2560	79	694
2561	79	95
2562	79	61
2563	79	96
2564	79	615
2565	79	222
2566	79	223
2567	79	224
2568	79	97
2569	79	226
2570	79	227
2571	79	228
2572	79	229
2573	79	230
2574	79	231
2575	79	616
2576	79	617
2577	79	618
2578	79	107
2579	79	110
2580	79	111
2581	79	112
2582	79	104
2583	79	361
2584	79	362
2585	80	449
2586	80	450
2587	80	451
2588	80	452
2589	80	453
2590	80	457
2591	80	454
2592	80	455
2593	80	304
2594	80	456
2595	80	695
2596	80	696
2597	80	697
2598	80	698
2599	80	699
2600	80	700
2601	80	701
2602	80	702
2603	80	703
2604	80	704
2605	80	705
2606	80	706
2607	80	707
2608	80	708
2609	80	709
2610	80	710
2611	80	711
2612	80	712
2613	80	713
2614	80	714
2615	80	459
2616	80	716
2617	80	717
2618	80	458
2619	80	102
2620	80	104
2621	80	105
2622	80	106
2623	80	107
2624	80	460
2625	80	715
2626	81	146
2627	81	406
2628	81	407
2629	81	408
2630	81	409
2631	81	412
2632	81	413
2633	81	414
2634	81	415
2635	81	416
2636	81	417
2637	81	418
2638	81	419
2639	81	420
2640	81	718
2641	81	719
2642	81	720
2643	81	721
2644	81	722
2645	81	723
2646	81	724
2647	81	725
2648	81	726
2649	81	727
2650	81	728
2651	81	729
2652	81	730
2653	81	731
2654	81	732
2655	82	736
2656	82	737
2657	82	738
2658	82	739
2659	82	740
2660	82	741
2661	82	742
2662	82	743
2663	82	744
2664	82	745
2665	82	746
2666	82	747
2667	82	268
2668	82	593
2669	82	594
2670	82	595
2671	82	596
2672	82	91
2673	82	733
2674	82	734
2675	82	735
2676	83	258
2677	83	259
2678	83	274
2679	83	275
2680	83	276
2681	83	277
2682	83	448
2683	83	449
2684	83	450
2685	83	451
2686	83	452
2687	83	453
2688	83	455
2689	83	456
2690	83	457
2691	83	458
2692	83	459
2693	83	597
2694	83	734
2695	83	735
2696	83	736
2697	83	104
2698	83	105
2699	83	106
2700	83	107
2701	83	748
2702	83	749
2703	83	750
2704	83	751
2705	83	752
2706	83	753
2707	83	754
2708	83	755
2709	83	756
2710	83	757
2711	83	758
2712	83	631
2713	83	632
2714	83	633
2715	83	634
2716	83	635
2717	84	768
2718	84	769
2719	84	770
2720	84	771
2721	84	402
2722	84	532
2723	84	535
2724	84	536
2725	84	537
2726	84	538
2727	84	539
2728	84	540
2729	84	541
2730	84	542
2731	84	543
2732	84	597
2733	84	598
2734	84	599
2735	84	91
2736	84	228
2737	84	230
2738	84	231
2739	84	759
2740	84	760
2741	84	761
2742	84	762
2743	84	763
2744	84	764
2745	84	765
2746	84	766
2747	84	767
2748	85	772
2749	85	773
2750	85	774
2751	85	775
2752	85	776
2753	85	777
2754	85	778
2755	85	779
2756	85	780
2757	85	781
2758	85	782
2759	85	783
2760	85	784
2761	85	785
2762	85	786
2763	85	787
2764	85	532
2765	85	789
2766	85	790
2767	85	535
2768	85	536
2769	85	537
2770	85	794
2771	85	795
2772	85	796
2773	85	797
2774	85	798
2775	85	793
2776	85	791
2777	85	610
2778	85	229
2779	85	230
2780	85	145
2781	85	231
2782	85	792
2783	85	788
2784	86	544
2785	86	800
2786	86	802
2787	86	803
2788	86	804
2789	86	229
2790	86	230
2791	86	231
2792	86	541
2793	86	543
2794	86	535
2795	86	536
2796	86	537
2797	86	538
2798	86	539
2799	86	540
2800	86	801
2801	86	542
2802	86	799
2803	87	129
2804	87	130
2805	87	131
2806	87	354
2807	87	398
2808	87	399
2809	87	400
2810	87	401
2811	87	532
2812	87	535
2813	87	536
2814	87	537
2815	87	34
2816	87	35
2817	87	36
2818	87	805
2819	87	806
2820	87	807
2821	87	808
2822	87	809
2823	87	810
2824	87	811
2825	87	812
2826	87	813
2827	87	814
2828	87	815
2829	87	816
2830	87	817
2831	87	818
2832	87	819
2833	87	58
2834	87	444
2835	87	327
2836	87	331
2837	87	332
2838	87	333
2839	87	37
2840	87	600
2841	87	601
2842	87	602
2843	87	603
2844	87	604
2845	87	605
2846	87	606
2847	87	607
2848	87	608
2849	87	353
2850	87	610
2851	87	484
2852	87	38
2853	87	486
2854	87	39
2855	87	492
2856	87	493
2857	87	40
2858	87	372
2859	87	373
2860	87	609
2861	87	42
2862	88	258
2863	88	551
2864	88	552
2865	88	553
2866	88	554
2867	88	555
2868	88	556
2869	88	557
2870	88	558
2871	88	559
2872	88	560
2873	88	561
2874	88	562
2875	88	563
2876	88	820
2877	88	565
2878	88	566
2879	88	567
2880	88	568
2881	88	569
2882	88	570
2883	88	571
2884	88	572
2885	88	573
2886	88	574
2887	88	821
2888	88	822
2889	88	823
2890	88	824
2891	88	825
2892	88	826
2893	88	827
2894	88	828
2895	88	564
2896	88	829
2897	89	533
2898	89	534
2899	89	535
2900	89	536
2901	89	537
2902	89	538
2903	89	539
2904	89	540
2905	89	541
2906	89	542
2907	89	543
2908	89	544
2909	89	545
2910	89	546
2911	89	547
2912	89	548
2913	89	549
2914	89	61
2915	89	62
2916	89	831
2917	89	832
2918	89	833
2919	89	834
2920	89	835
2921	89	836
2922	89	837
2923	89	838
2924	89	839
2925	89	840
2926	89	841
2927	89	842
2928	89	843
2929	89	844
2930	89	845
2931	89	846
2932	89	847
2933	89	848
2934	89	849
2935	89	850
2936	89	851
2937	89	852
2938	89	853
2939	89	854
2940	89	855
2941	89	856
2942	89	857
2943	89	858
2944	89	228
2945	89	229
2946	89	230
2947	89	231
2948	89	830
2949	90	533
2950	90	534
2951	90	535
2952	90	536
2953	90	537
2954	90	538
2955	90	539
2956	90	540
2957	90	541
2958	90	542
2959	90	543
2960	90	544
2961	90	545
2962	90	546
2963	90	683
2964	90	684
2965	90	685
2966	90	686
2967	90	687
2968	90	688
2969	90	689
2970	90	690
2971	90	691
2972	90	692
2973	90	693
2974	90	694
2975	90	61
2976	90	62
2977	90	228
2978	90	229
2979	90	231
2980	91	385
2981	91	389
2982	91	391
2983	91	358
2984	91	859
2985	91	113
2986	91	92
2987	91	871
2988	91	190
2989	91	191
2990	91	119
2991	91	120
2992	91	867
2993	91	868
2994	91	91
2995	91	860
2996	91	861
2997	91	862
2998	91	863
2999	91	864
3000	91	865
3001	91	866
3002	91	355
3003	91	356
3004	91	869
3005	91	870
3006	91	103
3007	91	872
3008	91	105
3009	91	106
3010	91	875
3011	91	876
3012	91	873
3013	91	104
3014	91	114
3015	91	115
3016	91	117
3017	91	118
3018	91	759
3019	91	760
3020	91	761
3021	91	762
3022	91	874
3023	92	877
3024	92	878
3025	92	879
3026	92	880
3027	92	881
3028	92	882
3029	92	883
3030	92	117
3031	92	118
3032	92	119
3033	92	120
3034	92	121
3035	92	122
3036	92	91
3037	92	92
3038	92	282
3039	93	896
3040	93	897
3041	93	898
3042	93	899
3043	93	325
3044	93	364
3045	93	371
3046	93	884
3047	93	885
3048	93	886
3049	93	887
3050	93	888
3051	93	889
3052	93	890
3053	93	891
3054	93	892
3055	93	893
3056	93	894
3057	93	895
3058	94	900
3059	94	901
3060	94	902
3061	94	903
3062	94	904
3063	94	905
3064	94	906
3065	94	907
3066	94	908
3067	94	909
3068	94	910
3069	94	911
3070	94	912
3071	94	913
3072	94	914
3073	94	534
3074	94	535
3075	94	536
3076	94	537
3077	94	538
3078	94	539
3079	94	540
3080	94	541
3081	94	542
3082	94	543
3083	94	544
3084	94	545
3085	94	546
3086	94	547
3087	94	548
3088	94	549
3089	94	57
3090	94	61
3091	94	62
3092	94	831
3093	94	832
3094	94	833
3095	94	834
3096	94	835
3097	94	836
3098	94	837
3099	94	838
3100	94	839
3101	94	840
3102	94	841
3103	94	842
3104	94	843
3105	94	844
3106	94	845
3107	94	228
3108	94	229
3109	94	230
3110	94	231
3111	94	830
3112	95	915
3113	95	916
3114	95	917
3115	95	918
3116	95	64
3117	95	65
3118	95	66
3119	95	67
3120	95	68
3121	95	69
3122	95	70
3123	95	71
3124	95	72
3125	95	73
3126	95	74
3127	95	75
3128	95	76
3129	95	77
3130	95	78
3131	95	79
3132	95	80
3133	95	81
3134	95	82
3135	95	83
3136	95	84
3137	95	91
3138	95	92
3139	95	93
3140	95	94
3141	95	95
3142	95	96
3143	95	97
3144	95	98
3145	96	256
3146	96	257
3147	96	919
3148	96	57
3149	96	64
3150	96	65
3151	96	66
3152	96	67
3153	96	68
3154	96	69
3155	96	70
3156	96	71
3157	96	72
3158	96	73
3159	96	74
3160	96	75
3161	96	76
3162	96	77
3163	96	78
3164	96	96
3165	96	97
3166	96	98
3167	96	249
3168	96	250
3169	96	251
3170	96	252
3171	96	253
3172	96	254
3173	96	255
3174	97	137
3175	97	138
3176	97	395
3177	97	401
3178	97	920
3179	97	921
3180	97	922
3181	97	923
3182	97	924
3183	97	925
3184	97	926
3185	97	927
3186	97	928
3187	97	929
3188	97	930
3189	97	931
3190	97	932
3191	97	933
3192	97	394
3193	97	139
3194	97	76
3195	97	77
3196	97	78
3197	97	79
3198	97	80
3199	97	81
3200	97	82
3201	97	606
3202	97	607
3203	98	458
3204	98	449
3205	98	450
3206	98	451
3207	98	452
3208	98	453
3209	98	454
3210	98	455
3211	98	104
3212	98	105
3213	98	106
3214	98	107
3215	98	117
3216	98	758
3217	98	119
3218	98	120
3219	98	457
3220	98	91
3221	98	92
3222	98	118
3223	98	459
3224	99	256
3225	99	257
3226	99	254
3227	99	30
3228	99	672
3229	99	934
3230	99	935
3231	99	936
3232	99	937
3233	99	938
3234	99	939
3235	99	940
3236	99	941
3237	99	942
3238	99	943
3239	99	944
3240	99	945
3241	99	946
3242	99	947
3243	99	948
3244	99	949
3245	99	950
3246	99	951
3247	99	952
3248	99	953
3249	99	954
3250	99	955
3251	99	956
3252	99	957
3253	99	958
3254	99	959
3255	99	960
3256	99	961
3257	99	962
3258	99	963
3259	99	964
3260	99	965
3261	99	966
3262	99	967
3263	99	968
3264	99	969
3265	99	970
3266	99	971
3267	99	79
3268	99	80
3269	99	81
3270	99	82
3271	99	83
3272	99	84
3273	99	85
3274	99	249
3275	99	348
3276	99	250
3277	99	252
3278	99	368
3279	99	370
3280	99	371
3281	99	372
3282	99	373
3283	99	374
3284	99	375
3285	99	376
3286	99	377
3287	99	378
3288	99	379
3289	99	380
3290	99	381
3291	99	382
3292	99	255
3293	100	385
3294	100	107
3295	100	389
3296	100	391
3297	100	108
3298	100	274
3299	100	275
3300	100	276
3301	100	277
3302	100	103
3303	100	113
3304	100	755
3305	100	58
3306	100	59
3307	100	60
3308	100	972
3309	100	973
3310	100	974
3311	100	975
3312	100	976
3313	100	977
3314	100	599
3315	100	355
3316	100	356
3317	100	358
3318	100	870
3319	100	871
3320	100	872
3321	100	105
3322	100	106
3323	100	875
3324	100	876
3325	100	109
3326	100	110
3327	100	111
3328	100	112
3329	100	104
3330	100	114
3331	100	115
3332	100	756
3333	100	757
3334	100	873
3335	100	874
3336	101	19
3337	101	20
3338	101	21
3339	101	22
3340	101	23
3341	101	24
3342	101	25
3343	101	26
3344	101	27
3345	101	28
3346	101	30
3347	101	988
3348	101	326
3349	101	978
3350	101	979
3351	101	980
3352	101	981
3353	101	982
3354	101	983
3355	101	984
3356	101	985
3357	101	986
3358	101	987
3359	101	604
3360	101	989
3361	101	990
3362	101	991
3363	101	992
3364	101	993
3365	101	364
3366	101	381
3367	101	382
3368	102	652
3369	102	653
3370	102	223
3371	102	61
3372	102	96
3373	102	451
3374	102	453
3375	102	454
3376	102	97
3377	102	611
3378	102	612
3379	102	228
3380	102	222
3381	102	95
3382	102	224
3383	102	225
3384	102	994
3385	102	995
3386	102	996
3387	102	997
3388	102	614
3389	102	615
3390	102	616
3391	102	617
3392	102	107
3393	102	613
3394	102	229
3395	102	104
3396	103	258
3397	103	259
3398	103	654
3399	103	655
3400	103	656
3401	103	657
3402	103	658
3403	103	998
3404	103	1015
3405	103	737
3406	103	738
3407	103	739
3408	103	740
3409	103	741
3410	103	742
3411	103	999
3412	103	1000
3413	103	1001
3414	103	1002
3415	103	1003
3416	103	1004
3417	103	1005
3418	103	1006
3419	103	1007
3420	103	1008
3421	103	1009
3422	103	1010
3423	103	1011
3424	103	1012
3425	103	1013
3426	103	1014
3427	103	631
3428	103	632
3429	103	633
3430	103	634
3431	104	775
3432	104	776
3433	104	778
3434	104	781
3435	104	782
3436	104	783
3437	104	532
3438	104	535
3439	104	536
3440	104	537
3441	104	57
3442	104	59
3443	104	60
3444	104	61
3445	104	62
3446	104	63
3447	104	972
3448	104	610
3449	104	101
3450	104	102
3451	104	1016
3452	104	1017
3453	104	1018
3454	105	129
3455	105	130
3456	105	131
3457	105	258
3458	105	398
3459	105	399
3460	105	400
3461	105	401
3462	105	259
3463	105	532
3464	105	535
3465	105	536
3466	105	537
3467	105	28
3468	105	29
3469	105	30
3470	105	159
3471	105	32
3472	105	33
3473	105	34
3474	105	35
3475	105	36
3476	105	37
3477	105	38
3478	105	39
3479	105	40
3480	105	41
3481	105	42
3482	105	606
3483	105	607
3484	105	31
3485	105	608
3486	105	1015
3487	105	972
3488	105	973
3489	105	599
3490	105	733
3491	105	734
3492	105	735
3493	105	736
3494	105	609
3495	105	610
3496	105	748
3497	105	631
3498	105	632
3499	105	633
3500	105	634
3501	105	1019
3502	106	530
3503	106	531
3504	106	34
3505	106	36
3506	106	37
3507	106	38
3508	106	39
3509	106	40
3510	106	41
3511	106	42
3512	106	43
3513	106	44
3514	106	45
3515	106	46
3516	106	47
3517	106	48
3518	106	49
3519	106	50
3520	106	51
3521	106	52
3522	106	53
3523	106	54
3524	106	58
3525	106	61
3526	106	62
3527	106	484
3528	106	605
3529	106	353
3530	106	354
3531	106	228
3532	106	229
3533	106	365
3534	106	366
3535	106	367
3536	106	368
3537	106	370
3538	106	371
3539	106	372
3540	106	373
3541	106	1020
3542	107	1024
3543	107	1025
3544	107	1026
3545	107	1027
3546	107	1028
3547	107	1029
3548	107	1030
3549	107	1031
3550	107	1032
3551	107	1033
3552	107	1034
3553	107	1035
3554	107	1036
3555	107	1037
3556	107	1038
3557	107	1039
3558	107	1040
3559	107	1041
3560	107	1042
3561	107	1043
3562	107	1044
3563	107	1045
3564	107	28
3565	107	30
3566	107	325
3567	107	326
3568	107	955
3569	107	956
3570	107	957
3571	107	958
3572	107	959
3573	107	960
3574	107	961
3575	107	962
3576	107	963
3577	107	964
3578	107	965
3579	107	966
3580	107	967
3581	107	968
3582	107	969
3583	107	970
3584	107	971
3585	107	333
3586	107	334
3587	107	982
3588	107	343
3589	107	984
3590	107	985
3591	107	987
3592	107	988
3593	107	989
3594	107	990
3595	107	991
3596	107	992
3597	107	993
3598	107	1021
3599	107	1022
3600	107	381
3601	107	382
3602	107	1023
3603	108	192
3604	108	1046
3605	108	193
3606	108	1047
3607	108	452
3608	108	194
3609	108	1048
3610	108	451
3611	108	662
3612	108	663
3613	108	664
3614	108	1049
3615	108	1050
3616	108	1051
3617	108	156
3618	108	157
3619	108	1054
3620	108	453
3621	108	155
3622	108	454
3623	108	1052
3624	108	455
3625	108	1053
3626	108	304
3627	108	456
3628	108	457
3629	108	696
3630	108	697
3631	108	698
3632	108	699
3633	108	700
3634	108	701
3635	108	190
3636	108	191
3637	108	704
3638	108	705
3639	108	450
3640	108	707
3641	108	708
3642	108	709
3643	108	710
3644	108	711
3645	108	712
3646	108	713
3647	108	714
3648	108	459
3649	108	716
3650	108	717
3651	108	706
3652	108	91
3653	108	92
3654	108	458
3655	108	715
3656	108	103
3657	108	104
3658	108	105
3659	108	106
3660	108	107
3661	108	702
3662	108	758
3663	108	703
3664	108	460
3665	109	321
3666	109	527
3667	109	528
3668	109	529
3669	109	323
3670	109	324
3671	109	326
3672	109	55
3673	109	56
3674	109	57
3675	109	447
3676	109	320
3677	109	65
3678	109	66
3679	109	67
3680	109	68
3681	109	325
3682	109	70
3683	109	73
3684	109	75
3685	109	76
3686	109	77
3687	109	79
3688	109	80
3689	109	81
3690	109	82
3691	109	83
3692	109	84
3693	109	85
3694	109	86
3695	109	87
3696	109	88
3697	109	90
3698	109	475
3699	109	989
3700	109	990
3701	109	991
3702	109	992
3703	109	993
3704	109	363
3705	109	240
3706	109	249
3707	110	880
3708	110	877
3709	110	878
3710	110	879
3711	110	624
3712	110	121
3713	110	117
3714	110	118
3715	110	119
3716	110	120
3717	110	281
3718	110	122
3719	110	91
3720	110	92
3721	110	282
3722	111	258
3723	111	259
3724	111	1055
3725	111	1056
3726	111	1057
3727	111	1058
3728	111	1059
3729	111	1060
3730	111	1061
3731	111	1062
3732	111	1063
3733	111	1064
3734	111	1065
3735	111	57
3736	111	314
3737	111	59
3738	111	60
3739	111	61
3740	111	63
3741	111	64
3742	111	65
3743	111	66
3744	111	67
3745	111	68
3746	111	69
3747	111	597
3748	111	598
3749	111	599
3750	111	734
3751	111	735
3752	111	736
3753	111	748
3754	111	240
3755	111	241
3756	111	242
3757	111	243
3758	111	244
3759	111	631
3760	111	632
3761	111	633
3762	111	634
3763	111	635
3764	112	772
3765	112	282
3766	112	1066
3767	112	1067
3768	112	1068
3769	112	57
3770	112	58
3771	112	60
3772	112	61
3773	112	62
3774	112	63
3775	112	972
3776	112	101
3777	112	229
3778	112	102
3779	112	878
3780	112	879
3781	112	880
3782	112	881
3783	112	121
3784	112	122
3785	112	123
3786	113	149
3787	113	64
3788	113	65
3789	113	66
3790	113	146
3791	113	147
3792	113	148
3793	113	405
3794	113	150
3795	113	151
3796	113	152
3797	113	68
3798	113	69
3799	113	1069
3800	113	1070
3801	113	1071
3802	113	1072
3803	113	1073
3804	113	1074
3805	113	320
3806	113	321
3807	113	322
3808	113	67
3809	113	324
3810	113	325
3811	113	70
3812	113	71
3813	113	72
3814	113	73
3815	113	74
3816	113	75
3817	113	76
3818	113	77
3819	113	590
3820	113	589
3821	113	592
3822	113	81
3823	113	82
3824	113	83
3825	113	84
3826	113	78
3827	113	86
3828	113	87
3829	113	88
3830	113	89
3831	113	90
3832	113	591
3833	113	92
3834	113	93
3835	113	94
3836	113	95
3837	113	96
3838	113	97
3839	113	98
3840	113	80
3841	113	323
3842	113	363
3843	113	364
3844	113	79
3845	113	85
3846	114	805
3847	114	806
3848	114	970
3849	114	971
3850	114	335
3851	114	336
3852	114	17
3853	114	18
3854	114	1075
3855	114	1076
3856	115	1088
3857	115	1089
3858	115	258
3859	115	551
3860	115	552
3861	115	553
3862	115	1077
3863	115	1078
3864	115	1079
3865	115	1080
3866	115	1081
3867	115	1082
3868	115	1083
3869	115	1084
3870	115	1085
3871	115	1086
3872	115	1087
3873	116	772
3874	116	972
3875	116	274
3876	116	275
3877	116	276
3878	116	277
3879	116	663
3880	116	664
3881	116	1095
3882	116	756
3883	116	58
3884	116	60
3885	116	1090
3886	116	1091
3887	116	1092
3888	116	1093
3889	116	1094
3890	116	199
3891	116	1096
3892	116	1097
3893	116	1098
3894	116	1099
3895	116	1100
3896	116	1101
3897	116	1102
3898	116	1103
3899	116	1104
3900	116	224
3901	116	226
3902	116	227
3903	116	204
3904	116	757
3905	116	255
3906	117	448
3907	117	155
3908	117	166
3909	117	167
3910	117	156
3911	117	157
3912	117	147
3913	117	148
3914	117	149
3915	117	150
3916	117	151
3917	117	152
3918	117	153
3919	117	154
3920	117	91
3921	117	92
3922	117	93
3923	117	94
3924	118	256
3925	118	257
3926	118	258
3927	118	259
3928	118	644
3929	118	645
3930	118	646
3931	118	599
3932	118	57
3933	118	59
3934	118	60
3935	118	61
3936	118	62
3937	118	63
3938	118	64
3939	118	65
3940	118	66
3941	118	67
3942	118	68
3943	118	69
3944	118	70
3945	118	631
3946	118	76
3947	118	77
3948	118	1105
3949	118	1106
3950	118	1107
3951	118	1108
3952	118	1109
3953	118	1110
3954	118	1111
3955	118	1112
3956	118	1113
3957	118	1114
3958	118	1115
3959	118	1116
3960	118	1117
3961	118	1118
3962	118	1119
3963	118	240
3964	118	241
3965	118	242
3966	118	243
3967	118	244
3968	118	245
3969	118	246
3970	118	247
3971	118	248
3972	118	249
3973	118	250
3974	118	251
3975	118	252
3976	118	253
3977	118	254
3978	118	255
3979	119	531
3980	119	150
3981	119	151
3982	119	152
3983	119	153
3984	119	154
3985	119	155
3986	119	156
3987	119	157
3988	119	61
3989	119	62
3990	119	65
3991	119	91
3992	119	92
3993	119	1120
3994	119	1121
3995	119	1122
3996	119	1123
3997	119	228
3998	119	229
3999	119	117
4000	119	118
4001	119	119
4002	119	120
4003	119	121
4004	119	122
4005	119	123
4006	119	124
4007	120	274
4008	120	275
4009	120	276
4010	120	277
4011	120	663
4012	120	664
4013	120	665
4014	120	295
4015	120	1092
4016	120	1093
4017	120	1094
4018	120	199
4019	120	200
4020	120	201
4021	120	202
4022	120	203
4023	120	204
4024	120	205
4025	120	206
4026	120	207
4027	120	208
4028	120	1124
4029	120	625
4030	120	629
4031	120	630
4032	121	128
4033	121	129
4034	121	130
4035	121	131
4036	121	132
4037	121	133
4038	121	134
4039	121	135
4040	121	136
4041	121	137
4042	121	138
4043	121	139
4044	121	530
4045	121	147
4046	121	148
4047	121	149
4048	121	150
4049	121	151
4050	121	152
4051	121	153
4052	121	154
4053	121	155
4054	121	156
4055	121	157
4056	121	166
4057	121	167
4058	121	50
4059	121	51
4060	121	54
4061	121	64
4062	121	65
4063	121	91
4064	121	92
4065	121	93
4066	121	94
4067	121	95
4068	121	96
4069	121	97
4070	121	98
4071	121	124
4072	121	125
4073	121	126
4074	121	127
4075	122	97
4076	122	228
4077	122	1125
4078	122	1126
4079	122	1127
4080	122	1128
4081	122	1129
4082	122	618
4083	122	619
4084	122	117
4085	122	118
4086	122	119
4087	122	120
4088	122	91
4089	122	92
4090	122	61
4091	122	229
4092	123	527
4093	123	945
4094	123	946
4095	123	947
4096	123	948
4097	123	949
4098	123	950
4099	123	951
4100	123	952
4101	123	953
4102	123	954
4103	123	445
4104	123	446
4105	123	447
4106	123	320
4107	123	321
4108	123	325
4109	123	326
4110	123	87
4111	123	88
4112	123	90
4113	123	991
4114	123	992
4115	123	993
4116	123	485
4117	123	486
4118	123	363
4119	123	368
4120	123	369
4121	123	370
4122	123	371
4123	123	372
4124	123	373
4125	124	669
4126	124	107
4127	124	398
4128	124	400
4129	124	125
4130	124	110
4131	124	111
4132	124	668
4133	124	925
4134	124	670
4135	124	671
4136	124	673
4137	124	674
4138	124	359
4139	124	676
4140	124	934
4141	124	42
4142	124	47
4143	124	48
4144	124	50
4145	124	51
4146	124	54
4147	124	56
4148	124	57
4149	124	64
4150	124	65
4151	124	616
4152	124	355
4153	124	477
4154	124	1123
4155	124	356
4156	124	357
4157	124	358
4158	124	615
4159	124	104
4160	124	361
4161	124	1130
4162	124	1131
4163	124	1132
4164	124	1133
4165	124	1134
4166	124	1135
4167	124	112
4168	124	360
4169	124	114
4170	124	617
4171	124	121
4172	124	122
4173	124	123
4174	124	124
4175	124	362
4176	124	126
4177	125	1152
4178	125	1153
4179	125	1154
4180	125	1155
4181	125	900
4182	125	901
4183	125	844
4184	125	532
4185	125	535
4186	125	536
4187	125	537
4188	125	539
4189	125	540
4190	125	542
4191	125	543
4192	125	544
4193	125	545
4194	125	1156
4195	125	683
4196	125	57
4197	125	59
4198	125	60
4199	125	61
4200	125	830
4201	125	63
4202	125	832
4203	125	833
4204	125	836
4205	125	837
4206	125	838
4207	125	839
4208	125	840
4209	125	841
4210	125	843
4211	125	972
4212	125	845
4213	125	1141
4214	125	610
4215	125	1136
4216	125	1137
4217	125	1138
4218	125	1139
4219	125	1140
4220	125	62
4221	125	1142
4222	125	1143
4223	125	1144
4224	125	1145
4225	125	1146
4226	125	1147
4227	125	1148
4228	125	1149
4229	125	1150
4230	125	1151
4231	126	107
4232	126	101
4233	126	102
4234	126	103
4235	126	104
4236	126	105
4237	126	106
4238	126	299
4239	126	108
4240	126	109
4241	126	110
4242	126	111
4243	126	112
4244	126	113
4245	126	114
4246	126	115
4247	126	57
4248	126	358
4249	126	298
4250	127	91
4251	127	92
4252	127	355
4253	127	356
4254	127	870
4255	127	358
4256	127	103
4257	127	104
4258	127	105
4259	127	106
4260	127	107
4261	127	108
4262	127	109
4263	127	110
4264	127	111
4265	127	112
4266	127	113
4267	127	114
4268	127	115
4269	127	117
4270	127	118
4271	127	119
4272	127	120
4273	128	1157
4274	128	1158
4275	128	1159
4276	128	653
4277	128	654
4278	128	655
4279	128	656
4280	128	657
4281	128	658
4282	128	659
4283	128	660
4284	128	661
4285	128	154
4286	128	155
4287	128	156
4288	128	157
4289	128	61
4290	128	1091
4291	128	593
4292	128	91
4293	128	224
4294	128	228
4295	128	229
4296	128	1128
4297	128	1129
4298	129	1160
4299	129	1161
4300	129	1162
4301	129	1163
4302	129	1164
4303	129	676
4304	129	57
4305	129	64
4306	129	65
4307	129	66
4308	129	67
4309	129	68
4310	129	69
4311	129	70
4312	129	76
4313	129	77
4314	129	78
4315	129	240
4316	129	241
4317	129	242
4318	129	243
4319	129	244
4320	129	245
4321	129	246
4322	129	247
4323	129	248
4324	129	249
4325	129	250
4326	129	251
4327	129	252
4328	129	253
4329	130	107
4330	130	158
4331	130	65
4332	130	616
4333	130	355
4334	130	356
4335	130	357
4336	130	358
4337	130	615
4338	130	104
4339	130	361
4340	130	362
4341	130	359
4342	130	877
4343	130	110
4344	130	111
4345	130	112
4346	130	360
4347	130	114
4348	130	617
4349	130	121
4350	130	122
4351	131	355
4352	131	356
4353	131	101
4354	131	102
4355	131	103
4356	131	104
4357	131	105
4358	131	106
4359	131	107
4360	131	108
4361	131	109
4362	131	110
4363	131	111
4364	131	112
4365	131	113
4366	131	114
4367	131	115
4368	131	870
4369	131	57
4370	131	358
4371	132	1174
4372	132	961
4373	132	1165
4374	132	1166
4375	132	1167
4376	132	1168
4377	132	1169
4378	132	1170
4379	132	1171
4380	132	1172
4381	132	1173
4382	132	918
4383	132	28
4384	132	29
4385	132	30
4386	132	31
4387	132	32
4388	132	33
4389	132	34
4390	132	966
4391	132	1065
4392	132	317
4393	132	314
4394	132	956
4395	132	445
4396	132	446
4397	132	447
4398	132	320
4399	132	321
4400	132	962
4401	132	964
4402	132	325
4403	132	326
4404	132	967
4405	132	968
4406	132	971
4407	132	90
4408	132	991
4409	132	992
4410	132	993
4411	132	482
4412	132	483
4413	132	484
4414	132	485
4415	132	486
4416	132	316
4417	132	363
4418	132	353
4419	132	372
4420	132	382
4421	133	773
4422	133	774
4423	133	776
4424	133	777
4425	133	778
4426	133	779
4427	133	781
4428	133	782
4429	133	145
4430	133	786
4431	133	787
4432	133	533
4433	133	534
4434	133	535
4435	133	536
4436	133	537
4437	133	61
4438	133	62
4439	133	1175
4440	133	228
4441	133	229
4442	133	230
4443	133	231
4444	134	258
4445	134	259
4446	134	530
4447	134	531
4448	134	1015
4449	134	1176
4450	134	34
4451	134	35
4452	134	36
4453	134	37
4454	134	38
4455	134	39
4456	134	40
4457	134	41
4458	134	42
4459	134	43
4460	134	44
4461	134	46
4462	134	47
4463	134	48
4464	134	49
4465	134	50
4466	134	51
4467	134	52
4468	134	53
4469	134	54
4470	134	444
4471	134	61
4472	134	62
4473	134	327
4474	134	332
4475	134	331
4476	134	972
4477	134	333
4478	134	334
4479	134	973
4480	134	599
4481	134	601
4482	134	602
4483	134	603
4484	134	604
4485	134	733
4486	134	734
4487	134	735
4488	134	736
4489	134	353
4490	134	354
4491	134	484
4492	134	486
4493	134	748
4494	134	372
4495	134	373
4496	134	631
4497	134	632
4498	134	633
4499	134	634
4500	134	1019
4501	134	605
4502	135	537
4503	135	774
4504	135	776
4505	135	777
4506	135	778
4507	135	535
4508	135	781
4509	135	782
4510	135	145
4511	135	786
4512	135	787
4513	135	788
4514	135	1175
4515	135	792
4516	135	793
4517	135	794
4518	135	796
4519	135	798
4520	135	779
4521	135	791
4522	135	229
4523	135	230
4524	135	231
4525	135	536
4526	136	131
4527	136	132
4528	136	133
4529	136	134
4530	136	135
4531	136	136
4532	136	137
4533	136	138
4534	136	139
4535	136	920
4536	136	535
4537	136	536
4538	136	537
4539	136	922
4540	136	1179
4541	136	1180
4542	136	1178
4543	136	1182
4544	136	1183
4545	136	1184
4546	136	1185
4547	136	1186
4548	136	1187
4549	136	1181
4550	136	59
4551	136	60
4552	136	961
4553	136	962
4554	136	963
4555	136	964
4556	136	965
4557	136	966
4558	136	967
4559	136	968
4560	136	969
4561	136	970
4562	136	971
4563	136	593
4564	136	594
4565	136	595
4566	136	596
4567	136	597
4568	136	598
4569	136	599
4570	136	91
4571	136	609
4572	136	228
4573	136	229
4574	136	230
4575	136	231
4576	136	1177
4577	137	256
4578	137	257
4579	137	254
4580	137	279
4581	137	280
4582	137	281
4583	137	282
4584	137	283
4585	137	284
4586	137	285
4587	137	91
4588	137	121
4589	137	117
4590	137	190
4591	137	191
4592	137	118
4593	137	119
4594	137	76
4595	137	77
4596	137	248
4597	137	761
4598	137	859
4599	137	92
4600	137	762
4601	137	247
4602	137	240
4603	137	241
4604	137	242
4605	137	243
4606	137	244
4607	137	245
4608	137	246
4609	137	759
4610	137	760
4611	137	249
4612	137	250
4613	137	251
4614	137	252
4615	137	253
4616	137	120
4617	137	255
4618	138	64
4619	138	65
4620	138	66
4621	138	67
4622	138	68
4623	138	69
4624	138	57
4625	138	320
4626	138	321
4627	138	322
4628	138	323
4629	138	324
4630	138	325
4631	138	70
4632	138	71
4633	138	72
4634	138	73
4635	138	74
4636	138	75
4637	138	76
4638	138	77
4639	138	78
4640	138	79
4641	138	80
4642	138	81
4643	138	82
4644	138	83
4645	138	84
4646	138	85
4647	138	86
4648	138	87
4649	138	88
4650	138	89
4651	138	90
4652	138	98
4653	138	363
4654	138	364
4655	139	1157
4656	139	1158
4657	139	654
4658	139	655
4659	139	656
4660	139	657
4661	139	658
4662	139	659
4663	139	660
4664	139	1176
4665	139	1188
4666	139	1189
4667	139	1190
4668	139	1191
4669	139	61
4670	139	190
4671	139	191
4672	139	593
4673	139	227
4674	139	752
4675	139	753
4676	139	754
4677	139	762
4678	140	139
4679	140	920
4680	140	921
4681	140	922
4682	140	1179
4683	140	1180
4684	140	1178
4685	140	30
4686	140	1183
4687	140	1184
4688	140	1192
4689	140	1181
4690	140	955
4691	140	956
4692	140	957
4693	140	958
4694	140	959
4695	140	960
4696	140	961
4697	140	348
4698	140	1020
4699	140	365
4700	140	366
4701	140	367
4702	140	368
4703	140	370
4704	140	371
4705	140	372
4706	140	373
4707	140	374
4708	140	375
4709	140	376
4710	140	377
4711	140	378
4712	140	379
4713	140	380
4714	140	381
4715	140	382
4716	141	816
4717	141	1201
4718	141	493
4719	141	1193
4720	141	1194
4721	141	1195
4722	141	1196
4723	141	1197
4724	141	1198
4725	141	815
4726	141	1200
4727	141	817
4728	141	818
4729	141	819
4730	141	814
4731	141	333
4732	141	600
4733	141	1199
4734	141	492
4735	142	12
4736	142	13
4737	142	14
4738	142	15
4739	142	16
4740	142	18
4741	142	19
4742	142	20
4743	142	26
4744	142	27
4745	142	28
4746	142	29
4747	142	30
4748	142	31
4749	142	34
4750	142	1202
4751	142	1203
4752	142	1204
4753	142	1205
4754	142	1206
4755	142	1207
4756	142	1208
4757	142	1209
4758	142	1210
4759	142	159
4760	142	1212
4761	142	1213
4762	142	1214
4763	142	1215
4764	142	1216
4765	142	1217
4766	142	1218
4767	142	1219
4768	142	1220
4769	142	1221
4770	142	270
4771	142	605
4772	142	353
4773	142	354
4774	142	1211
4775	142	484
4776	142	373
4777	143	192
4778	143	1046
4779	143	193
4780	143	452
4781	143	194
4782	143	1224
4783	143	451
4784	143	1228
4785	143	662
4786	143	663
4787	143	664
4788	143	665
4789	143	156
4790	143	157
4791	143	453
4792	143	457
4793	143	454
4794	143	455
4795	143	304
4796	143	456
4797	143	713
4798	143	696
4799	143	697
4800	143	698
4801	143	699
4802	143	700
4803	143	1226
4804	143	190
4805	143	191
4806	143	704
4807	143	705
4808	143	450
4809	143	707
4810	143	708
4811	143	709
4812	143	710
4813	143	711
4814	143	712
4815	143	1225
4816	143	714
4817	143	459
4818	143	460
4819	143	717
4820	143	1230
4821	143	1229
4822	143	706
4823	143	91
4824	143	92
4825	143	458
4826	143	1222
4827	143	715
4828	143	103
4829	143	104
4830	143	105
4831	143	106
4832	143	107
4833	143	701
4834	143	758
4835	143	702
4836	143	1227
4837	143	703
4838	143	1223
4839	144	150
4840	144	151
4841	144	152
4842	144	146
4843	144	147
4844	144	404
4845	144	149
4846	144	406
4847	144	407
4848	144	408
4849	144	409
4850	144	154
4851	144	411
4852	144	412
4853	144	413
4854	144	410
4855	144	415
4856	144	416
4857	144	417
4858	144	418
4859	144	419
4860	144	420
4861	144	421
4862	144	422
4863	144	423
4864	144	424
4865	144	156
4866	144	426
4867	144	427
4868	144	428
4869	144	429
4870	144	430
4871	144	414
4872	144	1231
4873	144	1232
4874	144	1233
4875	144	1234
4876	144	1235
4877	144	1236
4878	144	91
4879	144	402
4880	144	403
4881	144	425
4882	144	148
4883	144	405
4884	145	197
4885	145	1094
4886	145	195
4887	145	196
4888	145	1093
4889	145	198
4890	145	1237
4891	145	1238
4892	145	1239
4893	145	91
4894	145	861
4895	145	862
4896	145	863
4897	145	864
4898	145	865
4899	145	866
4900	145	355
4901	145	356
4902	145	358
4903	145	870
4904	145	114
4905	145	115
4906	146	772
4907	146	756
4908	146	1240
4909	146	274
4910	146	275
4911	146	276
4912	146	277
4913	146	663
4914	146	664
4915	146	665
4916	146	181
4917	146	182
4918	146	183
4919	146	184
4920	146	185
4921	146	186
4922	146	59
4923	146	60
4924	146	189
4925	146	757
4926	146	1090
4927	146	196
4928	146	197
4929	146	198
4930	146	199
4931	146	200
4932	146	201
4933	146	202
4934	146	203
4935	146	972
4936	146	205
4937	146	206
4938	146	207
4939	146	208
4940	146	209
4941	146	210
4942	146	211
4943	146	212
4944	146	213
4945	146	214
4946	146	215
4947	146	216
4948	146	1241
4949	146	218
4950	146	219
4951	146	220
4952	146	221
4953	146	224
4954	146	226
4955	146	227
4956	146	229
4957	146	188
4958	146	187
4959	146	204
4960	146	629
4961	146	217
4962	147	102
4963	147	625
4964	147	274
4965	147	881
4966	147	882
4967	147	275
4968	147	276
4969	147	277
4970	147	279
4971	147	280
4972	147	121
4973	147	282
4974	147	883
4975	147	281
4976	148	736
4977	148	258
4978	148	259
4979	148	748
4980	148	635
4981	148	594
4982	148	595
4983	148	596
4984	148	1243
4985	148	631
4986	148	632
4987	148	633
4988	148	634
4989	148	91
4990	148	1242
4991	148	734
4992	148	735
4993	149	146
4994	149	147
4995	149	148
4996	149	149
4997	149	150
4998	149	151
4999	149	152
5000	149	153
5001	149	154
5002	149	155
5003	149	156
5004	149	157
5005	149	158
5006	149	1244
5007	149	1245
5008	149	1246
5009	149	1247
5010	149	64
5011	149	65
5012	149	1249
5013	149	1250
5014	149	91
5015	149	92
5016	149	93
5017	149	94
5018	149	95
5019	149	96
5020	149	97
5021	149	98
5022	149	1251
5023	149	1252
5024	149	1003
5025	149	1004
5026	149	1248
5027	149	405
5028	150	325
5029	150	364
5030	150	331
5031	150	332
5032	150	600
5033	150	444
5034	151	1157
5035	151	1158
5036	151	775
5037	151	776
5038	151	777
5039	151	778
5040	151	779
5041	151	780
5042	151	781
5043	151	782
5044	151	783
5045	151	784
5046	151	785
5047	151	786
5048	151	787
5049	151	532
5050	151	535
5051	151	536
5052	151	537
5053	151	773
5054	151	774
5055	151	1191
5056	151	61
5057	151	593
5058	151	91
5059	151	610
5060	151	227
5061	151	228
5062	151	229
5063	151	230
5064	151	145
5065	151	231
5066	151	752
5067	151	753
5068	151	754
5069	152	175
5070	152	176
5071	152	178
5072	152	179
5073	152	180
5074	152	195
5075	152	196
5076	152	197
5077	152	198
5078	152	199
5079	152	200
5080	152	201
5081	152	202
5082	152	203
5083	152	204
5084	152	205
5085	152	206
5086	152	207
5087	152	208
5088	152	209
5089	152	210
5090	152	91
5091	152	1253
5092	152	1254
5093	152	1255
5094	152	1256
5095	152	629
5096	153	258
5097	153	259
5098	153	1260
5099	153	530
5100	153	531
5101	153	532
5102	153	1015
5103	153	602
5104	153	34
5105	153	35
5106	153	36
5107	153	37
5108	153	38
5109	153	39
5110	153	40
5111	153	41
5112	153	42
5113	153	43
5114	153	44
5115	153	45
5116	153	46
5117	153	47
5118	153	48
5119	153	49
5120	153	50
5121	153	51
5122	153	52
5123	153	53
5124	153	54
5125	153	58
5126	153	351
5127	153	444
5128	153	61
5129	153	62
5130	153	352
5131	153	327
5132	153	332
5133	153	331
5134	153	972
5135	153	973
5136	153	599
5137	153	600
5138	153	601
5139	153	346
5140	153	603
5141	153	604
5142	153	733
5143	153	734
5144	153	735
5145	153	736
5146	153	353
5147	153	354
5148	153	229
5149	153	228
5150	153	350
5151	153	486
5152	153	1257
5153	153	1258
5154	153	1259
5155	153	748
5156	153	347
5157	153	372
5158	153	349
5159	153	631
5160	153	632
5161	153	633
5162	153	634
5163	153	1019
5164	154	449
5165	154	450
5166	154	451
5167	154	452
5168	154	453
5169	154	454
5170	154	455
5171	154	304
5172	154	456
5173	154	1276
5174	154	457
5175	154	696
5176	154	697
5177	154	698
5178	154	699
5179	154	700
5180	154	701
5181	154	702
5182	154	703
5183	154	704
5184	154	705
5185	154	706
5186	154	707
5187	154	708
5188	154	709
5189	154	710
5190	154	711
5191	154	712
5192	154	713
5193	154	714
5194	154	459
5195	154	716
5196	154	717
5197	154	458
5198	154	102
5199	154	104
5200	154	105
5201	154	106
5202	154	107
5203	154	1261
5204	154	1262
5205	154	1263
5206	154	1264
5207	154	1265
5208	154	1266
5209	154	1267
5210	154	1268
5211	154	1269
5212	154	1270
5213	154	1271
5214	154	1272
5215	154	1273
5216	154	1274
5217	154	1275
5218	154	460
5219	154	715
5220	155	1280
5221	155	229
5222	155	230
5223	155	231
5224	155	776
5225	155	777
5226	155	778
5227	155	779
5228	155	781
5229	155	782
5230	155	774
5231	155	535
5232	155	536
5233	155	537
5234	155	60
5235	155	1277
5236	155	1278
5237	155	1279
5238	156	1281
5239	156	546
5240	156	547
5241	156	1284
5242	156	229
5243	156	230
5244	156	1282
5245	156	542
5246	156	1283
5247	156	543
5248	156	537
5249	156	535
5250	156	536
5251	156	548
5252	156	538
5253	156	539
5254	156	540
5255	156	541
5256	156	830
5257	156	1285
5258	157	129
5259	157	258
5260	157	259
5261	157	748
5262	157	398
5263	157	400
5264	157	131
5265	157	535
5266	157	536
5267	157	537
5268	157	667
5269	157	668
5270	157	670
5271	157	671
5272	157	673
5273	157	674
5274	157	676
5275	157	41
5276	157	42
5277	157	59
5278	157	60
5279	157	736
5280	157	597
5281	157	598
5282	157	599
5283	157	734
5284	157	735
5285	157	608
5286	157	609
5287	157	229
5288	157	230
5289	157	231
5290	157	1131
5291	157	1132
5292	157	1134
5293	157	1135
5294	157	631
5295	157	632
5296	157	633
5297	157	634
5298	157	635
5299	158	1286
5300	158	1287
5301	158	151
5302	158	152
5303	158	530
5304	158	403
5305	158	404
5306	158	149
5307	158	150
5308	158	663
5309	158	664
5310	158	665
5311	158	154
5312	158	156
5313	158	601
5314	158	34
5315	158	35
5316	158	36
5317	158	37
5318	158	38
5319	158	39
5320	158	40
5321	158	41
5322	158	42
5323	158	43
5324	158	44
5325	158	46
5326	158	47
5327	158	48
5328	158	49
5329	158	50
5330	158	51
5331	158	52
5332	158	53
5333	158	54
5334	158	55
5335	158	56
5336	158	444
5337	158	195
5338	158	196
5339	158	327
5340	158	331
5341	158	332
5342	158	333
5343	158	334
5344	158	1241
5345	158	602
5346	158	603
5347	158	92
5348	158	605
5349	158	604
5350	158	353
5351	158	354
5352	158	484
5353	158	101
5354	158	486
5355	158	402
5356	158	146
5357	158	147
5358	158	372
5359	158	373
5360	158	148
5361	158	91
5362	158	102
5363	158	405
5364	159	1066
5365	159	1067
5366	159	1068
5367	159	877
5368	159	878
5369	159	879
5370	159	880
5371	159	881
5372	159	117
5373	159	118
5374	159	119
5375	159	120
5376	159	121
5377	159	122
5378	159	91
5379	159	92
5380	159	282
5381	160	150
5382	160	151
5383	160	152
5384	160	153
5385	160	154
5386	160	155
5387	160	156
5388	160	157
5389	160	64
5390	160	65
5391	160	97
5392	160	1122
5393	160	91
5394	160	92
5395	160	93
5396	160	94
5397	160	95
5398	160	96
5399	160	1121
5400	160	98
5401	160	99
5402	160	100
5403	160	1120
5404	161	832
5405	161	1281
5406	161	258
5407	161	259
5408	161	836
5409	161	837
5410	161	833
5411	161	1288
5412	161	1289
5413	161	631
5414	161	1282
5415	161	1105
5416	161	1106
5417	161	1107
5418	161	1108
5419	161	1109
5420	161	1110
5421	161	1111
5422	161	835
5423	161	834
5424	161	830
5425	162	320
5426	162	993
5427	162	321
5428	162	1290
5429	162	1291
5430	162	322
5431	162	323
5432	162	918
5433	162	324
5434	162	30
5435	162	31
5436	162	33
5437	162	34
5438	162	325
5439	162	1202
5440	162	955
5441	162	956
5442	162	317
5443	162	958
5444	162	959
5445	162	960
5446	162	961
5447	162	962
5448	162	963
5449	162	964
5450	162	965
5451	162	966
5452	162	967
5453	162	968
5454	162	969
5455	162	970
5456	162	971
5457	162	90
5458	162	603
5459	162	604
5460	162	605
5461	162	991
5462	162	992
5463	162	353
5464	162	354
5465	162	484
5466	162	486
5467	162	363
5468	162	957
5469	162	372
5470	162	373
5471	162	381
5472	162	382
5473	163	192
5474	163	702
5475	163	1046
5476	163	705
5477	163	452
5478	163	194
5479	163	451
5480	163	662
5481	163	663
5482	163	664
5483	163	665
5484	163	155
5485	163	156
5486	163	157
5487	163	453
5488	163	454
5489	163	193
5490	163	455
5491	163	304
5492	163	456
5493	163	1276
5494	163	758
5495	163	457
5496	163	696
5497	163	697
5498	163	698
5499	163	699
5500	163	700
5501	163	701
5502	163	190
5503	163	191
5504	163	704
5505	163	449
5506	163	450
5507	163	707
5508	163	708
5509	163	709
5510	163	710
5511	163	711
5512	163	712
5513	163	713
5514	163	714
5515	163	459
5516	163	716
5517	163	717
5518	163	706
5519	163	91
5520	163	92
5521	163	458
5522	163	715
5523	163	104
5524	163	105
5525	163	106
5526	163	107
5527	163	1261
5528	163	1262
5529	163	1263
5530	163	1264
5531	163	1265
5532	163	1266
5533	163	1267
5534	163	1268
5535	163	1269
5536	163	1270
5537	163	1271
5538	163	1272
5539	163	1273
5540	163	1274
5541	163	1275
5542	163	460
5543	163	703
5544	164	931
5545	164	932
5546	164	933
5547	164	64
5548	164	65
5549	164	66
5550	164	67
5551	164	68
5552	164	69
5553	164	70
5554	164	76
5555	164	77
5556	164	78
5557	164	79
5558	164	80
5559	164	81
5560	164	82
5561	164	91
5562	164	92
5563	164	93
5564	164	94
5565	164	95
5566	164	96
5567	164	97
5568	164	98
5569	164	240
5570	164	241
5571	164	242
5572	164	243
5573	164	244
5574	164	245
5575	164	246
5576	164	247
5577	164	248
5578	165	1292
5579	165	1293
5580	165	1294
5581	165	1295
5582	165	1193
5583	165	1195
5584	165	1197
5585	165	1198
5586	165	1199
5587	165	1200
5588	165	325
5589	165	892
5590	165	364
5591	165	365
5592	165	366
5593	165	367
5594	165	368
5595	165	369
5596	165	370
5597	165	371
5598	165	885
5599	165	886
5600	165	887
5601	165	888
5602	165	889
5603	165	890
5604	165	891
5605	165	1020
5606	165	893
5607	166	1290
5608	166	1291
5609	166	1296
5610	166	1297
5611	166	1298
5612	166	915
5613	166	916
5614	166	917
5615	166	918
5616	166	57
5617	166	58
5618	166	59
5619	166	60
5620	166	61
5621	166	62
5622	166	63
5623	166	64
5624	166	65
5625	166	66
5626	166	67
5627	166	68
5628	166	69
5629	166	70
5630	166	71
5631	166	72
5632	166	73
5633	166	74
5634	166	75
5635	166	972
5636	166	77
5637	166	78
5638	166	79
5639	166	80
5640	166	81
5641	166	82
5642	166	83
5643	166	84
5644	166	317
5645	166	76
5646	166	1299
5647	167	449
5648	167	450
5649	167	451
5650	167	452
5651	167	101
5652	167	102
5653	167	455
5654	167	104
5655	167	105
5656	167	106
5657	167	107
5658	167	454
5659	167	456
5660	167	758
5661	167	457
5662	167	57
5663	167	458
5664	167	459
5665	167	453
5666	168	768
5667	168	769
5668	168	770
5669	168	771
5670	168	653
5671	168	451
5672	168	1300
5673	168	1301
5674	168	535
5675	168	536
5676	168	537
5677	168	538
5678	168	539
5679	168	540
5680	168	541
5681	168	542
5682	168	543
5683	168	677
5684	168	678
5685	168	679
5686	168	95
5687	168	61
5688	168	614
5689	168	1091
5690	168	453
5691	168	454
5692	168	97
5693	168	996
5694	168	222
5695	168	223
5696	168	96
5697	168	225
5698	168	228
5699	168	229
5700	168	230
5701	168	231
5702	168	616
5703	168	617
5704	168	615
5705	168	613
5706	168	104
5707	168	997
5708	168	107
5709	169	30
5710	169	988
5711	169	325
5712	169	326
5713	169	978
5714	169	979
5715	169	980
5716	169	981
5717	169	982
5718	169	983
5719	169	984
5720	169	985
5721	169	986
5722	169	987
5723	169	604
5724	169	989
5725	169	990
5726	169	991
5727	169	992
5728	169	993
5729	169	364
5730	169	381
5731	169	382
5732	170	149
5733	170	64
5734	170	65
5735	170	66
5736	170	146
5737	170	147
5738	170	148
5739	170	405
5740	170	150
5741	170	151
5742	170	152
5743	170	68
5744	170	69
5745	170	1069
5746	170	1070
5747	170	1071
5748	170	1072
5749	170	1073
5750	170	1074
5751	170	320
5752	170	321
5753	170	322
5754	170	67
5755	170	324
5756	170	325
5757	170	70
5758	170	71
5759	170	72
5760	170	73
5761	170	74
5762	170	75
5763	170	76
5764	170	77
5765	170	590
5766	170	589
5767	170	592
5768	170	81
5769	170	82
5770	170	83
5771	170	84
5772	170	78
5773	170	86
5774	170	87
5775	170	88
5776	170	89
5777	170	90
5778	170	591
5779	170	92
5780	170	93
5781	170	94
5782	170	95
5783	170	96
5784	170	97
5785	170	98
5786	170	80
5787	170	323
5788	170	363
5789	170	364
5790	170	79
5791	170	85
5792	171	28
5793	171	29
5794	171	30
5795	171	31
5796	171	32
5797	171	33
5798	171	34
5799	171	35
5800	171	36
5801	171	37
5802	171	38
5803	171	39
5804	171	40
5805	171	41
5806	171	42
5807	171	43
5808	171	44
5809	171	45
5810	171	46
5811	171	47
5812	171	48
5813	171	49
5814	171	50
5815	171	51
5816	171	52
5817	171	53
5818	171	54
5819	171	55
5820	171	56
5821	171	57
5822	172	155
5823	172	1306
5824	172	1302
5825	172	156
5826	172	1303
5827	172	989
5828	172	1304
5829	172	150
5830	172	151
5831	172	152
5832	172	1305
5833	172	154
5834	172	91
5835	172	92
5836	172	157
5837	172	153
5838	173	1307
5839	173	1308
5840	173	1309
5841	173	1310
5842	173	1311
5843	173	1312
5844	173	1313
5845	173	945
5846	173	946
5847	173	947
5848	173	952
5849	173	320
5850	173	321
5851	173	322
5852	173	323
5853	173	324
5854	173	325
5855	173	87
5856	173	88
5857	173	89
5858	173	90
5859	173	603
5860	173	604
5861	173	991
5862	173	992
5863	173	993
5864	173	486
5865	173	363
5866	173	368
5867	173	372
5868	173	373
5869	174	258
5870	174	259
5871	174	146
5872	174	147
5873	174	148
5874	174	405
5875	174	150
5876	174	151
5877	174	152
5878	174	153
5879	174	154
5880	174	155
5881	174	156
5882	174	157
5883	174	1015
5884	174	593
5885	174	594
5886	174	595
5887	174	596
5888	174	91
5889	174	733
5890	174	734
5891	174	735
5892	174	736
5893	174	748
5894	174	631
5895	174	632
5896	174	633
5897	174	634
5898	174	149
5899	175	258
5900	175	259
5901	175	1314
5902	175	1315
5903	175	1316
5904	175	1317
5905	175	1318
5906	175	1319
5907	175	1320
5908	175	1321
5909	175	1322
5910	175	1323
5911	175	1324
5912	175	1325
5913	175	1326
5914	175	1327
5915	175	1328
5916	175	1329
5917	175	1330
5918	175	1331
5919	175	1332
5920	175	1333
5921	175	1334
5922	175	1335
5923	175	1336
5924	175	631
5925	175	593
5926	175	594
5927	175	595
5928	175	596
5929	175	91
5930	175	733
5931	175	734
5932	175	735
5933	175	736
5934	175	748
5935	175	1015
5936	175	632
5937	175	633
5938	175	634
5939	176	259
5940	176	260
5941	176	261
5942	176	262
5943	176	1337
5944	176	1338
5945	176	1339
5946	176	1340
5947	176	1341
5948	176	1015
5949	176	593
5950	176	594
5951	176	595
5952	176	596
5953	176	91
5954	176	733
5955	176	734
5956	176	735
5957	176	736
5958	176	748
5959	176	631
5960	176	632
5961	176	633
5962	176	634
5963	177	128
5964	177	192
5965	177	193
5966	177	398
5967	177	400
5968	177	666
5969	177	667
5970	177	668
5971	177	669
5972	177	670
5973	177	671
5974	177	672
5975	177	673
5976	177	674
5977	177	155
5978	177	676
5979	177	156
5980	177	42
5981	177	157
5982	177	50
5983	177	51
5984	177	54
5985	177	190
5986	177	191
5987	177	64
5988	177	65
5989	177	194
5990	177	96
5991	177	675
5992	177	91
5993	177	92
5994	177	93
5995	177	94
5996	177	95
5997	177	608
5998	177	97
5999	177	98
6000	177	1131
6001	177	1134
6002	177	1135
6003	177	124
6004	177	125
6005	177	126
6006	177	127
6007	178	654
6008	178	655
6009	178	656
6010	178	657
6011	178	658
6012	178	659
6013	178	660
6014	178	661
6015	178	278
6016	178	279
6017	178	280
6018	178	281
6019	178	282
6020	178	283
6021	178	156
6022	178	157
6023	178	286
6024	178	287
6025	178	288
6026	178	290
6027	178	155
6028	178	284
6029	178	285
6030	178	1342
6031	178	1343
6032	178	91
6033	178	92
6034	178	103
6035	178	154
6036	178	240
6037	178	117
6038	178	118
6039	178	119
6040	178	120
6041	179	654
6042	179	655
6043	179	656
6044	179	657
6045	179	658
6046	179	659
6047	179	660
6048	179	661
6049	179	154
6050	179	155
6051	179	156
6052	179	157
6053	179	168
6054	179	91
6055	179	92
6056	179	93
6057	179	94
6058	179	95
6059	179	96
6060	179	97
6061	179	998
6062	179	999
6063	180	128
6064	180	129
6065	180	130
6066	180	131
6067	180	132
6068	180	133
6069	180	134
6070	180	135
6071	180	136
6072	180	137
6073	180	138
6074	180	139
6075	180	964
6076	180	963
6077	180	920
6078	180	1177
6079	180	922
6080	180	1179
6081	180	1180
6082	180	1178
6083	180	1182
6084	180	1183
6085	180	1184
6086	180	1185
6087	180	1186
6088	180	1187
6089	180	966
6090	180	967
6091	180	1181
6092	180	968
6093	180	50
6094	180	51
6095	180	54
6096	180	969
6097	180	57
6098	180	970
6099	180	1344
6100	180	65
6101	180	962
6102	180	1347
6103	180	1348
6104	180	965
6105	180	1350
6106	180	1351
6107	180	1352
6108	180	1353
6109	180	1354
6110	180	961
6111	180	1356
6112	180	1357
6113	180	1345
6114	180	1358
6115	180	1349
6116	180	1346
6117	180	125
6118	180	1355
6119	180	124
6120	180	381
6121	180	126
6122	180	127
6123	181	533
6124	181	534
6125	181	535
6126	181	536
6127	181	537
6128	181	538
6129	181	539
6130	181	540
6131	181	541
6132	181	542
6133	181	543
6134	181	544
6135	181	545
6136	181	61
6137	181	62
6138	181	1359
6139	181	1360
6140	181	1361
6141	181	1362
6142	181	228
6143	181	229
6144	181	230
6145	181	231
6146	182	915
6147	182	916
6148	182	917
6149	182	30
6150	182	31
6151	182	33
6152	182	932
6153	182	933
6154	182	1202
6155	182	945
6156	182	946
6157	182	947
6158	182	948
6159	182	949
6160	182	950
6161	182	951
6162	182	952
6163	182	953
6164	182	954
6165	182	955
6166	182	956
6167	182	957
6168	182	958
6169	182	959
6170	182	960
6171	182	961
6172	182	962
6173	182	963
6174	182	964
6175	182	965
6176	182	966
6177	182	967
6178	182	968
6179	182	969
6180	182	970
6181	182	971
6182	182	82
6183	182	1363
6184	182	84
6185	182	87
6186	182	348
6187	182	349
6188	182	350
6189	182	351
6190	182	368
6191	182	369
6192	182	370
6193	182	371
6194	182	372
6195	182	373
6196	182	83
6197	182	1364
6198	182	381
6199	182	382
6200	183	1286
6201	183	1287
6202	183	677
6203	183	678
6204	183	679
6205	183	681
6206	183	682
6207	183	1365
6208	183	1366
6209	183	1367
6210	183	91
6211	183	361
6212	183	615
6213	183	616
6214	183	617
6215	183	362
6216	183	107
6217	183	110
6218	183	111
6219	183	112
6220	183	104
6221	183	117
6222	183	118
6223	183	119
6224	184	416
6225	184	417
6226	184	418
6227	184	419
6228	184	420
6229	184	408
6230	184	146
6231	184	406
6232	184	407
6233	184	1368
6234	184	409
6235	184	410
6236	184	411
6237	184	412
6238	184	413
6239	184	414
6240	184	415
6241	185	56
6242	185	57
6243	185	64
6244	185	65
6245	185	66
6246	185	67
6247	185	68
6248	185	69
6249	185	70
6250	185	1369
6251	185	1370
6252	185	1371
6253	185	1123
6254	185	102
6255	185	240
6256	185	241
6257	185	242
6258	185	243
6259	185	244
6260	185	245
6261	185	246
6262	185	247
6263	185	121
6264	185	122
6265	185	123
6266	186	600
6267	186	1372
6268	186	1373
6269	186	1374
6270	186	333
6271	187	1376
6272	187	1377
6273	187	1378
6274	187	1379
6275	187	1380
6276	187	1381
6277	187	1382
6278	187	1383
6279	187	1384
6280	187	1385
6281	187	1386
6282	187	146
6283	187	163
6284	187	406
6285	187	1375
6286	188	131
6287	188	536
6288	188	537
6289	188	155
6290	188	156
6291	188	157
6292	188	95
6293	188	61
6294	188	190
6295	188	191
6296	188	192
6297	188	193
6298	188	194
6299	188	97
6300	188	224
6301	188	91
6302	188	92
6303	188	93
6304	188	94
6305	188	223
6306	188	96
6307	188	609
6308	188	226
6309	188	227
6310	188	228
6311	188	229
6312	188	232
6313	188	233
6314	188	234
6315	188	1387
6316	188	1388
6317	188	1389
6318	188	1390
6319	188	766
6320	188	767
6321	189	1072
6322	189	1091
6323	189	228
6324	189	1157
6325	189	1158
6326	189	1159
6327	189	1128
6328	189	1129
6329	189	1071
6330	189	653
6331	189	1070
6332	189	589
6333	189	752
6334	189	593
6335	189	1391
6336	189	1073
6337	189	1069
6338	189	91
6339	189	590
6340	189	157
6341	189	229
6342	190	640
6343	190	641
6344	190	642
6345	190	644
6346	190	645
6347	190	646
6348	190	647
6349	190	599
6350	190	972
6351	190	973
6352	190	1392
6353	190	1393
6354	190	1015
6355	190	1176
6356	190	1119
6357	190	636
6358	190	637
6359	190	638
6360	190	639
6361	191	696
6362	191	57
6363	191	58
6364	191	60
6365	191	61
6366	191	62
6367	191	63
6368	191	64
6369	191	65
6370	191	66
6371	191	67
6372	191	68
6373	191	69
6374	191	70
6375	191	972
6376	191	462
6377	191	464
6378	191	465
6379	191	466
6380	191	467
6381	191	468
6382	191	469
6383	191	470
6384	191	472
6385	191	473
6386	191	474
6387	191	1394
6388	191	1395
6389	191	1396
6390	191	1397
6391	191	1398
6392	191	1399
6393	191	1400
6394	191	1401
6395	191	1402
6396	191	1403
6397	191	1404
6398	191	1405
6399	191	1406
6400	192	1408
6401	192	1409
6402	192	1410
6403	192	1411
6404	192	1412
6405	192	1413
6406	192	1414
6407	192	1415
6408	192	1032
6409	192	1033
6410	192	1034
6411	192	1419
6412	192	1036
6413	192	1037
6414	192	1038
6415	192	1039
6416	192	1040
6417	192	529
6418	192	530
6419	192	531
6420	192	1420
6421	192	1312
6422	192	1313
6423	192	1416
6424	192	676
6425	192	938
6426	192	941
6427	192	1160
6428	192	946
6429	192	947
6430	192	73
6431	192	1161
6432	192	1418
6433	192	62
6434	192	1417
6435	192	65
6436	192	66
6437	192	67
6438	192	68
6439	192	325
6440	192	70
6441	192	1164
6442	192	75
6443	192	76
6444	192	77
6445	192	1162
6446	192	475
6447	192	528
6448	192	228
6449	192	229
6450	192	252
6451	192	364
6452	192	61
6453	192	240
6454	192	1163
6455	192	249
6456	192	250
6457	192	124
6458	192	1407
6459	193	258
6460	193	259
6461	193	1421
6462	193	1422
6463	193	1423
6464	193	1424
6465	193	1425
6466	193	1426
6467	193	1427
6468	193	1314
6469	193	59
6470	193	60
6471	193	597
6472	193	598
6473	193	599
6474	193	734
6475	193	735
6476	193	736
6477	193	229
6478	193	748
6479	193	631
6480	193	632
6481	193	633
6482	193	634
6483	193	635
6484	194	750
6485	194	1428
6486	194	1429
6487	194	1430
6488	194	1431
6489	194	1432
6490	194	1433
6491	194	1434
6492	194	1435
6493	194	1436
6494	194	1437
6495	194	1438
6496	194	1439
6497	194	1191
6498	194	222
6499	194	55
6500	194	753
6501	194	476
6502	194	733
6503	194	734
6504	194	223
6505	194	224
6506	194	226
6507	194	227
6508	194	100
6509	194	749
6510	194	1006
6511	194	1007
6512	194	1008
6513	194	1009
6514	194	754
6515	194	124
6516	194	533
6517	195	30
6518	195	31
6519	195	1440
6520	195	1441
6521	195	1442
6522	195	1443
6523	195	941
6524	195	942
6525	195	943
6526	195	944
6527	195	945
6528	195	946
6529	195	947
6530	195	948
6531	195	949
6532	195	950
6533	195	951
6534	195	952
6535	195	953
6536	195	954
6537	195	955
6538	195	956
6539	195	957
6540	195	958
6541	195	959
6542	195	960
6543	195	961
6544	195	962
6545	195	963
6546	195	964
6547	195	965
6548	195	966
6549	195	967
6550	195	968
6551	195	348
6552	195	485
6553	195	368
6554	195	369
6555	195	370
6556	195	371
6557	195	372
6558	195	374
6559	195	375
6560	195	376
6561	195	377
6562	195	378
6563	195	379
6564	195	380
6565	195	381
6566	195	382
6567	196	1314
6568	196	1315
6569	196	1316
6570	196	1317
6571	196	1318
6572	196	258
6573	196	1422
6574	196	1423
6575	196	1421
6576	197	149
6577	197	601
6578	197	621
6579	197	402
6580	197	403
6581	197	404
6582	197	405
6583	197	150
6584	197	151
6585	197	152
6586	197	154
6587	197	156
6588	197	602
6589	197	34
6590	197	35
6591	197	1444
6592	197	37
6593	197	38
6594	197	39
6595	197	40
6596	197	476
6597	197	42
6598	197	43
6599	197	44
6600	197	45
6601	197	46
6602	197	47
6603	197	48
6604	197	49
6605	197	50
6606	197	51
6607	197	52
6608	197	53
6609	197	54
6610	197	55
6611	197	347
6612	197	444
6613	197	448
6614	197	352
6615	197	327
6616	197	331
6617	197	332
6618	197	600
6619	197	36
6620	197	346
6621	197	603
6622	197	348
6623	197	349
6624	197	222
6625	197	351
6626	197	604
6627	197	353
6628	197	354
6629	197	350
6630	197	486
6631	197	1257
6632	197	1258
6633	197	1259
6634	197	1260
6635	197	146
6636	197	622
6637	197	623
6638	197	147
6639	197	372
6640	197	41
6641	197	148
6642	197	91
6643	197	533
6644	198	34
6645	198	36
6646	198	38
6647	198	39
6648	198	40
6649	198	42
6650	198	43
6651	198	44
6652	198	47
6653	198	50
6654	198	51
6655	198	478
6656	198	54
6657	198	57
6658	198	64
6659	198	65
6660	198	326
6661	198	481
6662	198	328
6663	198	329
6664	198	330
6665	198	331
6666	198	332
6667	198	333
6668	198	1372
6669	198	1373
6670	198	1374
6671	198	479
6672	198	480
6673	198	353
6674	198	482
6675	198	483
6676	198	484
6677	198	485
6678	198	486
6679	198	327
6680	198	372
6681	198	477
6682	198	124
6683	198	125
6684	198	126
6685	199	309
6686	199	56
6687	199	57
6688	199	64
6689	199	65
6690	199	66
6691	199	67
6692	199	68
6693	199	69
6694	199	70
6695	199	466
6696	199	467
6697	199	468
6698	199	469
6699	199	470
6700	199	472
6701	199	473
6702	199	474
6703	199	1123
6704	199	102
6705	199	1394
6706	199	121
6707	199	122
6708	199	123
6709	200	258
6710	200	273
6711	200	146
6712	200	1314
6713	200	1315
6714	200	1316
6715	200	1317
6716	200	1318
6717	200	1319
6718	200	1320
6719	200	1449
6720	200	1450
6721	200	1447
6722	200	1445
6723	200	1248
6724	200	1249
6725	200	1250
6726	200	1251
6727	200	1252
6728	200	1446
6729	200	1003
6730	200	1004
6731	200	1448
6732	201	1009
6733	201	1448
6734	201	1449
6735	201	1450
6736	201	1451
6737	201	1452
6738	201	1453
6739	201	1006
6740	201	1007
6741	201	1008
6742	201	273
6743	201	734
6744	201	1431
6745	201	1432
6746	201	1433
6747	201	1434
6748	201	1435
6749	201	1436
6750	201	1437
6751	201	1438
6752	201	1439
6753	202	385
6754	202	107
6755	202	389
6756	202	391
6757	202	108
6758	202	874
6759	202	103
6760	202	113
6761	202	57
6762	202	101
6763	202	355
6764	202	356
6765	202	870
6766	202	358
6767	202	871
6768	202	872
6769	202	105
6770	202	106
6771	202	875
6772	202	876
6773	202	109
6774	202	110
6775	202	111
6776	202	112
6777	202	104
6778	202	114
6779	202	115
6780	202	873
6781	202	102
6782	203	256
6783	203	257
6784	203	877
6785	203	451
6786	203	1300
6787	203	1301
6788	203	453
6789	203	673
6790	203	674
6791	203	675
6792	203	676
6793	203	454
6794	203	934
6795	203	1454
6796	203	1455
6797	203	1456
6798	203	1457
6799	203	458
6800	203	66
6801	203	67
6802	203	68
6803	203	69
6804	203	70
6805	203	71
6806	203	72
6807	203	73
6808	203	74
6809	203	75
6810	203	76
6811	203	77
6812	203	78
6813	203	121
6814	203	122
6815	203	613
6816	203	614
6817	203	615
6818	203	616
6819	203	617
6820	203	107
6821	203	1132
6822	203	1133
6823	203	1134
6824	203	1135
6825	203	104
6826	203	249
6827	203	250
6828	203	251
6829	203	252
6830	203	253
6831	203	254
6832	203	255
6833	204	258
6834	204	259
6835	204	146
6836	204	1436
6837	204	1437
6838	204	1438
6839	204	1439
6840	204	1450
6841	204	1458
6842	204	1459
6843	204	737
6844	204	739
6845	204	1248
6846	204	1249
6847	204	1250
6848	204	1251
6849	204	1252
6850	204	741
6851	204	742
6852	204	1003
6853	204	1004
6854	204	1006
6855	204	1007
6856	204	1008
6857	204	1009
6858	204	1014
6859	204	631
6860	204	632
6861	204	633
6862	204	634
6863	204	635
6864	205	129
6865	205	130
6866	205	131
6867	205	398
6868	205	399
6869	205	400
6870	205	401
6871	205	532
6872	205	535
6873	205	536
6874	205	537
6875	205	34
6876	205	35
6877	205	36
6878	205	37
6879	205	38
6880	205	39
6881	205	40
6882	205	41
6883	205	42
6884	205	349
6885	205	351
6886	205	350
6887	205	58
6888	205	991
6889	205	608
6890	205	993
6891	205	354
6892	205	603
6893	205	604
6894	205	605
6895	205	606
6896	205	607
6897	205	352
6898	205	353
6899	205	610
6900	205	484
6901	205	992
6902	205	486
6903	205	364
6904	205	372
6905	205	373
6906	205	609
6907	206	358
6908	206	158
6909	206	1460
6910	206	1461
6911	206	1462
6912	206	1463
6913	206	57
6914	206	55
6915	206	1238
6916	206	476
6917	206	861
6918	206	862
6919	206	863
6920	206	355
6921	206	356
6922	206	101
6923	206	870
6924	206	103
6925	206	104
6926	206	105
6927	206	106
6928	206	114
6929	206	115
6930	206	124
6931	206	102
6932	207	443
6933	207	805
6934	207	600
6935	207	1075
6936	207	1464
6937	207	1465
6938	207	1466
6939	207	1467
6940	207	1468
6941	207	1469
6942	208	652
6943	208	653
6944	208	222
6945	208	663
6946	208	664
6947	208	665
6948	208	1460
6949	208	1461
6950	208	223
6951	208	61
6952	208	868
6953	208	96
6954	208	863
6955	208	1092
6956	208	865
6957	208	866
6958	208	1237
6959	208	996
6960	208	860
6961	208	861
6962	208	862
6963	208	95
6964	208	224
6965	208	97
6966	208	994
6967	208	867
6968	208	228
6969	208	869
6970	208	864
6971	208	359
6972	208	360
6973	208	225
6974	208	229
6975	208	114
6976	208	997
6977	209	64
6978	209	1032
6979	209	34
6980	209	36
6981	209	38
6982	209	39
6983	209	40
6984	209	42
6985	209	43
6986	209	44
6987	209	47
6988	209	50
6989	209	51
6990	209	54
6991	209	57
6992	209	1470
6993	209	1471
6994	209	1472
6995	209	65
6996	209	326
6997	209	481
6998	209	328
6999	209	329
7000	209	330
7001	209	477
7002	209	478
7003	209	479
7004	209	480
7005	209	353
7006	209	482
7007	209	483
7008	209	484
7009	209	485
7010	209	486
7011	209	327
7012	209	372
7013	209	124
7014	209	125
7015	209	126
7016	210	1160
7017	210	1161
7018	210	1162
7019	210	1163
7020	210	1164
7021	210	919
7022	210	676
7023	210	64
7024	210	65
7025	210	66
7026	210	67
7027	210	68
7028	210	69
7029	210	70
7030	210	76
7031	210	77
7032	210	78
7033	210	96
7034	210	97
7035	210	98
7036	210	240
7037	210	241
7038	210	242
7039	210	243
7040	210	244
7041	210	245
7042	210	246
7043	210	247
7044	210	248
7045	210	249
7046	210	250
7047	210	251
7048	210	252
7049	210	253
7050	211	258
7051	211	259
7052	211	1159
7053	211	1474
7054	211	274
7055	211	451
7056	211	276
7057	211	277
7058	211	1476
7059	211	448
7060	211	449
7061	211	450
7062	211	1475
7063	211	452
7064	211	453
7065	211	454
7066	211	455
7067	211	456
7068	211	457
7069	211	458
7070	211	459
7071	211	1473
7072	211	597
7073	211	734
7074	211	735
7075	211	736
7076	211	104
7077	211	105
7078	211	106
7079	211	107
7080	211	748
7081	211	749
7082	211	750
7083	211	751
7084	211	752
7085	211	275
7086	211	756
7087	211	757
7088	211	631
7089	211	632
7090	211	633
7091	211	634
7092	211	635
7093	212	128
7094	212	129
7095	212	130
7096	212	131
7097	212	132
7098	212	133
7099	212	134
7100	212	135
7101	212	136
7102	212	137
7103	212	138
7104	212	139
7105	212	920
7106	212	1177
7107	212	922
7108	212	1179
7109	212	1180
7110	212	1178
7111	212	1182
7112	212	1183
7113	212	1184
7114	212	1181
7115	212	50
7116	212	51
7117	212	54
7118	212	56
7119	212	57
7120	212	65
7121	212	962
7122	212	963
7123	212	964
7124	212	965
7125	212	966
7126	212	967
7127	212	968
7128	212	969
7129	212	970
7130	212	961
7131	212	971
7132	212	124
7133	212	125
7134	212	126
7135	212	127
7136	213	448
7137	213	1410
7138	213	1411
7139	213	1412
7140	213	1413
7141	213	66
7142	213	365
7143	213	528
7144	213	529
7145	213	402
7146	213	403
7147	213	533
7148	213	367
7149	213	156
7150	213	1309
7151	213	1310
7152	213	1311
7153	213	1312
7154	213	1313
7155	213	475
7156	213	1444
7157	213	939
7158	213	940
7159	213	941
7160	213	368
7161	213	946
7162	213	947
7163	213	55
7164	213	952
7165	213	190
7166	213	191
7167	213	192
7168	213	65
7169	213	194
7170	213	67
7171	213	68
7172	213	1477
7173	213	70
7174	213	73
7175	213	75
7176	213	76
7177	213	77
7178	213	79
7179	213	80
7180	213	81
7181	213	82
7182	213	83
7183	213	84
7184	213	85
7185	213	91
7186	213	476
7187	213	222
7188	213	621
7189	213	366
7190	213	623
7191	213	240
7192	213	249
7193	213	1020
7194	213	622
7195	214	773
7196	214	774
7197	214	775
7198	214	776
7199	214	777
7200	214	778
7201	214	779
7202	214	780
7203	214	781
7204	214	782
7205	214	783
7206	214	532
7207	214	533
7208	214	534
7209	214	535
7210	214	536
7211	214	537
7212	214	56
7213	214	61
7214	214	62
7215	214	610
7216	214	1123
7217	214	228
7218	214	230
7219	214	102
7220	214	231
7221	214	1016
7222	214	121
7223	214	122
7224	214	123
7225	215	1165
7226	215	1166
7227	215	1167
7228	215	1168
7229	215	1169
7230	215	1170
7231	215	1171
7232	215	1172
7233	215	1173
7234	215	30
7235	215	31
7236	215	32
7237	215	33
7238	215	1478
7239	215	956
7240	215	961
7241	215	962
7242	215	964
7243	215	966
7244	215	967
7245	215	968
7246	215	971
7247	215	351
7248	215	381
7249	215	382
7250	216	1035
7251	216	1036
7252	216	1308
7253	216	805
7254	216	1075
7255	216	1464
7256	216	1465
7257	216	1466
7258	216	443
7259	216	1468
7260	216	1469
7261	216	1470
7262	216	1471
7263	216	1483
7264	216	325
7265	216	1479
7266	216	1480
7267	216	1481
7268	216	330
7269	216	331
7270	216	332
7271	216	1482
7272	216	1467
7273	216	364
7274	216	365
7275	216	367
7276	216	368
7277	216	370
7278	216	371
7279	216	885
7280	216	886
7281	216	887
7282	217	1290
7283	217	1291
7284	217	1296
7285	217	1297
7286	217	1298
7287	217	915
7288	217	916
7289	217	917
7290	217	918
7291	217	57
7292	217	317
7293	217	64
7294	217	65
7295	217	66
7296	217	67
7297	217	68
7298	217	69
7299	217	70
7300	217	71
7301	217	72
7302	217	73
7303	217	74
7304	217	75
7305	217	1484
7306	217	1485
7307	217	78
7308	217	77
7309	217	80
7310	217	81
7311	217	82
7312	217	83
7313	217	84
7314	217	1486
7315	217	79
7316	217	98
7317	217	76
7318	217	1299
7319	218	1410
7320	218	1411
7321	218	1412
7322	218	1413
7323	218	1307
7324	218	1308
7325	218	1309
7326	218	1310
7327	218	31
7328	218	1312
7329	218	1313
7330	218	941
7331	218	946
7332	218	947
7333	218	952
7334	218	1311
7335	218	1487
7336	218	1488
7337	218	1489
7338	218	1490
7339	218	1491
7340	218	1492
7341	218	348
7342	218	368
7343	218	884
7344	218	373
7345	218	374
7346	218	381
7347	218	382
7348	219	107
7349	219	1300
7350	219	277
7351	219	1454
7352	219	1455
7353	219	448
7354	219	451
7355	219	453
7356	219	454
7357	219	458
7358	219	91
7359	219	613
7360	219	102
7361	219	614
7362	219	615
7363	219	616
7364	219	617
7365	219	619
7366	219	620
7367	219	621
7368	219	622
7369	219	623
7370	219	104
7371	219	121
7372	219	1301
7373	220	1435
7374	220	60
7375	220	599
7376	220	972
7377	220	973
7378	220	733
7379	220	59
7380	220	58
7381	220	734
7382	220	1431
7383	220	1432
7384	220	1433
7385	220	1434
7386	220	1019
7387	220	1436
7388	220	1437
7389	220	1438
7390	220	1439
7391	221	258
7392	221	259
7393	221	1286
7394	221	1287
7395	221	631
7396	221	551
7397	221	552
7398	221	553
7399	221	554
7400	221	555
7401	221	556
7402	221	557
7403	221	558
7404	221	559
7405	221	560
7406	221	561
7407	221	562
7408	221	563
7409	221	820
7410	221	565
7411	221	566
7412	221	823
7413	221	824
7414	221	564
7415	221	570
7416	221	571
7417	221	572
7418	221	573
7419	221	574
7420	221	821
7421	221	822
7422	221	567
7423	221	825
7424	221	568
7425	221	594
7426	221	595
7427	221	596
7428	221	569
7429	221	92
7430	221	733
7431	221	734
7432	221	735
7433	221	736
7434	221	827
7435	221	593
7436	221	828
7437	221	826
7438	221	748
7439	221	829
7440	221	117
7441	221	1015
7442	221	632
7443	221	633
7444	221	634
7445	222	195
7446	222	196
7447	222	197
7448	222	198
7449	222	199
7450	222	200
7451	222	201
7452	222	202
7453	222	203
7454	222	204
7455	222	205
7456	222	1101
7457	222	1104
7458	222	91
7459	222	629
7460	222	1103
7461	222	1493
7462	223	258
7463	223	259
7464	223	775
7465	223	776
7466	223	778
7467	223	139
7468	223	1165
7469	223	1166
7470	223	1167
7471	223	1168
7472	223	536
7473	223	537
7474	223	920
7475	223	921
7476	223	922
7477	223	1179
7478	223	1180
7479	223	1181
7480	223	1183
7481	223	1184
7482	223	1192
7483	223	1178
7484	223	961
7485	223	962
7486	223	964
7487	223	966
7488	223	967
7489	223	968
7490	223	971
7491	223	973
7492	223	781
7493	223	1017
7494	223	782
7495	223	1494
7496	223	599
7497	223	1496
7498	223	1497
7499	223	1498
7500	223	1499
7501	223	1018
7502	223	734
7503	223	735
7504	223	736
7505	223	610
7506	223	1495
7507	223	231
7508	223	535
7509	223	748
7510	223	1015
7511	223	631
7512	223	632
7513	223	633
7514	223	634
7515	223	1019
7516	223	597
7517	224	259
7518	224	733
7519	224	734
7520	224	735
7521	224	736
7522	224	1015
7523	224	593
7524	224	594
7525	224	595
7526	224	596
7527	224	91
7528	224	1500
7529	224	1501
7530	224	1502
7531	224	1503
7532	224	1504
7533	224	1505
7534	224	1506
7535	224	748
7536	224	631
7537	224	632
7538	224	633
7539	224	634
7540	225	131
7541	225	132
7542	225	133
7543	225	134
7544	225	135
7545	225	136
7546	225	137
7547	225	138
7548	225	139
7549	225	920
7550	225	535
7551	225	536
7552	225	537
7553	225	1178
7554	225	1179
7555	225	1180
7556	225	1181
7557	225	1182
7558	225	1183
7559	225	1184
7560	225	922
7561	225	58
7562	225	59
7563	225	60
7564	225	961
7565	225	962
7566	225	963
7567	225	964
7568	225	965
7569	225	966
7570	225	967
7571	225	968
7572	225	969
7573	225	970
7574	225	971
7575	225	972
7576	225	609
7577	225	229
7578	225	230
7579	225	231
7580	225	1177
7581	226	1283
7582	226	1284
7583	226	1285
7584	226	358
7585	226	107
7586	226	533
7587	226	534
7588	226	535
7589	226	536
7590	226	537
7591	226	538
7592	226	539
7593	226	540
7594	226	541
7595	226	542
7596	226	543
7597	226	544
7598	226	545
7599	226	546
7600	226	547
7601	226	548
7602	226	355
7603	226	359
7604	226	56
7605	226	61
7606	226	62
7607	226	616
7608	226	1123
7609	226	356
7610	226	357
7611	226	1507
7612	226	228
7613	226	229
7614	226	230
7615	226	231
7616	226	104
7617	226	361
7618	226	362
7619	226	615
7620	226	1508
7621	226	110
7622	226	111
7623	226	112
7624	226	360
7625	226	114
7626	226	617
7627	226	121
7628	226	122
7629	226	123
7630	227	132
7631	227	133
7632	227	134
7633	227	775
7634	227	776
7635	227	137
7636	227	138
7637	227	139
7638	227	140
7639	227	141
7640	227	142
7641	227	143
7642	227	535
7643	227	536
7644	227	537
7645	227	1510
7646	227	135
7647	227	136
7648	227	1509
7649	227	229
7650	227	230
7651	227	231
7652	227	1512
7653	227	1511
7654	228	227
7655	228	228
7656	228	1157
7657	228	1158
7658	228	1191
7659	228	752
7660	228	753
7661	228	754
7662	228	593
7663	228	91
7664	228	61
7665	228	229
7666	229	257
7667	229	1515
7668	229	1414
7669	229	492
7670	229	1418
7671	229	371
7672	229	1134
7673	229	493
7674	229	1518
7675	229	495
7676	229	673
7677	229	674
7678	229	675
7679	229	676
7680	229	934
7681	229	1457
7682	229	372
7683	229	1135
7684	229	941
7685	229	942
7686	229	943
7687	229	1456
7688	229	945
7689	229	946
7690	229	947
7691	229	948
7692	229	949
7693	229	950
7694	229	951
7695	229	952
7696	229	953
7697	229	954
7698	229	944
7699	229	502
7700	229	326
7701	229	327
7702	229	328
7703	229	329
7704	229	330
7705	229	331
7706	229	332
7707	229	333
7708	229	369
7709	229	1132
7710	229	1520
7711	229	370
7712	229	1133
7713	229	489
7714	229	486
7715	229	487
7716	229	488
7717	229	1513
7718	229	1514
7719	229	491
7720	229	1516
7721	229	1517
7722	229	494
7723	229	1519
7724	229	496
7725	229	497
7726	229	498
7727	229	499
7728	229	500
7729	229	501
7730	229	368
7731	229	503
7732	229	504
7733	229	505
7734	229	490
7735	230	1522
7736	230	309
7737	230	56
7738	230	57
7739	230	64
7740	230	65
7741	230	66
7742	230	68
7743	230	69
7744	230	70
7745	230	466
7746	230	467
7747	230	468
7748	230	469
7749	230	470
7750	230	472
7751	230	473
7752	230	474
7753	230	1123
7754	230	102
7755	230	1521
7756	230	1394
7757	230	1523
7758	230	1524
7759	230	121
7760	230	122
7761	230	123
7762	231	960
7763	231	961
7764	231	962
7765	231	963
7766	231	964
7767	231	965
7768	231	966
7769	231	967
7770	231	968
7771	231	969
7772	231	970
7773	231	971
7774	231	956
7775	231	955
7776	231	28
7777	231	957
7778	231	958
7779	231	959
7780	232	614
7781	232	1300
7782	232	1301
7783	232	1455
7784	232	34
7785	232	36
7786	232	454
7787	232	38
7788	232	39
7789	232	40
7790	232	42
7791	232	43
7792	232	44
7793	232	1454
7794	232	47
7795	232	50
7796	232	51
7797	232	54
7798	232	458
7799	232	65
7800	232	451
7801	232	453
7802	232	326
7803	232	327
7804	232	328
7805	232	329
7806	232	330
7807	232	331
7808	232	332
7809	232	333
7810	232	334
7811	232	477
7812	232	478
7813	232	479
7814	232	480
7815	232	353
7816	232	482
7817	232	483
7818	232	484
7819	232	485
7820	232	486
7821	232	615
7822	232	616
7823	232	617
7824	232	107
7825	232	877
7826	232	613
7827	232	104
7828	232	481
7829	232	372
7830	232	121
7831	232	122
7832	232	124
7833	232	125
7834	232	126
7835	233	44
7836	233	327
7837	233	34
7838	233	36
7839	233	805
7840	233	38
7841	233	39
7842	233	40
7843	233	809
7844	233	42
7845	233	43
7846	233	812
7847	233	813
7848	233	814
7849	233	47
7850	233	807
7851	233	50
7852	233	51
7853	233	54
7854	233	57
7855	233	1469
7856	233	64
7857	233	65
7858	233	326
7859	233	481
7860	233	328
7861	233	329
7862	233	330
7863	233	331
7864	233	332
7865	233	333
7866	233	477
7867	233	478
7868	233	479
7869	233	480
7870	233	353
7871	233	482
7872	233	483
7873	233	484
7874	233	485
7875	233	486
7876	233	487
7877	233	488
7878	233	489
7879	233	490
7880	233	491
7881	233	492
7882	233	493
7883	233	494
7884	233	372
7885	233	1525
7886	233	1526
7887	233	1527
7888	233	124
7889	233	125
7890	233	126
7891	234	1290
7892	234	1291
7893	234	1296
7894	234	1297
7895	234	1298
7896	234	1299
7897	234	444
7898	234	445
7899	234	446
7900	234	447
7901	234	320
7902	234	321
7903	234	325
7904	234	332
7905	234	331
7906	234	1484
7907	234	1485
7908	234	1486
7909	234	600
7910	234	90
7911	234	1531
7912	234	363
7913	234	1528
7914	234	1529
7915	234	1530
7916	234	319
7917	235	772
7918	235	532
7919	235	663
7920	235	664
7921	235	665
7922	235	1094
7923	235	55
7924	235	56
7925	235	59
7926	235	60
7927	235	61
7928	235	62
7929	235	1092
7930	235	1093
7931	235	198
7932	235	199
7933	235	200
7934	235	201
7935	235	202
7936	235	203
7937	235	972
7938	235	205
7939	235	206
7940	235	207
7941	235	208
7942	235	229
7943	235	101
7944	235	102
7945	235	204
7946	235	629
7947	235	630
7948	235	1532
7949	235	1533
7950	236	772
7951	236	535
7952	236	536
7953	236	537
7954	236	538
7955	236	539
7956	236	540
7957	236	541
7958	236	542
7959	236	543
7960	236	544
7961	236	546
7962	236	548
7963	236	549
7964	236	830
7965	236	831
7966	236	832
7967	236	833
7968	236	834
7969	236	835
7970	236	836
7971	236	837
7972	236	229
7973	236	230
7974	236	231
7975	237	1435
7976	237	158
7977	237	91
7978	237	1188
7979	237	92
7980	237	93
7981	237	94
7982	237	95
7983	237	190
7984	237	191
7985	237	64
7986	237	65
7987	237	859
7988	237	1244
7989	237	1245
7990	237	1246
7991	237	1247
7992	237	96
7993	237	97
7994	237	98
7995	237	1005
7996	237	1006
7997	237	1007
7998	237	1008
7999	237	1009
8000	237	1010
8001	237	1011
8002	237	1012
8003	237	1013
8004	237	759
8005	237	760
8006	237	761
8007	237	762
8008	237	1534
8009	237	1535
8010	238	1408
8011	238	1409
8012	238	1410
8013	238	1411
8014	238	1412
8015	238	1413
8016	238	1414
8017	238	1415
8018	238	1032
8019	238	1033
8020	238	1034
8021	238	1419
8022	238	1036
8023	238	1037
8024	238	1038
8025	238	1039
8026	238	1040
8027	238	529
8028	238	146
8029	238	147
8030	238	404
8031	238	533
8032	238	150
8033	238	151
8034	238	152
8035	238	154
8036	238	156
8037	238	1312
8038	238	1313
8039	238	1416
8040	238	475
8041	238	676
8042	238	405
8043	238	938
8044	238	941
8045	238	1160
8046	238	946
8047	238	947
8048	238	73
8049	238	1161
8050	238	1418
8051	238	1417
8052	238	65
8053	238	66
8054	238	67
8055	238	68
8056	238	325
8057	238	70
8058	238	1164
8059	238	75
8060	238	76
8061	238	77
8062	238	1162
8063	238	249
8064	238	1444
8065	238	91
8066	238	476
8067	238	222
8068	238	621
8069	238	528
8070	238	148
8071	238	448
8072	238	1420
8073	238	364
8074	238	402
8075	238	622
8076	238	623
8077	238	240
8078	238	403
8079	238	1163
8080	238	55
8081	238	250
8082	238	1407
8083	238	252
8084	238	149
8085	239	1536
8086	239	1537
8087	239	1538
8088	239	1286
8089	239	1287
8090	239	1301
8091	239	677
8092	239	678
8093	239	679
8094	239	681
8095	239	682
8096	239	451
8097	239	453
8098	239	454
8099	239	1365
8100	239	1366
8101	239	1367
8102	239	91
8103	239	613
8104	239	614
8105	239	615
8106	239	616
8107	239	617
8108	239	107
8109	239	104
8110	239	117
8111	239	118
8112	239	119
8113	240	385
8114	240	1539
8115	240	1540
8116	240	389
8117	240	1542
8118	240	391
8119	240	1544
8120	240	1545
8121	240	1546
8122	240	1547
8123	240	1548
8124	240	1549
8125	240	1550
8126	240	1551
8127	240	1552
8128	240	358
8129	240	103
8130	240	1541
8131	240	113
8132	240	1543
8133	240	108
8134	240	875
8135	240	355
8136	240	356
8137	240	102
8138	240	870
8139	240	871
8140	240	872
8141	240	105
8142	240	106
8143	240	107
8144	240	876
8145	240	109
8146	240	110
8147	240	111
8148	240	112
8149	240	104
8150	240	114
8151	240	115
8152	240	873
8153	240	874
8154	241	1537
8155	241	1538
8156	241	653
8157	241	1553
8158	241	451
8159	241	1300
8160	241	1301
8161	241	1454
8162	241	1455
8163	241	223
8164	241	61
8165	241	1091
8166	241	453
8167	241	454
8168	241	225
8169	241	458
8170	241	222
8171	241	95
8172	241	96
8173	241	97
8174	241	226
8175	241	228
8176	241	229
8177	241	614
8178	241	615
8179	241	616
8180	241	617
8181	241	107
8182	241	613
8183	241	104
8184	242	960
8185	242	918
8186	242	961
8187	242	1554
8188	242	1174
8189	242	28
8190	242	29
8191	242	30
8192	242	31
8193	242	32
8194	242	33
8195	242	34
8196	242	965
8197	242	353
8198	242	445
8199	242	314
8200	242	955
8201	242	956
8202	242	957
8203	242	958
8204	242	959
8205	242	320
8206	242	321
8207	242	962
8208	242	963
8209	242	964
8210	242	325
8211	242	966
8212	242	967
8213	242	968
8214	242	969
8215	242	970
8216	242	971
8217	242	90
8218	242	603
8219	242	604
8220	242	605
8221	242	991
8222	242	992
8223	242	993
8224	242	354
8225	242	484
8226	242	486
8227	242	316
8228	242	363
8229	242	317
8230	242	373
8231	242	372
8232	242	446
8233	242	447
8234	243	146
8235	243	147
8236	243	148
8237	243	405
8238	243	150
8239	243	151
8240	243	1069
8241	243	1070
8242	243	1071
8243	243	1072
8244	243	1073
8245	243	1074
8246	243	449
8247	243	450
8248	243	195
8249	243	452
8250	243	453
8251	243	454
8252	243	455
8253	243	457
8254	243	458
8255	243	459
8256	243	589
8257	243	590
8258	243	591
8259	243	592
8260	243	92
8261	243	118
8262	243	104
8263	243	105
8264	243	106
8265	243	107
8266	243	451
8267	243	117
8268	243	758
8269	243	119
8270	243	120
8271	243	149
8272	244	385
8273	244	107
8274	244	389
8275	244	391
8276	244	108
8277	244	874
8278	244	1555
8279	244	1556
8280	244	113
8281	244	57
8282	244	449
8283	244	101
8284	244	355
8285	244	356
8286	244	358
8287	244	870
8288	244	871
8289	244	872
8290	244	105
8291	244	106
8292	244	875
8293	244	876
8294	244	109
8295	244	110
8296	244	1405
8297	244	112
8298	244	104
8299	244	114
8300	244	115
8301	244	873
8302	244	1402
8303	244	1403
8304	244	1404
8305	244	102
8306	244	1406
8307	245	107
8308	245	28
8309	245	30
8310	245	31
8311	245	33
8312	245	34
8313	245	36
8314	245	38
8315	245	39
8316	245	40
8317	245	42
8318	245	43
8319	245	44
8320	245	1202
8321	245	47
8322	245	50
8323	245	51
8324	245	54
8325	245	65
8326	245	616
8327	245	477
8328	245	478
8329	245	479
8330	245	480
8331	245	481
8332	245	355
8333	245	356
8334	245	357
8335	245	358
8336	245	615
8337	245	104
8338	245	361
8339	245	362
8340	245	359
8341	245	125
8342	245	877
8343	245	110
8344	245	111
8345	245	112
8346	245	360
8347	245	114
8348	245	617
8349	245	121
8350	245	122
8351	245	124
8352	245	381
8353	245	126
8354	246	1557
8355	246	1558
8356	246	1559
8357	246	1560
8358	246	1561
8359	246	1562
8360	246	1444
8361	246	168
8362	246	181
8363	246	182
8364	246	183
8365	246	184
8366	246	185
8367	246	186
8368	246	187
8369	246	188
8370	246	189
8371	246	448
8372	246	195
8373	246	196
8374	246	197
8375	246	198
8376	246	199
8377	246	200
8378	246	201
8379	246	202
8380	246	203
8381	246	204
8382	246	205
8383	246	206
8384	246	207
8385	246	208
8386	246	209
8387	246	210
8388	246	211
8389	246	212
8390	246	213
8391	246	214
8392	246	215
8393	246	216
8394	246	91
8395	246	222
8396	246	621
8397	246	622
8398	246	623
8399	246	629
8400	247	128
8401	247	129
8402	247	130
8403	247	131
8404	247	132
8405	247	133
8406	247	134
8407	247	135
8408	247	136
8409	247	137
8410	247	138
8411	247	139
8412	247	1280
8413	247	50
8414	247	51
8415	247	54
8416	247	57
8417	247	64
8418	247	65
8419	247	1495
8420	247	1496
8421	247	1497
8422	247	1498
8423	247	126
8424	247	127
8425	247	124
8426	247	125
8427	247	1278
8428	247	1279
8429	248	736
8430	248	258
8431	248	259
8432	248	748
8433	248	599
8434	248	631
8435	248	972
8436	248	973
8437	248	1176
8438	248	1015
8439	248	632
8440	248	633
8441	248	634
8442	248	1019
8443	248	733
8444	248	734
8445	248	735
8446	249	1431
8447	249	1432
8448	249	1433
8449	249	1434
8450	249	1435
8451	249	1243
8452	249	695
8453	249	1013
8454	249	449
8455	249	450
8456	249	451
8457	249	452
8458	249	453
8459	249	454
8460	249	455
8461	249	456
8462	249	457
8463	249	458
8464	249	459
8465	249	594
8466	249	595
8467	249	596
8468	249	1242
8469	249	91
8470	249	92
8471	249	734
8472	249	104
8473	249	105
8474	249	106
8475	249	107
8476	249	1006
8477	249	1007
8478	249	1008
8479	249	1009
8480	249	1010
8481	249	1011
8482	249	1012
8483	249	117
8484	249	118
8485	249	119
8486	249	120
8487	250	34
8488	250	35
8489	250	36
8490	250	37
8491	250	38
8492	250	39
8493	250	40
8494	250	41
8495	250	43
8496	250	44
8497	250	46
8498	250	47
8499	250	48
8500	250	49
8501	250	50
8502	250	51
8503	250	52
8504	250	53
8505	250	54
8506	250	55
8507	250	57
8508	250	444
8509	250	327
8510	250	331
8511	250	332
8512	250	333
8513	250	334
8514	250	601
8515	250	602
8516	250	603
8517	250	476
8518	250	605
8519	250	604
8520	250	353
8521	250	354
8522	250	484
8523	250	486
8524	250	372
8525	250	373
8526	251	644
8527	251	645
8528	251	646
8529	251	647
8530	251	533
8531	251	534
8532	251	1563
8533	251	1564
8534	251	1565
8535	251	1566
8536	251	1567
8537	251	1568
8538	251	1569
8539	251	1570
8540	251	1571
8541	251	1572
8542	251	61
8543	251	62
8544	251	972
8545	251	973
8546	251	599
8547	251	1115
8548	251	1119
8549	251	228
8550	251	229
8551	251	1392
8552	252	530
8553	252	531
8554	252	27
8555	252	28
8556	252	29
8557	252	30
8558	252	31
8559	252	32
8560	252	33
8561	252	34
8562	252	35
8563	252	36
8564	252	1573
8565	252	1574
8566	252	39
8567	252	40
8568	252	41
8569	252	42
8570	252	43
8571	252	44
8572	252	45
8573	252	46
8574	252	47
8575	252	48
8576	252	49
8577	252	50
8578	252	51
8579	252	52
8580	252	53
8581	252	54
8582	252	61
8583	252	62
8584	252	37
8585	252	228
8586	252	229
8587	252	38
8588	253	971
8589	253	1575
8590	253	1576
8591	253	1577
8592	253	1578
8593	253	1579
8594	253	1580
8595	253	1581
8596	253	1582
8597	253	1583
8598	253	1584
8599	253	842
8600	254	1414
8601	254	530
8602	254	531
8603	254	1585
8604	254	55
8605	254	58
8606	254	59
8607	254	60
8608	254	61
8609	254	62
8610	254	65
8611	254	66
8612	254	67
8613	254	68
8614	254	69
8615	254	70
8616	254	71
8617	254	72
8618	254	73
8619	254	74
8620	254	75
8621	254	76
8622	254	77
8623	254	78
8624	254	79
8625	254	80
8626	254	81
8627	254	82
8628	254	1516
8629	254	1517
8630	255	150
8631	255	151
8632	255	152
8633	255	146
8634	255	147
8635	255	148
8636	255	405
8637	255	662
8638	255	663
8639	255	664
8640	255	665
8641	255	154
8642	255	155
8643	255	156
8644	255	157
8645	255	30
8646	255	31
8647	255	33
8648	255	34
8649	255	36
8650	255	38
8651	255	39
8652	255	40
8653	255	28
8654	255	42
8655	255	43
8656	255	44
8657	255	50
8658	255	47
8659	255	1202
8660	255	51
8661	255	54
8662	255	195
8663	255	196
8664	255	91
8665	255	477
8666	255	478
8667	255	479
8668	255	480
8669	255	481
8670	255	29
8671	255	530
8672	255	153
8673	255	121
8674	255	122
8675	255	123
8676	255	124
8677	255	125
8678	255	126
8679	255	149
8680	256	662
8681	256	151
8682	256	280
8683	256	147
8684	256	148
8685	256	149
8686	256	278
8687	256	663
8688	256	152
8689	256	196
8690	256	282
8691	256	283
8692	256	284
8693	256	285
8694	256	150
8695	256	287
8696	256	288
8697	256	290
8698	256	166
8699	256	167
8700	256	1069
8701	256	1070
8702	256	1071
8703	256	1072
8704	256	1073
8705	256	286
8706	256	1343
8707	256	279
8708	256	195
8709	256	1092
8710	256	590
8711	256	591
8712	256	592
8713	256	1237
8714	256	860
8715	256	240
8716	256	281
8717	257	146
8718	257	147
8719	257	148
8720	257	405
8721	257	150
8722	257	151
8723	257	152
8724	257	153
8725	257	154
8726	257	155
8727	257	156
8728	257	157
8729	257	158
8730	257	1586
8731	257	1587
8732	257	64
8733	257	65
8734	257	91
8735	257	92
8736	257	93
8737	257	94
8738	257	95
8739	257	96
8740	257	97
8741	257	98
8742	257	1252
8743	257	149
8744	258	258
8745	258	1314
8746	258	1315
8747	258	1316
8748	258	1317
8749	258	1318
8750	258	1319
8751	258	1320
8752	258	1321
8753	258	1322
8754	258	1323
8755	258	1324
8756	258	1325
8757	258	1326
8758	258	1327
8759	258	1328
8760	258	1329
8761	258	1330
8762	258	1331
8763	258	1332
8764	258	1333
8765	258	1334
8766	258	1335
8767	258	1336
8768	259	1590
8769	259	1444
8770	259	168
8771	259	1588
8772	259	181
8773	259	182
8774	259	183
8775	259	184
8776	259	185
8777	259	186
8778	259	1595
8779	259	1589
8780	259	448
8781	259	195
8782	259	196
8783	259	197
8784	259	198
8785	259	199
8786	259	200
8787	259	201
8788	259	202
8789	259	1591
8790	259	204
8791	259	205
8792	259	206
8793	259	207
8794	259	208
8795	259	209
8796	259	210
8797	259	203
8798	259	1593
8799	259	91
8800	259	1594
8801	259	222
8802	259	1592
8803	259	621
8804	259	623
8805	259	629
8806	260	1420
8807	260	1160
8808	260	1033
8809	260	1034
8810	260	1419
8811	260	1036
8812	260	1037
8813	260	1038
8814	260	1039
8815	260	1040
8816	260	529
8817	260	366
8818	260	278
8819	260	279
8820	260	280
8821	260	281
8822	260	282
8823	260	283
8824	260	1308
8825	260	285
8826	260	112
8827	260	1416
8828	260	676
8829	260	284
8830	260	938
8831	260	1032
8832	260	371
8833	260	73
8834	260	1161
8835	260	1596
8836	260	1597
8837	260	1598
8838	260	1599
8839	260	1417
8840	260	1163
8841	260	325
8842	260	1479
8843	260	1164
8844	260	75
8845	260	76
8846	260	77
8847	260	108
8848	260	1162
8849	260	365
8850	260	1418
8851	260	528
8852	260	355
8853	260	356
8854	260	358
8855	260	870
8856	260	1020
8857	260	106
8858	260	107
8859	260	364
8860	260	109
8861	260	110
8862	260	367
8863	260	240
8864	260	113
8865	260	114
8866	260	115
8867	260	368
8868	260	887
8869	260	249
8870	260	250
8871	260	252
8872	260	111
8873	260	1407
8874	261	107
8875	261	877
8876	261	774
8877	261	775
8878	261	776
8879	261	777
8880	261	778
8881	261	779
8882	261	781
8883	261	782
8884	261	783
8885	261	784
8886	261	145
8887	261	530
8888	261	531
8889	261	1300
8890	261	1301
8891	261	535
8892	261	536
8893	261	537
8894	261	615
8895	261	1454
8896	261	1455
8897	261	61
8898	261	62
8899	261	1600
8900	261	65
8901	261	614
8902	261	451
8903	261	453
8904	261	454
8905	261	458
8906	261	613
8907	261	228
8908	261	229
8909	261	230
8910	261	785
8911	261	616
8912	261	617
8913	261	231
8914	261	786
8915	261	104
8916	261	787
8917	261	121
8918	261	122
8919	261	124
8920	262	1568
8921	262	1569
8922	262	1570
8923	262	1571
8924	262	644
8925	262	645
8926	262	646
8927	262	647
8928	262	1119
8929	262	1563
8930	262	973
8931	262	1392
8932	262	599
8933	262	1572
8934	262	58
8935	262	1115
8936	262	1564
8937	262	1565
8938	262	1566
8939	262	1567
8940	263	1601
8941	263	258
8942	263	1315
8943	263	1316
8944	263	1317
8945	263	1318
8946	263	1319
8947	263	1320
8948	263	1321
8949	263	1314
8950	263	1603
8951	263	1602
8952	264	147
8953	264	148
8954	264	149
8955	264	150
8956	264	151
8957	264	152
8958	264	153
8959	264	154
8960	264	155
8961	264	156
8962	264	157
8963	264	158
8964	264	166
8965	264	167
8966	264	65
8967	264	91
8968	264	92
8969	264	117
8970	264	118
8971	264	119
8972	264	120
8973	264	121
8974	264	122
8975	264	123
8976	265	665
8977	265	653
8978	265	274
8979	265	275
8980	265	276
8981	265	277
8982	265	663
8983	265	664
8984	265	1604
8985	265	1093
8986	265	175
8987	265	176
8988	265	178
8989	265	179
8990	265	180
8991	265	756
8992	265	58
8993	265	60
8994	265	757
8995	265	1090
8996	265	1092
8997	265	1605
8998	265	1094
8999	265	199
9000	265	200
9001	265	201
9002	265	202
9003	265	203
9004	265	972
9005	265	205
9006	265	206
9007	265	207
9008	265	208
9009	265	209
9010	265	210
9011	265	1240
9012	265	1253
9013	265	1128
9014	265	627
9015	265	204
9016	265	629
9017	266	385
9018	266	107
9019	266	389
9020	266	391
9021	266	103
9022	266	108
9023	266	654
9024	266	655
9025	266	656
9026	266	657
9027	266	658
9028	266	659
9029	266	660
9030	266	661
9031	266	155
9032	266	156
9033	266	157
9034	266	113
9035	266	119
9036	266	91
9037	266	92
9038	266	355
9039	266	356
9040	266	358
9041	266	870
9042	266	871
9043	266	872
9044	266	873
9045	266	106
9046	266	875
9047	266	876
9048	266	109
9049	266	110
9050	266	111
9051	266	112
9052	266	104
9053	266	114
9054	266	115
9055	266	117
9056	266	118
9057	266	105
9058	266	120
9059	266	874
9060	267	157
9061	267	1069
9062	267	1070
9063	267	1071
9064	267	1072
9065	267	1073
9066	267	64
9067	267	65
9068	267	589
9069	267	590
9070	267	592
9071	267	91
9072	267	92
9073	267	93
9074	267	94
9075	267	95
9076	267	96
9077	267	97
9078	267	98
9079	267	99
9080	267	100
9081	267	1391
9082	268	1465
9083	268	1464
9084	268	1044
9085	268	1606
9086	268	1607
9087	268	600
9088	268	1041
9089	268	1042
9090	268	1043
9091	268	984
9092	268	382
9093	268	982
9094	268	343
9095	268	440
9096	268	985
9097	268	443
9098	268	381
9099	268	30
9100	268	1045
9101	269	1157
9102	269	1158
9103	269	775
9104	269	776
9105	269	777
9106	269	778
9107	269	535
9108	269	653
9109	269	536
9110	269	146
9111	269	147
9112	269	148
9113	269	405
9114	269	150
9115	269	151
9116	269	152
9117	269	537
9118	269	154
9119	269	155
9120	269	156
9121	269	157
9122	269	1090
9123	269	1091
9124	269	1608
9125	269	1609
9126	269	1610
9127	269	976
9128	269	593
9129	269	91
9130	269	224
9131	269	228
9132	269	229
9133	269	230
9134	269	231
9135	269	1128
9136	269	1129
9137	269	752
9138	269	755
9139	269	756
9140	269	153
9141	269	149
9142	270	651
9143	270	277
9144	270	615
9145	270	448
9146	270	195
9147	270	587
9148	270	588
9149	270	589
9150	270	590
9151	270	591
9152	270	592
9153	270	867
9154	270	356
9155	270	91
9156	270	860
9157	270	861
9158	270	862
9159	270	863
9160	270	864
9161	270	865
9162	270	866
9163	270	355
9164	270	868
9165	270	357
9166	270	358
9167	270	359
9168	270	616
9169	270	617
9170	270	618
9171	270	619
9172	270	620
9173	270	621
9174	270	622
9175	270	623
9176	270	104
9177	270	114
9178	271	107
9179	271	357
9180	271	358
9181	271	34
9182	271	36
9183	271	38
9184	271	39
9185	271	40
9186	271	42
9187	271	43
9188	271	44
9189	271	47
9190	271	50
9191	271	51
9192	271	54
9193	271	65
9194	271	616
9195	271	326
9196	271	327
9197	271	328
9198	271	329
9199	271	330
9200	271	331
9201	271	332
9202	271	333
9203	271	334
9204	271	355
9205	271	356
9206	271	477
9207	271	478
9208	271	479
9209	271	480
9210	271	353
9211	271	482
9212	271	483
9213	271	484
9214	271	485
9215	271	486
9216	271	615
9217	271	104
9218	271	361
9219	271	362
9220	271	359
9221	271	877
9222	271	110
9223	271	111
9224	271	112
9225	271	360
9226	271	114
9227	271	481
9228	271	372
9229	271	617
9230	271	121
9231	271	122
9232	271	124
9233	271	125
9234	271	126
9235	272	385
9236	272	1539
9237	272	1540
9238	272	1046
9239	272	1542
9240	272	391
9241	272	1544
9242	272	1545
9243	272	1546
9244	272	107
9245	272	662
9246	272	663
9247	272	664
9248	272	665
9249	272	155
9250	272	156
9251	272	157
9252	272	389
9253	272	113
9254	272	103
9255	272	1543
9256	272	108
9257	272	190
9258	272	191
9259	272	192
9260	272	193
9261	272	194
9262	272	1611
9263	272	1612
9264	272	1613
9265	272	977
9266	272	91
9267	272	92
9268	272	355
9269	272	356
9270	272	358
9271	272	870
9272	272	871
9273	272	872
9274	272	105
9275	272	106
9276	272	875
9277	272	876
9278	272	109
9279	272	110
9280	272	111
9281	272	112
9282	272	104
9283	272	114
9284	272	115
9285	272	873
9286	272	874
9287	272	1541
9288	273	258
9289	273	551
9290	273	552
9291	273	553
9292	273	554
9293	273	555
9294	273	556
9295	273	557
9296	273	558
9297	273	559
9298	273	560
9299	273	561
9300	273	562
9301	273	563
9302	273	564
9303	273	565
9304	273	566
9305	273	567
9306	273	568
9307	273	569
9308	273	1614
9309	273	1615
9310	273	1616
9311	273	1617
9312	273	1618
9313	273	1619
9314	273	1620
9315	273	1621
9316	273	1622
9317	274	772
9318	274	274
9319	274	275
9320	274	276
9321	274	277
9322	274	663
9323	274	664
9324	274	665
9325	274	756
9326	274	59
9327	274	757
9328	274	1090
9329	274	1092
9330	274	1093
9331	274	1094
9332	274	199
9333	274	200
9334	274	201
9335	274	202
9336	274	203
9337	274	972
9338	274	205
9339	274	206
9340	274	207
9341	274	208
9342	274	1240
9343	274	224
9344	274	226
9345	274	227
9346	274	229
9347	274	204
9348	274	629
9349	274	630
9350	274	532
9351	275	132
9352	275	229
9353	275	230
9354	275	231
9355	275	776
9356	275	137
9357	275	138
9358	275	139
9359	275	775
9360	275	136
9361	275	535
9362	275	536
9363	275	537
9364	275	135
9365	275	134
9366	275	133
9367	276	128
9368	276	129
9369	276	130
9370	276	131
9371	276	132
9372	276	133
9373	276	134
9374	276	135
9375	276	136
9376	276	137
9377	276	138
9378	276	139
9379	276	1280
9380	276	50
9381	276	51
9382	276	54
9383	276	65
9384	276	126
9385	276	1495
9386	276	1496
9387	276	1497
9388	276	1498
9389	276	91
9390	276	92
9391	276	127
9392	276	117
9393	276	118
9394	276	119
9395	276	120
9396	276	121
9397	276	122
9398	276	123
9399	276	125
9400	276	1278
9401	276	1279
9402	277	1157
9403	277	1158
9404	277	776
9405	277	777
9406	277	778
9407	277	779
9408	277	781
9409	277	782
9410	277	145
9411	277	786
9412	277	787
9413	277	535
9414	277	536
9415	277	537
9416	277	773
9417	277	1191
9418	277	61
9419	277	593
9420	277	91
9421	277	1175
9422	277	227
9423	277	228
9424	277	229
9425	277	230
9426	277	231
9427	277	752
9428	277	753
9429	277	754
9430	278	619
9431	278	651
9432	278	110
9433	278	111
9434	278	359
9435	278	448
9436	278	91
9437	278	615
9438	278	616
9439	278	361
9440	278	618
9441	278	107
9442	278	620
9443	278	621
9444	278	622
9445	278	623
9446	278	112
9447	278	104
9448	278	114
9449	278	617
9450	278	362
9451	278	277
9452	279	129
9453	279	130
9454	279	131
9455	279	398
9456	279	399
9457	279	400
9458	279	401
9459	279	532
9460	279	535
9461	279	536
9462	279	537
9463	279	28
9464	279	30
9465	279	31
9466	279	33
9467	279	34
9468	279	35
9469	279	36
9470	279	37
9471	279	38
9472	279	39
9473	279	40
9474	279	41
9475	279	42
9476	279	1202
9477	279	58
9478	279	159
9479	279	606
9480	279	607
9481	279	608
9482	279	609
9483	279	610
9484	279	230
9485	280	535
9486	280	536
9487	280	537
9488	280	538
9489	280	539
9490	280	540
9491	280	541
9492	280	542
9493	280	543
9494	280	544
9495	280	801
9496	280	802
9497	280	803
9498	280	804
9499	280	59
9500	280	60
9501	280	799
9502	280	800
9503	280	597
9504	280	598
9505	280	599
9506	280	734
9507	280	229
9508	280	230
9509	280	231
9510	281	258
9511	281	551
9512	281	552
9513	281	553
9514	281	554
9515	281	555
9516	281	556
9517	281	557
9518	281	558
9519	281	559
9520	281	560
9521	281	561
9522	281	562
9523	281	563
9524	281	564
9525	281	565
9526	281	566
9527	281	567
9528	281	568
9529	281	569
9530	281	570
9531	281	571
9532	281	572
9533	281	573
9534	281	1623
9535	281	1624
9536	281	1625
9537	281	1626
9538	281	1627
9539	281	1628
9540	281	1629
9541	282	1157
9542	282	1158
9543	282	147
9544	282	148
9545	282	149
9546	282	150
9547	282	151
9548	282	152
9549	282	153
9550	282	154
9551	282	155
9552	282	156
9553	282	157
9554	282	166
9555	282	167
9556	282	61
9557	282	593
9558	282	91
9559	282	227
9560	282	228
9561	282	229
9562	282	1191
9563	282	752
9564	282	753
9565	283	750
9566	283	258
9567	283	259
9568	283	748
9569	283	749
9570	283	274
9571	283	275
9572	283	276
9573	283	277
9574	283	751
9575	283	752
9576	283	753
9577	283	754
9578	283	755
9579	283	448
9580	283	597
9581	283	734
9582	283	735
9583	283	736
9584	283	355
9585	283	356
9586	283	358
9587	283	870
9588	283	103
9589	283	104
9590	283	105
9591	283	106
9592	283	107
9593	283	108
9594	283	109
9595	283	110
9596	283	111
9597	283	112
9598	283	113
9599	283	114
9600	283	115
9601	283	756
9602	283	757
9603	283	631
9604	283	632
9605	283	633
9606	283	634
9607	283	635
9608	284	1157
9609	284	1158
9610	284	775
9611	284	776
9612	284	777
9613	284	778
9614	284	654
9615	284	655
9616	284	656
9617	284	657
9618	284	658
9619	284	659
9620	284	660
9621	284	535
9622	284	536
9623	284	537
9624	284	1188
9625	284	1189
9626	284	1190
9627	284	1191
9628	284	61
9629	284	190
9630	284	191
9631	284	1608
9632	284	1609
9633	284	1610
9634	284	593
9635	284	227
9636	284	228
9637	284	229
9638	284	230
9639	284	231
9640	284	752
9641	284	753
9642	284	754
9643	284	762
9644	285	1632
9645	285	1633
9646	285	195
9647	285	196
9648	285	197
9649	285	198
9650	285	199
9651	285	200
9652	285	201
9653	285	202
9654	285	203
9655	285	204
9656	285	91
9657	285	629
9658	285	630
9659	285	1078
9660	285	1630
9661	285	1631
9662	286	1055
9663	286	1056
9664	286	1057
9665	286	1058
9666	286	1059
9667	286	1060
9668	286	1061
9669	286	1062
9670	286	1063
9671	286	1064
9672	286	1065
9673	286	57
9674	286	314
9675	286	64
9676	286	65
9677	286	66
9678	286	67
9679	286	68
9680	286	69
9681	286	70
9682	286	240
9683	286	241
9684	286	242
9685	286	243
9686	286	244
9687	287	129
9688	287	130
9689	287	131
9690	287	398
9691	287	399
9692	287	400
9693	287	401
9694	287	532
9695	287	535
9696	287	536
9697	287	537
9698	287	34
9699	287	35
9700	287	36
9701	287	37
9702	287	38
9703	287	39
9704	287	40
9705	287	41
9706	287	42
9707	287	605
9708	287	350
9709	287	58
9710	287	351
9711	287	1596
9712	287	1597
9713	287	352
9714	287	353
9715	287	354
9716	287	349
9717	287	606
9718	287	607
9719	287	608
9720	287	609
9721	287	610
9722	287	484
9723	287	364
9724	287	371
9725	287	372
9726	287	373
9727	287	887
9728	288	258
9729	288	259
9730	288	1046
9731	288	635
9732	288	662
9733	288	663
9734	288	664
9735	288	665
9736	288	56
9737	288	57
9738	288	196
9739	288	594
9740	288	595
9741	288	596
9742	288	633
9743	288	1242
9744	288	1243
9745	288	92
9746	288	634
9747	288	734
9748	288	735
9749	288	736
9750	288	1123
9751	288	748
9752	288	631
9753	288	632
9754	288	121
9755	288	122
9756	288	123
9757	289	533
9758	289	534
9759	289	535
9760	289	536
9761	289	537
9762	289	538
9763	289	539
9764	289	540
9765	289	541
9766	289	542
9767	289	799
9768	289	544
9769	289	801
9770	289	802
9771	289	803
9772	289	804
9773	289	56
9774	289	543
9775	289	61
9776	289	62
9777	289	800
9778	289	1123
9779	289	228
9780	289	229
9781	289	230
9782	289	231
9783	289	121
9784	289	122
9785	289	123
9786	289	102
9787	290	1554
9788	290	1055
9789	290	1056
9790	290	1057
9791	290	1058
9792	290	1059
9793	290	1060
9794	290	1061
9795	290	57
9796	290	64
9797	290	65
9798	290	66
9799	290	67
9800	290	68
9801	290	69
9802	290	70
9803	290	1634
9804	290	1635
9805	290	1636
9806	290	1637
9807	290	240
9808	290	241
9809	290	242
9810	290	243
9811	290	244
9812	291	51
9813	291	12
9814	291	13
9815	291	14
9816	291	15
9817	291	16
9818	291	530
9819	291	531
9820	291	20
9821	291	26
9822	291	27
9823	291	28
9824	291	29
9825	291	30
9826	291	159
9827	291	34
9828	291	36
9829	291	38
9830	291	39
9831	291	40
9832	291	42
9833	291	43
9834	291	44
9835	291	50
9836	291	47
9837	291	1202
9838	291	1203
9839	291	1204
9840	291	1205
9841	291	54
9842	291	1207
9843	291	1208
9844	291	1209
9845	291	1210
9846	291	31
9847	291	1212
9848	291	61
9849	291	62
9850	291	1215
9851	291	1216
9852	291	1217
9853	291	1218
9854	291	1219
9855	291	1220
9856	291	1206
9857	291	1221
9858	291	270
9859	291	477
9860	291	478
9861	291	479
9862	291	480
9863	291	481
9864	291	1211
9865	291	228
9866	291	229
9867	291	18
9868	291	1213
9869	291	19
9870	291	1214
9871	291	125
9872	291	126
9873	292	619
9874	292	651
9875	292	652
9876	292	653
9877	292	277
9878	292	677
9879	292	678
9880	292	679
9881	292	680
9882	292	681
9883	292	682
9884	292	223
9885	292	61
9886	292	96
9887	292	222
9888	292	95
9889	292	224
9890	292	97
9891	292	227
9892	292	228
9893	292	229
9894	292	615
9895	292	616
9896	292	617
9897	292	618
9898	292	107
9899	292	110
9900	292	111
9901	292	112
9902	292	104
9903	292	361
9904	292	362
9905	293	530
9906	293	531
9907	293	532
9908	293	34
9909	293	35
9910	293	36
9911	293	37
9912	293	38
9913	293	39
9914	293	40
9915	293	41
9916	293	42
9917	293	43
9918	293	44
9919	293	45
9920	293	46
9921	293	47
9922	293	48
9923	293	49
9924	293	50
9925	293	51
9926	293	52
9927	293	53
9928	293	54
9929	293	58
9930	293	61
9931	293	62
9932	293	347
9933	293	348
9934	293	349
9935	293	350
9936	293	351
9937	293	352
9938	293	353
9939	293	354
9940	293	228
9941	293	229
9942	293	1638
9943	293	1257
9944	293	1258
9945	293	1259
9946	293	1260
9947	294	736
9948	294	737
9949	294	739
9950	294	741
9951	294	742
9952	294	743
9953	294	744
9954	294	745
9955	294	972
9956	294	973
9957	294	59
9958	294	1458
9959	294	1459
9960	294	599
9961	294	1176
9962	294	58
9963	294	1019
9964	294	60
9965	294	733
9966	294	734
9967	294	735
9968	295	144
9969	295	229
9970	295	230
9971	295	231
9972	295	776
9973	295	777
9974	295	778
9975	295	139
9976	295	140
9977	295	141
9978	295	142
9979	295	143
9980	295	775
9981	295	535
9982	295	536
9983	295	537
9984	295	58
9985	295	60
9986	295	138
9987	295	137
9988	296	1536
9989	296	1537
9990	296	1538
9991	296	107
9992	296	651
9993	296	653
9994	296	1553
9995	296	1091
9996	296	277
9997	296	677
9998	296	678
9999	296	679
10000	296	680
10001	296	681
10002	296	682
10003	296	95
10004	296	61
10005	296	451
10006	296	453
10007	296	454
10008	296	97
10009	296	222
10010	296	223
10011	296	96
10012	296	225
10013	296	228
10014	296	229
10015	296	614
10016	296	615
10017	296	616
10018	296	617
10019	296	618
10020	296	619
10021	296	613
10022	296	104
10023	296	1301
10024	297	1157
10025	297	1158
10026	297	654
10027	297	1640
10028	297	1188
10029	297	1189
10030	297	1190
10031	297	1191
10032	297	61
10033	297	190
10034	297	191
10035	297	593
10036	297	227
10037	297	228
10038	297	229
10039	297	998
10040	297	999
10041	297	1000
10042	297	1641
10043	297	1642
10044	297	1639
10045	297	752
10046	297	753
10047	297	754
10048	297	762
10049	298	1371
10050	298	64
10051	298	65
10052	298	66
10053	298	67
10054	298	68
10055	298	69
10056	298	70
10057	298	1369
10058	298	1370
10059	298	91
10060	298	92
10061	298	93
10062	298	94
10063	298	95
10064	298	96
10065	298	97
10066	298	98
10067	298	240
10068	298	241
10069	298	242
10070	298	243
10071	298	244
10072	298	245
10073	298	246
10074	298	247
10075	299	107
10076	299	101
10077	299	102
10078	299	103
10079	299	104
10080	299	105
10081	299	106
10082	299	299
10083	299	108
10084	299	109
10085	299	110
10086	299	111
10087	299	112
10088	299	113
10089	299	114
10090	299	115
10091	299	301
10092	299	300
10093	299	57
10094	299	358
10095	299	298
10096	300	1157
10097	300	1158
10098	300	150
10099	300	151
10100	300	152
10101	300	153
10102	300	154
10103	300	155
10104	300	1189
10105	300	1190
10106	300	1191
10107	300	191
10108	300	192
10109	300	194
10110	300	1477
10111	300	593
10112	300	1120
10113	300	1121
10114	300	1122
10115	300	228
10116	300	229
10117	300	1643
10118	300	752
10119	300	753
10120	300	754
10121	300	762
10122	301	1428
10123	301	533
10124	301	1046
10125	301	1444
10126	301	476
10127	301	1073
10128	301	55
10129	301	448
10130	301	195
10131	301	587
10132	301	589
10133	301	590
10134	301	591
10135	301	592
10136	301	91
10137	301	92
10138	301	222
10139	301	100
10140	301	621
10141	301	622
10142	301	623
10143	301	124
10144	302	1290
10145	302	1291
10146	302	527
10147	302	1296
10148	302	1297
10149	302	1298
10150	302	1299
10151	302	533
10152	302	534
10153	302	1484
10154	302	475
10155	302	55
10156	302	56
10157	302	58
10158	302	61
10159	302	62
10160	302	319
10161	302	65
10162	302	66
10163	302	67
10164	302	68
10165	302	70
10166	302	73
10167	302	75
10168	302	76
10169	302	77
10170	302	1486
10171	302	1485
10172	302	80
10173	302	81
10174	302	82
10175	302	83
10176	302	84
10177	302	85
10178	302	86
10179	302	87
10180	302	88
10181	302	90
10182	302	79
10183	302	528
10184	302	1529
10185	302	228
10186	302	529
10187	302	240
10188	302	1528
10189	302	249
10190	302	1530
10191	302	1531
10192	303	1283
10193	303	1284
10194	303	1285
10195	303	1158
10196	303	535
10197	303	653
10198	303	536
10199	303	146
10200	303	147
10201	303	148
10202	303	405
10203	303	150
10204	303	151
10205	303	152
10206	303	537
10207	303	538
10208	303	155
10209	303	156
10210	303	154
10211	303	542
10212	303	543
10213	303	546
10214	303	539
10215	303	548
10216	303	1191
10217	303	540
10218	303	157
10219	303	61
10220	303	227
10221	303	593
10222	303	547
10223	303	228
10224	303	91
10225	303	1507
10226	303	1508
10227	303	229
10228	303	230
10229	303	231
10230	303	752
10231	303	753
10232	303	754
10233	303	153
10234	303	541
10235	303	149
10236	304	146
10237	304	147
10238	304	148
10239	304	405
10240	304	150
10241	304	151
10242	304	152
10243	304	153
10244	304	154
10245	304	155
10246	304	156
10247	304	157
10248	304	1055
10249	304	1056
10250	304	1057
10251	304	1058
10252	304	1059
10253	304	1060
10254	304	1061
10255	304	64
10256	304	65
10257	304	66
10258	304	67
10259	304	68
10260	304	69
10261	304	70
10262	304	98
10263	304	91
10264	304	92
10265	304	93
10266	304	94
10267	304	95
10268	304	96
10269	304	97
10270	304	1634
10271	304	1635
10272	304	1554
10273	304	240
10274	304	241
10275	304	242
10276	304	243
10277	304	244
10278	304	149
10279	305	321
10280	305	322
10281	305	527
10282	305	528
10283	305	529
10284	305	530
10285	305	323
10286	305	324
10287	305	436
10288	305	437
10289	305	438
10290	305	439
10291	305	440
10292	305	444
10293	305	61
10294	305	62
10295	305	320
10296	305	65
10297	305	66
10298	305	67
10299	305	68
10300	305	325
10301	305	70
10302	305	73
10303	305	75
10304	305	76
10305	305	77
10306	305	79
10307	305	80
10308	305	81
10309	305	82
10310	305	83
10311	305	84
10312	305	85
10313	305	86
10314	305	87
10315	305	88
10316	305	90
10317	305	475
10318	305	228
10319	305	229
10320	305	363
10321	305	1644
10322	305	240
10323	305	531
10324	305	249
10325	305	124
10326	306	654
10327	306	655
10328	306	656
10329	306	657
10330	306	658
10331	306	659
10332	306	660
10333	306	661
10334	306	155
10335	306	156
10336	306	157
10337	306	158
10338	306	64
10339	306	65
10340	306	91
10341	306	92
10342	306	93
10343	306	94
10344	306	95
10345	306	96
10346	306	97
10347	306	98
10348	307	1153
10349	307	1154
10350	307	1283
10351	307	1156
10352	307	1285
10353	307	1158
10354	307	1155
10355	307	532
10356	307	537
10357	307	535
10358	307	536
10359	307	1284
10360	307	539
10361	307	540
10362	307	542
10363	307	543
10364	307	544
10365	307	859
10366	307	1189
10367	307	1190
10368	307	1191
10369	307	683
10370	307	60
10371	307	1473
10372	307	1090
10373	307	972
10374	307	1507
10375	307	1242
10376	307	91
10377	307	610
10378	307	227
10379	307	1508
10380	307	752
10381	307	753
10382	307	754
10383	307	759
10384	307	760
10385	307	761
10386	307	762
10387	308	654
10388	308	655
10389	308	656
10390	308	657
10391	308	658
10392	308	659
10393	308	660
10394	308	661
10395	308	155
10396	308	156
10397	308	157
10398	308	449
10399	308	450
10400	308	451
10401	308	452
10402	308	453
10403	308	454
10404	308	455
10405	308	457
10406	308	458
10407	308	459
10408	308	460
10409	308	91
10410	308	92
10411	308	118
10412	308	104
10413	308	105
10414	308	106
10415	308	107
10416	308	117
10417	308	758
10418	308	119
10419	308	120
10420	309	773
10421	309	774
10422	309	775
10423	309	776
10424	309	777
10425	309	778
10426	309	779
10427	309	780
10428	309	781
10429	309	782
10430	309	783
10431	309	784
10432	309	145
10433	309	786
10434	309	787
10435	309	532
10436	309	533
10437	309	534
10438	309	535
10439	309	536
10440	309	537
10441	309	61
10442	309	62
10443	309	610
10444	309	228
10445	309	229
10446	309	230
10447	309	785
10448	309	231
10449	310	533
10450	310	534
10451	310	535
10452	310	536
10453	310	537
10454	310	538
10455	310	539
10456	310	540
10457	310	541
10458	310	542
10459	310	543
10460	310	544
10461	310	545
10462	310	546
10463	310	547
10464	310	548
10465	310	549
10466	310	1575
10467	310	1577
10468	310	1578
10469	310	1579
10470	310	1580
10471	310	61
10472	310	62
10473	310	831
10474	310	832
10475	310	833
10476	310	834
10477	310	835
10478	310	836
10479	310	837
10480	310	838
10481	310	839
10482	310	840
10483	310	841
10484	310	842
10485	310	228
10486	310	229
10487	310	230
10488	310	1645
10489	310	1646
10490	310	1647
10491	310	1648
10492	310	1649
10493	310	830
10494	311	128
10495	311	129
10496	311	130
10497	311	131
10498	311	132
10499	311	133
10500	311	134
10501	311	135
10502	311	136
10503	311	137
10504	311	138
10505	311	139
10506	311	920
10507	311	1177
10508	311	922
10509	311	50
10510	311	51
10511	311	54
10512	311	57
10513	311	64
10514	311	65
10515	311	124
10516	311	125
10517	311	126
10518	311	127
10519	312	146
10520	312	147
10521	312	148
10522	312	405
10523	312	150
10524	312	151
10525	312	152
10526	312	153
10527	312	154
10528	312	155
10529	312	156
10530	312	157
10531	312	449
10532	312	450
10533	312	451
10534	312	452
10535	312	453
10536	312	454
10537	312	455
10538	312	456
10539	312	457
10540	312	458
10541	312	459
10542	312	91
10543	312	92
10544	312	118
10545	312	104
10546	312	105
10547	312	106
10548	312	107
10549	312	117
10550	312	758
10551	312	119
10552	312	120
10553	312	149
10554	313	258
10555	313	259
10556	313	260
10557	313	261
10558	313	262
10559	313	656
10560	313	1650
10561	313	1651
10562	313	1652
10563	313	1653
10564	313	1654
10565	313	1655
10566	313	1656
10567	313	1657
10568	314	363
10569	314	518
10570	314	519
10571	314	520
10572	314	521
10573	314	523
10574	314	1165
10575	314	1166
10576	314	1167
10577	314	1168
10578	314	1169
10579	314	1170
10580	314	1171
10581	314	1172
10582	314	1173
10583	314	29
10584	314	30
10585	314	159
10586	314	32
10587	314	34
10588	314	966
10589	314	31
10590	314	956
10591	314	445
10592	314	446
10593	314	447
10594	314	320
10595	314	321
10596	314	961
10597	314	964
10598	314	325
10599	314	326
10600	314	967
10601	314	968
10602	314	971
10603	314	525
10604	314	90
10605	314	991
10606	314	962
10607	314	993
10608	314	482
10609	314	483
10610	314	484
10611	314	992
10612	314	486
10613	314	485
10614	314	353
10615	314	372
10616	314	1658
10617	314	1659
10618	314	1660
10619	315	129
10620	315	130
10621	315	131
10622	315	398
10623	315	399
10624	315	400
10625	315	401
10626	315	532
10627	315	535
10628	315	536
10629	315	537
10630	315	34
10631	315	35
10632	315	36
10633	315	37
10634	315	38
10635	315	39
10636	315	40
10637	315	42
10638	315	349
10639	315	350
10640	315	58
10641	315	351
10642	315	352
10643	315	353
10644	315	354
10645	315	605
10646	315	606
10647	315	607
10648	315	608
10649	315	609
10650	315	610
10651	315	484
10652	315	365
10653	315	366
10654	315	367
10655	315	368
10656	315	370
10657	315	371
10658	315	372
10659	315	373
10660	315	1020
10661	316	1280
10662	316	774
10663	316	776
10664	316	777
10665	316	778
10666	316	651
10667	316	781
10668	316	782
10669	316	277
10670	316	535
10671	316	536
10672	316	537
10673	316	95
10674	316	61
10675	316	1091
10676	316	1498
10677	316	222
10678	316	223
10679	316	96
10680	316	97
10681	316	226
10682	316	227
10683	316	228
10684	316	229
10685	316	230
10686	316	231
10687	316	779
10688	316	618
10689	316	619
10690	316	1277
10691	316	102
10692	316	1278
10693	316	1279
10694	317	1410
10695	317	1411
10696	317	1412
10697	317	1413
10698	317	1414
10699	317	1415
10700	317	1416
10701	317	528
10702	317	529
10703	317	530
10704	317	531
10705	317	1307
10706	317	1308
10707	317	1309
10708	317	1310
10709	317	1311
10710	317	1312
10711	317	1313
10712	317	941
10713	317	1585
10714	317	946
10715	317	947
10716	317	952
10717	317	58
10718	317	61
10719	317	62
10720	317	65
10721	317	66
10722	317	67
10723	317	68
10724	317	70
10725	317	73
10726	317	75
10727	317	76
10728	317	77
10729	317	79
10730	317	80
10731	317	81
10732	317	82
10733	317	475
10734	317	228
10735	317	229
10736	317	240
10737	317	373
10738	317	368
10739	317	249
10740	317	124
10741	318	900
10742	318	901
10743	318	533
10744	318	534
10745	318	535
10746	318	536
10747	318	537
10748	318	538
10749	318	539
10750	318	540
10751	318	541
10752	318	542
10753	318	543
10754	318	544
10755	318	545
10756	318	546
10757	318	547
10758	318	548
10759	318	549
10760	318	61
10761	318	62
10762	318	831
10763	318	832
10764	318	833
10765	318	834
10766	318	835
10767	318	836
10768	318	837
10769	318	838
10770	318	839
10771	318	840
10772	318	841
10773	318	842
10774	318	843
10775	318	844
10776	318	845
10777	318	830
10778	318	228
10779	318	229
10780	318	230
10781	318	231
10782	318	1141
10783	318	1142
10784	318	1143
10785	318	1144
10786	318	1145
10787	318	1146
10788	318	1147
10789	318	1661
10790	319	1664
10791	319	1665
10792	319	1666
10793	319	1667
10794	319	1668
10795	319	1669
10796	319	1670
10797	319	1671
10798	319	533
10799	319	534
10800	319	535
10801	319	536
10802	319	537
10803	319	538
10804	319	539
10805	319	540
10806	319	541
10807	319	542
10808	319	543
10809	319	546
10810	319	547
10811	319	548
10812	319	549
10813	319	61
10814	319	830
10815	319	831
10816	319	832
10817	319	833
10818	319	834
10819	319	835
10820	319	836
10821	319	837
10822	319	838
10823	319	228
10824	319	229
10825	319	230
10826	319	231
10827	319	62
10828	319	1662
10829	319	1663
10830	320	258
10831	320	1191
10832	320	735
10833	320	64
10834	320	65
10835	320	226
10836	320	736
10837	320	734
10838	320	223
10839	320	224
10840	320	97
10841	320	98
10842	320	99
10843	320	100
10844	320	748
10845	320	749
10846	320	750
10847	320	751
10848	320	752
10849	320	753
10850	320	754
10851	320	631
10852	320	632
10853	320	633
10854	320	634
10855	320	635
10856	321	131
10857	321	132
10858	321	133
10859	321	134
10860	321	135
10861	321	136
10862	321	137
10863	321	138
10864	321	139
10865	321	536
10866	321	532
10867	321	537
10868	321	920
10869	321	921
10870	321	922
10871	321	1179
10872	321	1180
10873	321	1181
10874	321	1183
10875	321	1184
10876	321	1192
10877	321	28
10878	321	1178
10879	321	955
10880	321	956
10881	321	957
10882	321	958
10883	321	959
10884	321	960
10885	321	961
10886	321	535
10887	321	972
10888	321	609
10889	321	610
10890	321	59
10891	321	228
10892	321	60
10893	322	158
10894	322	677
10895	322	678
10896	322	679
10897	322	680
10898	322	681
10899	322	682
10900	322	56
10901	322	57
10902	322	64
10903	322	65
10904	322	1123
10905	322	615
10906	322	616
10907	322	617
10908	322	362
10909	322	107
10910	322	110
10911	322	111
10912	322	112
10913	322	104
10914	322	361
10915	322	121
10916	322	122
10917	322	123
10918	323	258
10919	323	1571
10920	323	1672
10921	323	1673
10922	323	1674
10923	323	1675
10924	323	1676
10925	323	1570
10926	323	1677
10927	323	1105
10928	323	1106
10929	323	259
10930	323	1108
10931	323	1109
10932	323	1110
10933	323	1111
10934	323	631
10935	323	1107
10936	323	1086
10937	324	128
10938	324	129
10939	324	130
10940	324	131
10941	324	132
10942	324	133
10943	324	134
10944	324	135
10945	324	136
10946	324	137
10947	324	138
10948	324	139
10949	324	920
10950	324	1177
10951	324	922
10952	324	1179
10953	324	1180
10954	324	1178
10955	324	1182
10956	324	1183
10957	324	1184
10958	324	1441
10959	324	1442
10960	324	1443
10961	324	1181
10962	324	50
10963	324	51
10964	324	54
10965	324	57
10966	324	64
10967	324	65
10968	324	962
10969	324	963
10970	324	964
10971	324	965
10972	324	966
10973	324	967
10974	324	968
10975	324	969
10976	324	970
10977	324	961
10978	324	971
10979	324	1440
10980	324	124
10981	324	125
10982	324	126
10983	324	127
10984	325	146
10985	325	147
10986	325	148
10987	325	405
10988	325	150
10989	325	151
10990	325	152
10991	325	153
10992	325	154
10993	325	155
10994	325	156
10995	325	157
10996	325	158
10997	325	64
10998	325	65
10999	325	91
11000	325	92
11001	325	93
11002	325	94
11003	325	95
11004	325	96
11005	325	97
11006	325	98
11007	325	149
11008	326	34
11009	326	36
11010	326	38
11011	326	39
11012	326	40
11013	326	42
11014	326	43
11015	326	44
11016	326	47
11017	326	50
11018	326	51
11019	326	54
11020	326	57
11021	326	991
11022	326	64
11023	326	65
11024	326	326
11025	326	353
11026	326	477
11027	326	478
11028	326	479
11029	326	480
11030	326	993
11031	326	482
11032	326	483
11033	326	484
11034	326	485
11035	326	486
11036	326	364
11037	326	481
11038	326	372
11039	326	992
11040	326	124
11041	326	125
11042	326	126
11043	327	1281
11044	327	258
11045	327	259
11046	327	1156
11047	327	1153
11048	327	1288
11049	327	1289
11050	327	778
11051	327	1154
11052	327	398
11053	327	400
11054	327	1155
11055	327	537
11056	327	923
11057	327	540
11058	327	669
11059	327	542
11060	327	543
11061	327	539
11062	327	36
11063	327	38
11064	327	39
11065	327	40
11066	327	924
11067	327	42
11068	327	775
11069	327	777
11070	327	776
11071	327	1131
11072	327	137
11073	327	830
11074	327	667
11075	327	481
11076	327	1105
11077	327	1106
11078	327	1107
11079	327	1108
11080	327	1109
11081	327	1110
11082	327	1111
11083	327	480
11084	327	353
11085	327	482
11086	327	483
11087	327	484
11088	327	485
11089	327	1282
11090	327	668
11091	327	631
11092	328	321
11093	328	322
11094	328	527
11095	328	528
11096	328	88
11097	328	530
11098	328	323
11099	328	324
11100	328	90
11101	328	444
11102	328	61
11103	328	62
11104	328	320
11105	328	65
11106	328	66
11107	328	67
11108	328	68
11109	328	325
11110	328	70
11111	328	73
11112	328	75
11113	328	76
11114	328	77
11115	328	79
11116	328	80
11117	328	81
11118	328	82
11119	328	83
11120	328	84
11121	328	85
11122	328	86
11123	328	87
11124	328	600
11125	328	331
11126	328	475
11127	328	228
11128	328	229
11129	328	529
11130	328	363
11131	328	240
11132	328	531
11133	328	249
11134	328	124
11135	329	1678
11136	329	1679
11137	329	1680
11138	329	1681
11139	329	1682
11140	329	157
11141	329	158
11142	329	1069
11143	329	1070
11144	329	1071
11145	329	1072
11146	329	1073
11147	329	64
11148	329	65
11149	329	592
11150	329	91
11151	329	92
11152	329	93
11153	329	94
11154	329	95
11155	329	96
11156	329	97
11157	329	98
11158	329	1391
11159	330	150
11160	330	151
11161	330	152
11162	330	146
11163	330	147
11164	330	148
11165	330	149
11166	330	662
11167	330	663
11168	330	664
11169	330	665
11170	330	154
11171	330	155
11172	330	156
11173	330	157
11174	330	34
11175	330	36
11176	330	38
11177	330	39
11178	330	40
11179	330	42
11180	330	43
11181	330	44
11182	330	47
11183	330	50
11184	330	51
11185	330	54
11186	330	195
11187	330	196
11188	330	326
11189	330	481
11190	330	328
11191	330	329
11192	330	330
11193	330	331
11194	330	332
11195	330	333
11196	330	334
11197	330	91
11198	330	477
11199	330	478
11200	330	479
11201	330	480
11202	330	353
11203	330	482
11204	330	483
11205	330	484
11206	330	485
11207	330	486
11208	330	327
11209	330	530
11210	330	372
11211	330	153
11212	330	121
11213	330	122
11214	330	123
11215	330	124
11216	330	125
11217	330	126
11218	331	274
11219	331	275
11220	331	276
11221	331	277
11222	331	663
11223	331	664
11224	331	665
11225	331	1092
11226	331	1093
11227	331	1094
11228	331	199
11229	331	200
11230	331	201
11231	331	202
11232	331	203
11233	331	204
11234	331	205
11235	331	1101
11236	331	1104
11237	331	1493
11238	331	1103
11239	331	625
11240	331	629
11241	332	1157
11242	332	1158
11243	332	146
11244	332	1683
11245	332	1684
11246	332	1188
11247	332	1189
11248	332	1190
11249	332	1191
11250	332	190
11251	332	191
11252	332	1090
11253	332	593
11254	332	228
11255	332	1250
11256	332	1251
11257	332	1252
11258	332	229
11259	332	1640
11260	332	1001
11261	332	1002
11262	332	752
11263	332	753
11264	332	754
11265	332	1641
11266	332	762
11267	332	1642
11268	333	1090
11269	333	1394
11270	333	309
11271	333	58
11272	333	60
11273	333	64
11274	333	65
11275	333	66
11276	333	67
11277	333	68
11278	333	69
11279	333	70
11280	333	972
11281	333	98
11282	333	653
11283	333	466
11284	333	467
11285	333	468
11286	333	469
11287	333	470
11288	333	472
11289	333	473
11290	333	474
11291	333	223
11292	333	224
11293	333	97
11294	333	226
11295	333	1521
11296	333	1522
11297	333	1523
11298	333	1524
11299	334	1283
11300	334	1284
11301	334	1285
11302	334	533
11303	334	534
11304	334	535
11305	334	536
11306	334	537
11307	334	538
11308	334	539
11309	334	540
11310	334	541
11311	334	542
11312	334	543
11313	334	544
11314	334	545
11315	334	546
11316	334	547
11317	334	548
11318	334	61
11319	334	62
11320	334	228
11321	334	1507
11322	334	1508
11323	334	229
11324	334	230
11325	334	231
11326	335	1024
11327	335	1025
11328	335	1026
11329	335	1027
11330	335	1028
11331	335	1029
11332	335	1030
11333	335	1031
11334	335	1032
11335	335	333
11336	335	334
11337	335	1685
11338	335	1686
11339	335	600
11340	335	1022
11341	336	258
11342	336	259
11343	336	530
11344	336	531
11345	336	36
11346	336	38
11347	336	39
11348	336	40
11349	336	42
11350	336	43
11351	336	44
11352	336	47
11353	336	50
11354	336	51
11355	336	734
11356	336	54
11357	336	735
11358	336	59
11359	336	60
11360	336	61
11361	336	62
11362	336	736
11363	336	326
11364	336	481
11365	336	328
11366	336	329
11367	336	330
11368	336	331
11369	336	333
11370	336	597
11371	336	598
11372	336	599
11373	336	477
11374	336	478
11375	336	479
11376	336	480
11377	336	353
11378	336	482
11379	336	483
11380	336	484
11381	336	485
11382	336	486
11383	336	327
11384	336	748
11385	336	372
11386	336	631
11387	336	632
11388	336	633
11389	336	634
11390	336	635
11391	336	125
11392	336	126
11393	337	811
11394	337	44
11395	337	813
11396	337	530
11397	337	531
11398	337	532
11399	337	814
11400	337	819
11401	337	815
11402	337	816
11403	337	34
11404	337	35
11405	337	36
11406	337	805
11407	337	806
11408	337	807
11409	337	808
11410	337	809
11411	337	810
11412	337	43
11413	337	812
11414	337	45
11415	337	46
11416	337	47
11417	337	48
11418	337	817
11419	337	818
11420	337	51
11421	337	52
11422	337	53
11423	337	54
11424	337	372
11425	337	58
11426	337	444
11427	337	49
11428	337	327
11429	337	331
11430	337	332
11431	337	333
11432	337	600
11433	337	601
11434	337	602
11435	337	603
11436	337	604
11437	337	605
11438	337	37
11439	337	353
11440	337	354
11441	337	50
11442	337	484
11443	337	38
11444	337	486
11445	337	39
11446	337	492
11447	337	493
11448	337	40
11449	337	628
11450	337	373
11451	337	41
11452	337	42
11453	338	1687
11454	338	1688
11455	338	1689
11456	338	1690
11457	338	1691
11458	338	1444
11459	338	168
11460	338	180
11461	338	448
11462	338	195
11463	338	196
11464	338	197
11465	338	198
11466	338	199
11467	338	200
11468	338	201
11469	338	202
11470	338	203
11471	338	204
11472	338	205
11473	338	206
11474	338	207
11475	338	208
11476	338	209
11477	338	210
11478	338	91
11479	338	222
11480	338	621
11481	338	623
11482	338	629
11483	339	274
11484	339	275
11485	339	276
11486	339	277
11487	339	663
11488	339	664
11489	339	665
11490	339	1444
11491	339	168
11492	339	175
11493	339	176
11494	339	178
11495	339	179
11496	339	180
11497	339	197
11498	339	198
11499	339	199
11500	339	200
11501	339	201
11502	339	202
11503	339	203
11504	339	204
11505	339	205
11506	339	206
11507	339	207
11508	339	208
11509	339	209
11510	339	210
11511	339	1241
11512	339	222
11513	339	1253
11514	339	1254
11515	339	1255
11516	339	1256
11517	339	629
11518	340	1157
11519	340	1158
11520	340	653
11521	340	146
11522	340	147
11523	340	148
11524	340	405
11525	340	150
11526	340	151
11527	340	152
11528	340	153
11529	340	154
11530	340	155
11531	340	156
11532	340	157
11533	340	1191
11534	340	593
11535	340	91
11536	340	227
11537	340	228
11538	340	229
11539	340	752
11540	340	753
11541	340	754
11542	340	149
11543	341	57
11544	341	58
11545	341	60
11546	341	61
11547	341	62
11548	341	63
11549	341	64
11550	341	65
11551	341	66
11552	341	67
11553	341	68
11554	341	69
11555	341	70
11556	341	972
11557	341	1369
11558	341	1370
11559	341	1371
11560	341	240
11561	341	241
11562	341	242
11563	341	243
11564	341	244
11565	341	245
11566	341	246
11567	341	247
11568	342	512
11569	342	513
11570	342	514
11571	342	515
11572	342	516
11573	342	517
11574	342	149
11575	342	522
11576	342	1294
11577	342	1295
11578	342	146
11579	342	147
11580	342	148
11581	342	405
11582	342	150
11583	342	151
11584	342	152
11585	342	153
11586	342	154
11587	342	155
11588	342	156
11589	342	157
11590	342	1694
11591	342	1055
11592	342	1056
11593	342	1057
11594	342	1058
11595	342	1059
11596	342	1060
11597	342	1061
11598	342	1062
11599	342	1063
11600	342	1064
11601	342	1692
11602	342	1196
11603	342	1197
11604	342	1198
11605	342	1693
11606	342	243
11607	342	244
11608	342	314
11609	342	315
11610	342	316
11611	342	317
11612	342	318
11613	342	319
11614	342	1696
11615	342	66
11616	342	67
11617	342	68
11618	342	69
11619	342	70
11620	342	119
11621	342	92
11622	342	120
11623	342	122
11624	342	121
11625	342	91
11626	342	1695
11627	342	118
11628	342	117
11629	342	123
11630	342	242
11631	342	240
11632	342	241
11633	342	498
11634	342	499
11635	342	500
11636	342	501
11637	342	502
11638	342	503
11639	342	504
11640	342	505
11641	342	506
11642	342	507
11643	342	508
11644	342	509
11645	342	510
11646	342	511
11647	343	1697
11648	343	369
11649	343	365
11650	343	366
11651	343	367
11652	343	368
11653	343	1041
11654	343	370
11655	343	371
11656	343	372
11657	343	336
11658	343	335
11659	344	258
11660	344	259
11661	344	402
11662	344	403
11663	344	148
11664	344	149
11665	344	150
11666	344	151
11667	344	152
11668	344	154
11669	344	156
11670	344	1243
11671	344	594
11672	344	595
11673	344	596
11674	344	633
11675	344	1242
11676	344	91
11677	344	734
11678	344	735
11679	344	736
11680	344	748
11681	344	146
11682	344	147
11683	344	631
11684	344	632
11685	344	404
11686	344	634
11687	344	635
11688	345	1698
11689	345	1699
11690	345	1700
11691	345	1701
11692	345	333
11693	345	600
11694	345	487
11695	345	488
11696	345	489
11697	345	490
11698	345	491
11699	345	492
11700	345	493
11701	345	494
11702	345	495
11703	345	496
11704	345	497
11705	345	498
11706	345	499
11707	345	500
11708	345	501
11709	345	502
11710	345	503
11711	345	504
11712	345	505
11713	346	146
11714	346	147
11715	346	148
11716	346	405
11717	346	150
11718	346	151
11719	346	286
11720	346	287
11721	346	288
11722	346	290
11723	346	1069
11724	346	1070
11725	346	1071
11726	346	1072
11727	346	1073
11728	346	64
11729	346	65
11730	346	66
11731	346	67
11732	346	68
11733	346	69
11734	346	70
11735	346	589
11736	346	590
11737	346	592
11738	346	92
11739	346	93
11740	346	94
11741	346	95
11742	346	96
11743	346	97
11744	346	98
11745	346	1391
11746	346	240
11747	346	149
11748	347	805
11749	347	806
11750	347	970
11751	347	971
11752	347	335
11753	347	336
11754	347	17
11755	347	18
11756	347	1075
11757	347	1076
11758	348	1259
11759	348	486
11760	348	602
11761	348	34
11762	348	35
11763	348	36
11764	348	37
11765	348	38
11766	348	39
11767	348	40
11768	348	41
11769	348	42
11770	348	43
11771	348	44
11772	348	45
11773	348	46
11774	348	47
11775	348	48
11776	348	49
11777	348	50
11778	348	51
11779	348	52
11780	348	53
11781	348	54
11782	348	55
11783	348	56
11784	348	347
11785	348	102
11786	348	444
11787	348	327
11788	348	331
11789	348	332
11790	348	101
11791	348	1260
11792	348	600
11793	348	601
11794	348	346
11795	348	603
11796	348	604
11797	348	349
11798	348	350
11799	348	351
11800	348	352
11801	348	353
11802	348	354
11803	348	355
11804	348	356
11805	348	870
11806	348	358
11807	348	103
11808	348	104
11809	348	1257
11810	348	1258
11811	348	107
11812	348	108
11813	348	109
11814	348	110
11815	348	111
11816	348	112
11817	348	113
11818	348	114
11819	348	115
11820	348	372
11821	348	105
11822	348	106
11823	349	1044
11824	349	1045
11825	349	30
11826	349	159
11827	349	32
11828	349	33
11829	349	34
11830	349	35
11831	349	36
11832	349	1573
11833	349	1574
11834	349	1703
11835	349	1704
11836	349	41
11837	349	42
11838	349	43
11839	349	44
11840	349	45
11841	349	46
11842	349	47
11843	349	48
11844	349	49
11845	349	50
11846	349	51
11847	349	52
11848	349	53
11849	349	54
11850	349	55
11851	349	56
11852	349	57
11853	349	31
11854	349	37
11855	349	1702
11856	349	39
11857	349	40
11858	349	38
11859	350	654
11860	350	655
11861	350	656
11862	350	657
11863	350	658
11864	350	659
11865	350	660
11866	350	661
11867	350	154
11868	350	155
11869	350	156
11870	350	157
11871	350	158
11872	350	64
11873	350	65
11874	350	91
11875	350	92
11876	350	93
11877	350	94
11878	350	95
11879	350	96
11880	350	97
11881	350	98
11882	350	998
11883	350	999
11884	350	1000
11885	350	1639
11886	351	768
11887	351	769
11888	351	770
11889	351	771
11890	351	228
11891	351	229
11892	351	230
11893	351	231
11894	351	62
11895	351	61
11896	351	533
11897	351	534
11898	351	535
11899	351	536
11900	351	537
11901	351	538
11902	351	539
11903	351	540
11904	351	541
11905	351	542
11906	351	543
11907	352	146
11908	352	147
11909	352	148
11910	352	405
11911	352	150
11912	352	151
11913	352	152
11914	352	153
11915	352	154
11916	352	155
11917	352	156
11918	352	157
11919	352	158
11920	352	163
11921	352	1375
11922	352	64
11923	352	65
11924	352	1377
11925	352	1378
11926	352	91
11927	352	92
11928	352	93
11929	352	94
11930	352	95
11931	352	96
11932	352	97
11933	352	98
11934	352	1379
11935	352	1380
11936	352	1381
11937	352	1382
11938	352	1376
11939	352	149
11940	353	129
11941	353	258
11942	353	259
11943	353	398
11944	353	400
11945	353	131
11946	353	535
11947	353	536
11948	353	537
11949	353	667
11950	353	28
11951	353	669
11952	353	30
11953	353	31
11954	353	33
11955	353	34
11956	353	36
11957	353	38
11958	353	39
11959	353	40
11960	353	668
11961	353	42
11962	353	29
11963	353	1202
11964	353	59
11965	353	60
11966	353	480
11967	353	609
11968	353	597
11969	353	598
11970	353	599
11971	353	736
11972	353	734
11973	353	735
11974	353	608
11975	353	481
11976	353	229
11977	353	230
11978	353	1131
11979	353	748
11980	353	631
11981	353	632
11982	353	633
11983	353	634
11984	353	635
11985	354	1044
11986	354	1045
11987	354	30
11988	354	31
11989	354	32
11990	354	33
11991	354	34
11992	354	35
11993	354	36
11994	354	1573
11995	354	1574
11996	354	39
11997	354	1704
11998	354	1705
11999	354	42
12000	354	43
12001	354	44
12002	354	45
12003	354	46
12004	354	47
12005	354	48
12006	354	49
12007	354	50
12008	354	51
12009	354	52
12010	354	53
12011	354	54
12012	354	55
12013	354	56
12014	354	57
12015	354	37
12016	354	1702
12017	354	40
12018	354	41
12019	354	38
12020	355	1410
12021	355	1411
12022	355	1412
12023	355	1413
12024	355	528
12025	355	529
12026	355	530
12027	355	531
12028	355	532
12029	355	1307
12030	355	1308
12031	355	1309
12032	355	1310
12033	355	1311
12034	355	1312
12035	355	1313
12036	355	939
12037	355	940
12038	355	941
12039	355	368
12040	355	946
12041	355	947
12042	355	952
12043	355	58
12044	355	61
12045	355	62
12046	355	65
12047	355	66
12048	355	67
12049	355	68
12050	355	70
12051	355	73
12052	355	75
12053	355	76
12054	355	77
12055	355	79
12056	355	80
12057	355	81
12058	355	82
12059	355	83
12060	355	84
12061	355	85
12062	355	475
12063	355	228
12064	355	229
12065	355	240
12066	355	884
12067	355	373
12068	355	249
12069	355	124
12070	356	1444
12071	356	168
12072	356	448
12073	356	195
12074	356	196
12075	356	197
12076	356	198
12077	356	199
12078	356	200
12079	356	201
12080	356	202
12081	356	203
12082	356	204
12083	356	205
12084	356	206
12085	356	207
12086	356	208
12087	356	91
12088	356	222
12089	356	621
12090	356	622
12091	356	623
12092	356	629
12093	356	630
12094	356	1532
12095	356	1533
12096	357	512
12097	357	513
12098	357	514
12099	357	515
12100	357	516
12101	357	517
12102	357	333
12103	357	600
12104	357	487
12105	357	488
12106	357	489
12107	357	490
12108	357	491
12109	357	492
12110	357	493
12111	357	494
12112	357	495
12113	357	496
12114	357	497
12115	357	498
12116	357	499
12117	357	500
12118	357	501
12119	357	502
12120	357	503
12121	357	504
12122	357	505
12123	357	506
12124	357	507
12125	357	508
12126	357	509
12127	357	510
12128	357	511
12129	358	1697
12130	358	370
12131	358	369
12132	358	371
12133	358	365
12134	358	367
12135	358	368
12136	358	1041
12137	358	338
12138	358	339
12139	358	372
12140	358	336
12141	358	335
12142	358	1020
12143	359	256
12144	359	257
12145	359	137
12146	359	138
12147	359	139
12148	359	923
12149	359	924
12150	359	925
12151	359	930
12152	359	937
12153	359	938
12154	359	1707
12155	359	1708
12156	359	1709
12157	359	1710
12158	359	76
12159	359	77
12160	359	607
12161	359	1130
12162	359	249
12163	359	250
12164	359	252
12165	359	1706
12166	359	254
12167	359	255
12168	360	533
12169	360	534
12170	360	535
12171	360	536
12172	360	537
12173	360	538
12174	360	539
12175	360	540
12176	360	541
12177	360	542
12178	360	543
12179	360	544
12180	360	545
12181	360	546
12182	360	683
12183	360	684
12184	360	685
12185	360	686
12186	360	1711
12187	360	1712
12188	360	1713
12189	360	61
12190	360	62
12191	360	228
12192	360	229
12193	360	230
12194	360	231
12195	361	64
12196	361	258
12197	361	259
12198	361	598
12199	361	65
12200	361	748
12201	361	599
12202	361	66
12203	361	323
12204	361	68
12205	361	69
12206	361	57
12207	361	59
12208	361	60
12209	361	61
12210	361	62
12211	361	63
12212	361	320
12213	361	321
12214	361	322
12215	361	67
12216	361	324
12217	361	325
12218	361	70
12219	361	71
12220	361	72
12221	361	73
12222	361	74
12223	361	75
12224	361	76
12225	361	77
12226	361	78
12227	361	79
12228	361	80
12229	361	81
12230	361	82
12231	361	83
12232	361	84
12233	361	597
12234	361	86
12235	361	87
12236	361	88
12237	361	89
12238	361	90
12239	361	734
12240	361	735
12241	361	736
12242	361	363
12243	361	364
12244	361	631
12245	361	632
12246	361	633
12247	361	634
12248	361	635
12249	361	85
12250	362	931
12251	362	932
12252	362	933
12253	362	56
12254	362	57
12255	362	64
12256	362	65
12257	362	66
12258	362	67
12259	362	68
12260	362	69
12261	362	70
12262	362	71
12263	362	72
12264	362	73
12265	362	74
12266	362	75
12267	362	76
12268	362	77
12269	362	78
12270	362	79
12271	362	80
12272	362	81
12273	362	1123
12274	362	102
12275	362	121
12276	362	122
12277	362	123
12278	363	1728
12279	363	193
12280	363	192
12281	363	194
12282	363	155
12283	363	156
12284	363	157
12285	363	1394
12286	363	1714
12287	363	1715
12288	363	1716
12289	363	1717
12290	363	1718
12291	363	311
12292	363	1720
12293	363	1721
12294	363	1722
12295	363	1723
12296	363	1724
12297	363	1725
12298	363	190
12299	363	191
12300	363	64
12301	363	65
12302	363	66
12303	363	67
12304	363	68
12305	363	69
12306	363	70
12307	363	713
12308	363	714
12309	363	1719
12310	363	716
12311	363	717
12312	363	466
12313	363	467
12314	363	468
12315	363	469
12316	363	470
12317	363	472
12318	363	473
12319	363	474
12320	363	91
12321	363	92
12322	363	93
12323	363	94
12324	363	95
12325	363	96
12326	363	97
12327	363	98
12328	363	715
12329	363	624
12330	363	1521
12331	363	1522
12332	363	1523
12333	363	1524
12334	363	1726
12335	363	1727
12336	364	1290
12337	364	1291
12338	364	1296
12339	364	1297
12340	364	1554
12341	364	1299
12342	364	1055
12343	364	1056
12344	364	1057
12345	364	1058
12346	364	1059
12347	364	1060
12348	364	1061
12349	364	57
12350	364	58
12351	364	59
12352	364	60
12353	364	61
12354	364	62
12355	364	63
12356	364	64
12357	364	65
12358	364	66
12359	364	67
12360	364	68
12361	364	69
12362	364	70
12363	364	1484
12364	364	1485
12365	364	1486
12366	364	1634
12367	364	1635
12368	364	1636
12369	364	316
12370	364	1298
12371	364	317
12372	364	240
12373	364	241
12374	364	242
12375	364	243
12376	364	244
12377	364	315
12378	365	102
12379	365	625
12380	365	1066
12381	365	1067
12382	365	1068
12383	365	881
12384	365	274
12385	365	275
12386	365	276
12387	365	277
12388	365	279
12389	365	280
12390	365	121
12391	365	282
12392	365	281
12393	366	258
12394	366	259
12395	366	1421
12396	366	1422
12397	366	1423
12398	366	1314
12399	366	1315
12400	366	1316
12401	366	1317
12402	366	1318
12403	366	1015
12404	366	593
12405	366	594
12406	366	595
12407	366	596
12408	366	91
12409	366	733
12410	366	734
12411	366	735
12412	366	736
12413	366	748
12414	366	631
12415	366	632
12416	366	633
12417	366	634
12418	367	663
12419	367	664
12420	367	665
12421	367	158
12422	367	1093
12423	367	1094
12424	367	175
12425	367	176
12426	367	178
12427	367	179
12428	367	180
12429	367	55
12430	367	56
12431	367	1092
12432	367	1605
12433	367	198
12434	367	199
12435	367	200
12436	367	201
12437	367	202
12438	367	203
12439	367	204
12440	367	205
12441	367	206
12442	367	207
12443	367	208
12444	367	209
12445	367	210
12446	367	101
12447	367	1253
12448	367	102
12449	367	627
12450	367	629
12451	367	124
12452	368	619
12453	368	651
12454	368	652
12455	368	653
12456	368	277
12457	368	95
12458	368	61
12459	368	96
12460	368	222
12461	368	223
12462	368	224
12463	368	97
12464	368	226
12465	368	227
12466	368	228
12467	368	229
12468	368	615
12469	368	616
12470	368	361
12471	368	362
12472	368	107
12473	368	110
12474	368	111
12475	368	104
12476	368	617
12477	368	618
12478	369	256
12479	369	64
12480	369	65
12481	369	66
12482	369	67
12483	369	68
12484	369	69
12485	369	70
12486	369	76
12487	369	77
12488	369	78
12489	369	91
12490	369	92
12491	369	93
12492	369	94
12493	369	95
12494	369	96
12495	369	97
12496	369	98
12497	369	240
12498	369	241
12499	369	242
12500	369	243
12501	369	244
12502	369	245
12503	369	246
12504	369	247
12505	369	248
12506	369	249
12507	369	250
12508	369	251
12509	369	252
12510	369	253
12511	369	254
12512	369	255
12513	370	532
12514	370	533
12515	370	534
12516	370	1176
12517	370	1566
12518	370	1567
12519	370	1568
12520	370	1569
12521	370	1570
12522	370	1571
12523	370	1572
12524	370	61
12525	370	62
12526	370	1729
12527	370	1730
12528	370	1731
12529	370	1732
12530	370	1733
12531	370	1734
12532	370	972
12533	370	1115
12534	370	230
12535	370	231
12536	370	232
12537	370	238
12538	371	1431
12539	371	1432
12540	371	1433
12541	371	1434
12542	371	1435
12543	371	1436
12544	371	1437
12545	371	1438
12546	371	1439
12547	371	1450
12548	371	1245
12549	371	1246
12550	371	58
12551	371	59
12552	371	60
12553	371	972
12554	371	973
12555	371	599
12556	371	733
12557	371	734
12558	371	1247
12559	371	1006
12560	371	1007
12561	371	1008
12562	371	1009
12563	371	1019
12564	372	394
12565	372	395
12566	372	396
12567	372	397
12568	372	670
12569	372	671
12570	372	672
12571	372	673
12572	372	674
12573	372	676
12574	372	934
12575	372	56
12576	372	57
12577	372	927
12578	372	64
12579	372	65
12580	372	66
12581	372	67
12582	372	68
12583	372	69
12584	372	70
12585	372	1735
12586	372	1736
12587	372	1737
12588	372	1738
12589	372	1739
12590	372	1740
12591	372	1123
12592	372	102
12593	372	1133
12594	372	1134
12595	372	1135
12596	372	121
12597	372	122
12598	372	123
12599	373	207
12600	373	91
12601	373	1444
12602	373	168
12603	373	181
12604	373	182
12605	373	183
12606	373	184
12607	373	185
12608	373	186
12609	373	187
12610	373	188
12611	373	189
12612	373	448
12613	373	195
12614	373	196
12615	373	197
12616	373	198
12617	373	199
12618	373	200
12619	373	201
12620	373	202
12621	373	203
12622	373	204
12623	373	1741
12624	373	206
12625	373	205
12626	373	208
12627	373	209
12628	373	210
12629	373	211
12630	373	212
12631	373	1742
12632	373	214
12633	373	215
12634	373	216
12635	373	217
12636	373	218
12637	373	219
12638	373	220
12639	373	221
12640	373	222
12641	373	1744
12642	373	621
12643	373	622
12644	373	623
12645	373	629
12646	373	1743
12647	374	67
12648	374	1300
12649	374	1301
12650	374	69
12651	374	70
12652	374	1454
12653	374	1455
12654	374	304
12655	374	56
12656	374	57
12657	374	1745
12658	374	64
12659	374	65
12660	374	66
12661	374	451
12662	374	68
12663	374	453
12664	374	454
12665	374	458
12666	374	462
12667	374	464
12668	374	465
12669	374	466
12670	374	467
12671	374	468
12672	374	469
12673	374	470
12674	374	472
12675	374	473
12676	374	474
12677	374	1123
12678	374	613
12679	374	614
12680	374	615
12681	374	616
12682	374	617
12683	374	107
12684	374	104
12685	374	1394
12686	374	1395
12687	374	1396
12688	374	121
12689	374	122
12690	374	123
12691	375	654
12692	375	655
12693	375	656
12694	375	657
12695	375	658
12696	375	659
12697	375	660
12698	375	661
12699	375	155
12700	375	156
12701	375	157
12702	375	449
12703	375	450
12704	375	451
12705	375	452
12706	375	453
12707	375	454
12708	375	455
12709	375	457
12710	375	458
12711	375	459
12712	375	91
12713	375	92
12714	375	118
12715	375	104
12716	375	105
12717	375	106
12718	375	107
12719	375	117
12720	375	758
12721	375	119
12722	375	120
\.


--
-- Name: routes_route_stops_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bususer
--

SELECT pg_catalog.setval('routes_route_stops_id_seq', 12722, true);


--
-- Data for Name: routes_stop; Type: TABLE DATA; Schema: public; Owner: bususer
--

COPY routes_stop (id, name, latitude, longitude) FROM stdin;
1527	Kudba kruti Manmohan	18.5204303	73.8567437
6	Chorex Company	18.5204303	73.8567437
7	I B P Pump	18.5343	73.839673
9	Kharabwadi	18.7642867	73.8360251
10	Ranubai Mala	18.5204303	73.8567437
12	Talegaon Phata ST Stand	18.5204303	73.8567437
13	Petrol Pump	18.414299	73.762883
14	Alandi Phata	18.731698	73.856187
16	Gaikwad wasti 	18.53273	73.91821
18	Hood company	18.5204303	73.8567437
19	Moshi goan	18.6765	73.849568
20	Chaudhari dhaba	18.5204303	73.8567437
21	Bankar Vasti Moshi	18.671378	73.848265
23	Juna Jakat naka	18.662099	73.848475
24	Tan Protex	18.5204303	73.8567437
26	Panjarpol	18.6422569	73.8512792
27	Sadgurunagar PCMT depot 	18.632208	73.849931
29	Century Enka Colony 	18.6148921	73.8472361
30	Landewadi	18.6220387	73.840436
32	MIDC Bhosari	18.6388707	73.7779386
33	Bhosari police station	18.617412	73.825929
35	Kasarwadi	18.6060873	73.8227917
36	Forbes marshal stop	18.601114	73.826804
38	Sandwik	18.593351	73.829863
39	Fugewadi	18.586909	73.833146
40	Dapodi	18.583816	73.8316141
42	Bopodi	18.5667907	73.8345548
43	Khadaki	18.5667	73.8667
45	Petrol Pump Khadki	18.5667	73.8667
46	Khadaki church stop	18.558521	73.845195
47	Khadaki post office	18.555834	73.847379
49	Krutrim Reshim Paidas Kendra	18.549212	73.8509
51	Mariaai Gate Old Mumbai Pune Road	18.542177	73.851737
52	Bajaj showroom	18.539814	73.850922
53	Labor office	18.534854	73.851396
54	Patil Estate	18.4410707	73.8237039
56	Modern Highschool	18.524763	73.849404
57	PMC	18.522643	73.852949
58	Pune Station Depot	18.527378	73.87636
60	Collector kacheri	18.527969	73.874991
61	Ambedkar bhavan	18.5253	73.867981
63	Kumbhar wada	18.536592	73.9425951
64	Shivaji putala pmc	18.526617	73.852559
66	Masoba gate	18.532468	73.842384
67	Pumping station	18.5343	73.839673
68	Pune central	18.534776	73.838998
70	Rangehills Corner	18.5516908	73.8415604
71	Rajbhavan	18.5447449	73.8253649
73	Kasturba vasahat	18.5204303	73.8567437
75	Bremen chauk	18.559766	73.815308
76	Body gate	18.563226	73.813331
77	Aundh gaon	18.5639463	73.8102927
79	Aundh chest hospital	18.575085	73.805075
80	Aundh post office	18.5765991	73.8044182
82	Rakshak chauk	18.5817878	73.7976203
83	Military Stores	18.5169994	73.8580788
85	Jagtap Dairy 	18.5751779	73.7924355
86	Kaspate Vasti 	18.5927957	73.7698492
88	16 Number 	18.6216754	73.6927378
89	Laxman nagar	18.5687742	73.7709523
91	Swargate	18.5004866	73.8668996
92	Sarasbag	18.503197	73.853717
94	Shanipar	18.512798	73.852933
95	A B Chowk	18.5111468	73.8371508
97	Shaniwar wada	18.5159203	73.8487982
98	PMC mangala	18.523954	73.85418
99	Shivaji nagar ST Stand	18.532448	73.849456
101	Balgandharv sambhaji par	18.5204303	73.8567437
103	Deccan Corner Sambhaji Pul Corner	18.513793	73.841438
104	Garware college	18.512356	73.838561
106	Nal Stop	18.509019	73.831963
107	SNDT college	18.5089382	73.8275705
109	Maruti mandir karve road	18.503754	73.820291
110	Karve putala	18.502256	73.816181
111	Kothrud Stand	18.499756	73.813639
113	Wadache Jhad Bhairavnath Mandir	18.5204303	73.8567437
114	Karvenagar	18.4903696	73.8169099
115	Warje Jakatnaka	18.484655	73.810415
117	Madiwale colony	18.506133	73.85275
118	S P college	18.5068061	73.8485225
120	Sahitya parishad peru gate	18.5204303	73.8567437
121	Goodluck Chowk 	18.518055	73.84146
122	F C College	18.516436	73.773213
124	Lokmangal 	18.530071	73.850827
125	Labour office	18.534854	73.851396
127	Mula road bhaiyawadi	18.552049	73.856389
128	Pachawadw	18.5204303	73.8567437
129	Holkar Water Supply 	18.5204303	73.8567437
131	Deccan college 	18.548279	73.871937
132	Ambedkar Society	18.552213	73.87295
133	RTO New	18.5204303	73.8567437
135	MES Water Works	18.5204303	73.8567437
137	Shantinagar	18.6234735	73.8444793
138	Sathe Biscuit company	18.570635	73.879023
139	Vishrantwadi	18.5784956	73.8819676
141	Bhairavnagar 	18.5821537	73.886745
142	Gokul Nagar 	18.5877162	73.8885824
144	Dhanori Gaon	18.596693	73.897405
145	Lohoan	18.5204303	73.8567437
147	Katraj dairy Sarpodyan	18.454864	73.858576
148	Bharti vidyapeeth gate	18.542963	73.828643
150	Balaji nagar	18.4646316	73.8602841
151	Vishweshwar Bank KK market	18.468843	73.857517
152	Padmavati corner	18.5048936	73.862586
4	Mhalunge Phata	18.5381935	73.7812713
1529	Sant Tukaram Mangal Karyalaya	18.5119016	73.8545505
1534	Mount Convent School	18.4821147	73.8874799
156	Panchami hotel	18.49174	73.857581
157	Laxmi Narayan Theature	18.5204303	73.8567437
159	Bhosari Police Station 	18.617412	73.825929
160	Ambegaon	19.128151	73.697387
162	Ramnagar Katraj	18.4585107	73.8452604
163	Dattanagar Katraj	18.4460037	73.8353326
165	Ganpati mandir	18.562025	73.836551
166	PICT Bharati vidyapeeth	18.5138275	73.819667
167	Rajaram Gas agency	18.454604	73.853738
169	Bhumkar Nagar	18.449303	73.834354
170	Narhe Gaon	18.4534504	73.8227917
172	Ajinkyatara	18.4624953	73.832446
173	Parikh complex	18.5204303	73.8567437
175	Poultry farm singhgad road	18.5204303	73.8567437
176	Raykar wasti	18.457172	73.811772
177	Dhayari Gaon	18.447537	73.810282
179	Dangat wasti	18.457172	73.811772
181	Lagad wasti	18.5204303	73.8567437
182	Mate Pat Sasa company	18.5204303	73.8567437
183	Nanded Phata	18.454771	73.796711
185	CWPRS gate no.1	18.5204303	73.8567437
186	Nandoshi Phata	18.5204303	73.8567437
188	Khadakwasla Gaon	18.4534504	73.8227917
190	Marketyard	18.4868701	73.8676347
191	Wakhar Mahamandal Marketyard	18.5204303	73.8567437
192	Godown Marketyard	18.489475	73.869728
194	Mafco Company	18.489535	73.86202
195	Parvati payatha	18.499338	73.852616
196	Dandekar pul	18.5010461	73.8485225
198	Jal Shuddhikarn Kendra Sinhgad Road	18.497971	73.84092
199	Ganesh mala	18.496415	73.838769
200	Vitbhatti Sinhgad Road	18.492252	73.834255
202	Jaydeo nagar 	18.489225	73.830747
203	Vitthalwadi Mandir Hingne	18.5204303	73.8567437
204	Hingne rasta	18.4833994	73.8351041
206	Manik Bag	18.473263	73.821563
207	Indian hum company	18.5204303	73.8567437
209	Patil colony	18.5106215	73.8525331
210	Dhayari phata	18.4484912	73.8154394
212	IAT Gate Girinagar	18.425764	73.766311
213	Sant Dharmaji Samadhi	18.5204303	73.8567437
214	Gorhe Budruk	18.421399	73.756846
216	Donje Goan Phata	18.5204303	73.8567437
217	Paygude wasti Donje	18.5204303	73.8567437
219	Gorhe khurd	18.4083034	73.7507276
220	Malatwadi	18.5204303	73.8567437
221	Khanapur	18.4002217	73.7323398
223	Lalmahal	18.5187204	73.8566546
224	RCM 	18.5194658	73.8605597
226	Apolo Talkies	18.519584	73.865154
227	KEM hospital	18.520198	73.86766
229	Pune station	18.5287538	73.8731475
230	Ruby hall	18.533653	73.877391
232	Blue Diamond hotel	18.5204303	73.8567437
233	Saint Meera college	18.536501	73.885682
235	Annadhanya Godam	18.5204303	73.8567437
236	Bungalow no 105	18.4866252	73.9503603
238	Kasturba School north lane	18.5399302	73.8908792
239	Kalyani nagar	18.5481	73.9033
241	chavan nagar university road	18.544424	73.824065
242	Sakal nagar	18.5471748	73.8202184
243	Sindh colony	18.548815	73.813016
245	Sanewadi	18.5549196	73.805881
247	ITI parihar Chauk	18.560268	73.809202
248	Police workshop	18.56133	73.810066
249	Sangvi Phata	18.572723	73.807171
250	Nurses Quarters	18.57507	73.808405
252	Navi Sangvi	18.5811384	73.8155658
253	Panyachi taki sangvi	18.575547	73.815303
255	Anand nagar	18.5067346	73.8147042
256	Sangvi goan	18.5639463	73.8102927
258	Hadapsar gadital	18.5005778	73.9425951
259	Hadapsar gaon	18.501672	73.93307
261	Kanifnath Soc.	18.4954474	73.9322163
262	Sasane Nagar	18.4945814	73.9315733
264	sayadnagar	18.4864683	73.9293689
265	Hari Hareshwar mandir	18.5204303	73.8567437
266	Wadkar mala 	18.5204303	73.8567437
267	Tarawade wasti	18.5204303	73.8567437
269	Mohammadwadi shala	18.5204303	73.8567437
270	Kadwasti	18.5894857	73.895824
272	Punekar wasti	18.5204303	73.8567437
273	Undrigaon 	18.450695	73.915601
275	Gokhale hall	18.51415	73.849754
276	Vijay Talkies	18.513845	73.846962
277	Alka talkies	18.512564	73.843912
279	Bhandarkar Institute	18.519612	73.830343
280	Symbiosis college	18.5650686	73.9104599
282	Vetal Maharaj chauk	18.5204303	73.8567437
284	ICC bus stop	18.541013	73.830676
285	Chatushringi payatha	18.5204303	73.8567437
286	Gents hostel university	18.5204303	73.8567437
287	Vidyapeeth Press	18.5204303	73.8567437
289	Sevak Vasaha	18.5204303	73.8567437
290	Pune University Main Building	18.554298	73.824577
292	Trimurti garden	18.4661727	73.8172355
293	Ambegaon Highway	18.4472598	73.8588438
294	Shubham hotel	18.5204303	73.8567437
296	Wadgaon bu. Highway	18.481564	73.857141
297	Daulatnagar Patilbag	18.5204303	73.8567437
299	Popular Nagar Cipla cancer care entre	18.5204303	73.8567437
300	Atulnagar gate	18.4871314	73.7960866
1537	Vivekanand Society	18.5780193	73.8106603
1540	Khadakwasla Dharan Stores	18.5204303	73.8567437
303	Raviraj residency	18.5204303	73.8567437
305	Paranjpe scheme	18.5138284	73.8335899
307	DSK Toyota Showroom	18.5204303	73.8567437
308	HRA relance	18.5204303	73.8567437
309	Sutarwadi	18.5398982	73.7823508
311	Soos phata	18.5381935	73.7812713
314	Mhalunge corner	18.5204303	73.8567437
316	Mutha Pool Balewadi	18.5825868	73.7683784
317	Wakad Highway	18.592969	73.756649
318	BU Bhandari Showroom	18.5204303	73.8567437
319	Wakad Police Chowky	18.586534	73.736266
321	Dattanagar Chinchwad	18.617458	73.873979
322	Birla Hospital	18.62579	73.774995
324	Walhekarwadi phata	18.5204303	73.8567437
325	Chafekar chauk	18.629408	73.781232
326	Chinchwad station	18.656994	73.765219
328	Kalbhor nagar bus stop	18.646916	73.788385
329	Rustan company	18.648278	73.7872
331	Bajaj auto	18.653783	73.781962
332	Pradhikaran Chowk	18.65873	73.777516
334	Bhakti shakti depot	18.6653249	73.7706765
335	Chikhali	18.6804895	73.800734
337	Jadhav wadi phata	18.5204303	73.8567437
338	Jadhav wadi	18.680733	73.8198508
339	Ahire wadi	18.549333	73.8239307
341	Agarwal Container	18.5204303	73.8567437
342	New Life	18.5020513	73.8723895
344	Yashwant nagar corner	18.5402962	73.8338086
345	Swapna nagari	18.6352353	73.8195956
347	Zero Boys	18.50527	73.8746667
348	Nehrunagar corner	18.628963	73.819338
350	Mahesh nagar	18.6269427	73.8204022
351	YCM	18.620096	73.817734
353	Vallabhnagar	18.615558	73.815146
355	Ganpati matha	18.475692	73.795743
356	Dnanesh society	18.479579	73.7973269
357	Warje malwadi	18.474689	73.8022046
359	Warje jakatnaka	18.484655	73.810415
360	Wadache jhad	18.491529	73.815159
362	Paud phata dashbhuja mandir	18.5204303	73.8567437
363	Thergaon phata 	18.617356	73.767218
365	Pimprigaon	18.6089687	73.8025493
366	Ashok Talkies	18.614905	73.804088
367	Jaihind School	18.6174079	73.8010831
369	Karachi chauk	18.5204303	73.8567437
370	Lalmandir	18.534269	73.928313
372	Finolex	18.629379	73.802574
374	Nehrunagar	18.6329328	73.8209536
375	Jyoti school	18.6301835	73.8236171
377	Abhi Chemicals	18.5204303	73.8567437
378	Jayanand khira	18.5204303	73.8567437
379	Idrayani nagar corner	18.540509	73.830538
381	Gavane Vasti 	18.62052	73.849723
382	PCMT chauk	18.620129	73.85043
384	Kondhava dhavade	18.4574675	73.7698492
385	Bhimnagar	18.6691702	73.8521981
386	Uttamanagar	18.460409	73.772238
388	Ingale colony	18.465671	73.777036
389	Deshmukhwadi	18.469156	73.786778
391	Dudhane wasti	18.471332	73.790372
392	HM Hostel	18.5204303	73.8567437
394	LIC Colony Khadki	18.562315	73.833407
395	40 aundh road	18.562405	73.833546
397	Bopodi Gaon	18.5639463	73.8102927
398	Gangaram park	18.5204303	73.8567437
399	Kirloskar oil engine manaji bag	18.569811	73.841791
401	Khadki Bazar	18.5667	73.8667
402	Lakshi narayan theature	18.5204303	73.8567437
404	Natu Bag	18.481564	73.857141
405	More bag	18.4517392	73.8566485
406	Gujarwadi Phata	18.5204303	73.8567437
408	Mangdewadi Phata	18.434486	73.85976
409	Bhilarewadi	18.4222218	73.8610191
411	Stage kramank 7	18.417774	73.856749
412	Waghjai Mandir	18.412689	73.858267
413	Ghat utaar Walan	18.400988	73.857102
415	Adlar Engineering	18.5204303	73.8567437
417	Velugoan Phata	18.5204303	73.8567437
418	Grand Hotel	18.5204303	73.8567437
420	Kodhanpur Phata	18.347933	73.851646
421	Oval vasti	18.347754	73.850063
422	Khed	18.8550308	73.8874991
423	Shivapur wada	18.340913	73.839067
425	Gulnur Farm	18.343755	73.834029
426	Chillal masala company	18.34711	73.829383
428	Kandhare poultry farm	18.350888	73.813346
429	Diamond Company	18.350353	73.805555
431	Bauddha Vasti	18.5204303	73.8567437
432	Rahatawade Vasti	18.5204303	73.8567437
434	Newad wasti	18.5204303	73.8567437
435	Sane wasti	18.5035861	73.9388143
436	Sane chauk	18.670071	73.798221
438	Kasturi market	18.664136	73.795072
439	Ajantha nagar corner	18.664508	73.786573
440	Thermax	18.6592923	73.7950158
442	LIC corner	18.5204303	73.8567437
443	Sweet mart	18.5204303	73.8567437
445	Jai Hind Vidyalaya	18.5204303	73.8567437
446	Jakatnaka Pavanapool	18.5204303	73.8567437
447	Birla hospital	18.62579	73.774995
449	Deccan corner sambhaji pool	18.513793	73.841438
450	Paud phata police chauky	18.5069	73.823727
452	LIC colony	18.562315	73.833407
302	Wonder funkey	18.5204303	73.8567437
1544	Kudje gaon	18.5204303	73.8567437
456	Paramhans corner	18.5204303	73.8567437
457	Kachara depot	18.507438	73.799911
459	kothrud depot	18.506696	73.795338
460	Shinde farm	18.5204303	73.8567437
462	Shinde Nagar	18.512056	73.782175
463	Bavdhan goan	18.517183	73.780905
465	ARDE Colony	18.5204303	73.8567437
466	Pashan	18.5390917	73.7977928
467	ARDE bus stop	18.537925	73.802251
468	IITM	18.5362002	73.805881
470	NCL	18.5414875	73.8106594
472	Loyala Highschool	18.5364174	73.8195119
473	Police head office	18.540574	73.820782
475	E Square	18.537936	73.834618
476	Shivaji putala	18.526617	73.852559
478	Raja Bungalow	18.551905	73.849493
479	Khadki church stop	18.558521	73.845195
480	Alfa laval atlas company	18.5204303	73.8567437
482	Deichi company	18.5204303	73.8567437
484	Kharalwadi	18.6273149	73.8102927
485	Pimpri chauk Bus stop	18.626748	73.805523
486	Premier company	18.635293	73.798276
487	Cantonment jakat naka	18.571469	73.838028
489	B sub depot	18.5204303	73.8567437
490	Kendriya vidyalaya	18.4701033	73.7641497
492	CISV	18.5204303	73.8567437
493	Dehu phata highway	18.678599	73.742183
495	Dehuroad bajar	18.5204303	73.8567437
496	Gurudwara dehu road	18.6821027	73.7316304
498	Central Restaurant	18.5204303	73.8567437
499	Krushna Mandir Dehu Road	18.6821027	73.7316304
500	Mata Amardevi temple	18.6965913	73.7082882
502	Shankarwadi	18.5204303	73.8567437
503	Shelarwadi	18.6739843	73.7433727
504	Pune poultry farm	18.546806	73.851656
506	Talegaon Khind	18.5204303	73.8567437
507	Talegoan phata	18.7155	73.675447
509	Jijamata chowk Talegaon	18.7167	73.6833
510	Talegaon nagar parishad	18.5204303	73.8567437
512	Talegaon station	18.732173	73.669647
514	Bharat Petrol Pump	18.496749	73.968418
515	Samartha Vidyalaya Wadgaon Maval	18.7562767	73.456324
516	Paisa Phand  Kach Karkhana	18.5204303	73.8567437
518	Jambhe	18.6404818	73.7227774
519	Jambhe Prathamik Shala	18.5204303	73.8567437
521	Tajane Vasti	18.5204303	73.8567437
522	Punavale Corner	18.5204303	73.8567437
524	Kudale Farm	18.5204303	73.8567437
525	Tathwade	18.6289	73.7481
527	Laxman nagar 	18.5687742	73.7709523
528	Sindh Colony Gate2	18.5204303	73.8567437
529	Boys Batalian	18.560308	73.815169
531	RTO wellesley road	18.529805	73.862654
532	Alankar Talkies	18.528749	73.876116
533	PMC Mangala	18.523954	73.85418
535	Guruprasad bangala	18.5204303	73.8567437
536	Band garden	18.5347267	73.8797127
537	Yerwada	18.54515	73.884236
539	Shastri nagar	18.5041381	73.8014693
540	Agakhan palace	18.554026	73.901998
542	Ramwadi	18.5566792	73.9094835
543	Weikfield	18.5586323	73.9108729
545	WNC Company	18.5204303	73.8567437
547	Tata Guardroom Kharadi Phata	18.562652	73.927638
548	Chandan Nagar	18.5472058	73.9403908
549	NEI Company	18.5204303	73.8567437
550	Khule Wadi	18.568438	73.934176
552	Akashwani hadapasar	18.5309093	73.8493495
554	Laxmideep colony	18.4971364	73.9569225
555	Rambag solapur rd	18.5062211	73.9126174
556	Manjri farm	18.495136	73.979009
558	Krushi mahavidyalaya	18.5204303	73.8567437
559	Kavadi pat	18.492034	74.000583
560	Kavadi rasta	18.5204303	73.8567437
562	Fuel depot	18.5204303	73.8567437
563	Kadam wasti	18.7277318	73.6544392
565	Loni phata	18.488876	74.027791
566	Ramkrushna rasayan karkhana	18.5204303	73.8567437
567	Malyacha mala	18.5204303	73.8567437
569	Tamnya wasti	18.5204303	73.8567437
570	Theur phata	18.488674	74.051714
572	Tendulkar wasti	18.5204303	73.8567437
573	Kunjirwadi	18.4850053	74.0711359
575	Railway gate no.1 	18.5287449	73.8966848
576	Chaufula 	18.5204303	73.8567437
578	Malwadi Naygaon 	18.4909003	74.1017673
579	Naygoan 	18.5100809	74.0946311
581	Prayagdham Ashram 	18.5204303	73.8567437
582	Prayagdham Hospital	18.5063383	74.1088128
584	Railway Gate Aata Mill Karkhana 	18.5204303	73.8567437
585	Bagade wasti 	18.5204303	73.8567437
587	Sahakar Nagar	18.4768152	73.855506
588	Kranti Society	18.4844946	73.8444793
589	Sarang Society	18.489427	73.84986
591	Bank of Maharashtra Parvati gaon	18.4738711	73.825319
592	Mitramandal Sabhagruh	18.5204303	73.8567437
594	S T Divisional office	18.5312837	73.8478869
595	Meera society	18.5004785	73.8709424
596	Golibar maidan	18.50242	73.87717
598	Bombay Garage	18.513113	73.879872
599	West end talkies	18.518774	73.878038
601	Ruston Company	18.5204303	73.8567437
602	Kalbhor nahar bus stop	18.646916	73.788385
1547	Patvardhan Farm	18.5204303	73.8567437
1745	Shinde Farm	18.5204303	73.8567437
606	Supply Depot	18.565143	73.850239
608	Mathyadist Church	18.5583604	73.8546091
609	Shadal baba Darga 	18.544183	73.878067
610	Jahangir Hospital	18.5303557	73.8766965
612	Shivteerthnagar	18.6084294	73.779777
614	Paudphata police chowky	18.5069	73.823727
615	Nal stop	18.509019	73.831963
616	Petrol pump karve road	18.510551	73.834878
618	Chitrashala	18.512899	73.844905
619	Sadashiv Peth Houd	18.5082981	73.844732
620	Gadikhana	18.511898	73.85786
622	Mamledar kacheri	18.506757	73.858026
623	Gokul bhavan	18.504163	73.853548
625	Shanipar Bus Stand	18.512798	73.852933
626	Sambhaji Nagar	18.450434	73.8874799
628	Raja Bahadur mill	18.529991	73.86862
629	Rajaram pul	18.490968	73.827049
631	Magarpatta	18.502839	73.926607
632	Gurushankar math	18.5204303	73.8567437
634	Ram tekadi	18.5019303	73.92496
636	Bhatnagar 	18.477816	73.8975826
637	Uday Bag 	18.511795	73.9058534
638	Sopan Bag 	18.5144365	73.8998307
640	Kawade Nagar 	18.585787	73.812963
641	Kalashankar	18.519537	73.906534
642	Vatare mala	18.524484	73.906355
643	Shirke Company 	18.528565	73.906239
645	Ghorpadi Shala	18.5229255	73.8677464
647	Milletory Depo Mitti Ghar	18.518932	73.882399
648	Family camp	18.523308	73.88665
649	Khan Road	18.519151	73.879542
651	Vishrambag wada	18.513657	73.852659
652	Phadake Haud	18.5204303	73.8567437
654	Rajiv Gandhi Nagar Upper Depot	18.5204303	73.8567437
655	Upper Indiranagar	18.467767	73.8632243
657	Lower Indiranagar	18.468755	73.864166
658	Bibwewadi	18.4703742	73.8683697
660	Vasant Bag	18.4817828	73.8588139
661	Pushp Mangal karyalaya	18.486623	73.858156
663	Lokmanya nagar 	18.5066779	73.8470523
664	Ganjwewadi 	18.5925785	73.7183639
665	Alka talkies 	18.512564	73.843912
667	Amunition factory road	18.5204303	73.8567437
668	Khadaki bajar	18.5667	73.8667
670	Buddha Vihar	18.574512	73.832549
671	Shivaji putala dapodi	18.576109	73.830723
672	Mantri Niketan Dapodi	18.5801598	73.8304653
674	Suvarna park	18.591203	73.81961
675	Panyachi Taki Pimple Gurav	18.575547	73.815303
676	Pimple gurav	18.5867193	73.8154394
678	Guruganesh Nagar	18.5041413	73.7994473
679	Ashish Garden	18.502481	73.801544
681	Sahajanand Soc	18.496374	73.802072
682	Gandhibhavan Andhshala	18.5204303	73.8567437
684	Panyachi Taki Chandannagar	18.5204303	73.8567437
685	Salunke hospital	18.4940191	73.8257325
686	Sundarbai shala	18.5204303	73.8567437
688	Karehar company	18.5204303	73.8567437
689	Raghuveer Nagar	18.551136	73.928983
691	Alear weare housing	18.5204303	73.8567437
692	Jog Engineering	18.5204303	73.8567437
693	Vishnu Udyog	18.5204303	73.8567437
695	Pratik nagar	18.558549	73.9341451
696	Mail Dagad Kramank 8	18.506894	73.783031
697	Rajwade banglaow	18.507534	73.778459
699	Bhagwat wasti	18.5291664	73.83884
700	Deshmukh wasti	18.506844	73.768379
702	Daulat Garden	18.503208	73.760955
703	Bhugoan	18.50153	73.758089
704	Chukate wasti	18.5204303	73.8567437
706	Tangde Bandhu Mala	18.5204303	73.8567437
707	Mail Dagad Kramank 18	18.5204303	73.8567437
709	Bhukoom Ashram	18.498163	73.714696
710	Bandal farm	18.498453	73.719136
711	Ashram	18.498163	73.714696
713	Mail Dagad Kramank 22	18.510945	73.694872
714	Lavale Phata	18.510205	73.689359
715	ST stand pirangut	18.51294	73.678408
717	Ghotawale phata	18.512912	73.677791
718	Stage no.6	18.5204303	73.8567437
720	Kopo Phata Bormal	18.5204303	73.8567437
721	Poolachi wadi	18.5204303	73.8567437
723	Pravin Masala Company	18.5204303	73.8567437
724	Ashok Layland	18.5204303	73.8567437
726	Kalubai Jog Mandir	18.5204303	73.8567437
727	Shivanand Enclave Company	18.5204303	73.8567437
728	Kalewadigaon phata	18.603829	73.776539
730	Dalvi wasti	18.258591	73.88531
731	Nasrapur ST Stand	18.255063	73.883645
733	juna pul gate	18.50801	73.879397
734	Mahatma gandhi stand	18.5204303	73.8567437
735	Race course	18.5102464	73.893373
737	Fatimanagar	18.5043381	73.9029138
738	Shivarkar Garden	18.50475	73.901053
740	Jagtap chauk	18.492024	73.900162
741	Kedarinagar 	18.4989051	73.9025463
742	Kedari corner 	18.489398	73.899963
744	Salunke Vihar	18.4799816	73.9043836
745	Azadnagar	18.484198	73.905517
747	Lakshmimata Mandir Mohammadwadi	18.5204303	73.8567437
749	New hind school	18.5204303	73.8567437
750	Juna motor stand	18.50921	73.872776
751	Kashiwadi 	18.507339	73.871168
1550	Spedor Country cluB Gate 2	18.5204303	73.8567437
755	Alpana Talkies	18.5204303	73.8567437
757	City post	18.515744	73.856806
758	Vanaz company	18.5204303	73.8567437
760	Maharshi nagar	18.4871425	73.8624893
761	Sant namdeo vidyalay	18.7461749	73.415765
763	Bank of maharashtra	18.529951	73.851043
764	COD office	18.5204303	73.8567437
766	Council Hall	18.525395	73.878866
767	Income tax office	18.525762	73.876606
769	Matchwel company	18.5204303	73.8567437
770	Datta mandir Wadgaon sheri	18.5454572	73.9221359
772	Jayprakash Stand Pune station	18.5287538	73.8731475
773	Neeta park	18.545795	73.887882
775	White House	18.5072238	73.8566097
776	Netaji school	18.552009	73.889595
777	Vikrikar Karyalaya	18.5204303	73.8567437
779	Nagpur chawl	18.5629104	73.8939134
780	Guardroom gate	18.5204303	73.8567437
781	Sanjay park	18.5707263	73.9043836
783	Burmashell	18.5204303	73.8567437
784	Kalwad	18.5862229	73.9193407
786	Central school khese	18.5204303	73.8567437
787	Water tank	18.5937036	73.9226671
789	Balaji super market	18.5204303	73.8567437
790	Kirti Grapes	18.5204303	73.8567437
792	Atma Anand Dhyan Kendra	18.5204303	73.8567437
793	Shinde wasti lohgoan	18.6035851	73.9312734
795	Lakshmi Provision Stores	18.5204303	73.8567437
796	Patil Wasti Wadgaon Shinde	18.5204303	73.8567437
797	Zila Parishad School	18.0749064	74.5600592
799	Green Oaks Company	18.5204303	73.8567437
800	Mangesh nagar	18.5204303	73.8567437
802	Konark Nagar Corner	18.5204303	73.8567437
803	Konark Nagar	18.569903	73.911136
804	Gangapuram Mhada	18.57266	73.911666
806	Dehugaon Grampanchayat	18.717599	73.76779
807	Malwadi Dehu	18.711513	73.760995
809	Zhende mala	18.5204303	73.8567437
810	COD corner	18.5204303	73.8567437
811	Paduka Mandir	18.5245052	73.8414833
813	Ashoknagar Dehuroad	18.678599	73.742183
815	Garden City	18.6807904	73.7470502
816	Kendriya Vidyalaya	18.4701033	73.7641497
817	B Sub Depot	18.5204303	73.8567437
818	Kohima Line	18.5204303	73.8567437
820	Bank of badoda	18.5350453	73.8328087
821	Green ekars	18.457392	73.804411
823	Chaudhari wasti	18.4857425	74.1217938
824	Sortapwadi	18.4770575	74.0960995
826	Inamdar Wasti 	18.5204303	73.8567437
827	Bhosale Wasti 	18.5512304	73.7990016
829	Urali Kanchan	18.4833333	74.1333333
830	Nagarroad Phata Shriramnagar	18.5204303	73.8567437
831	Naik bungalow	18.504394	73.8201035
833	Ramnarayan Bungalow	18.5204303	73.8567437
834	Lieson company	18.5204303	73.8567437
836	Wagholi	18.6532361	73.908793
838	Pacharne wasti	18.5204303	73.8567437
839	Bharti Jain Sanghatna College	18.5204303	73.8567437
841	Lonikand	18.6287285	74.0329499
842	Phulgaon Phata	18.5204303	73.8567437
844	Mail Dagad Kramank 23	18.5204303	73.8567437
845	Perne Phata	18.641172	74.050471
846	Walke Wasti	18.5204303	73.8567437
847	Perne Gaon	18.5204303	73.8567437
849	Dongergaon Phata	18.623593	74.073874
850	Shinde Wasti 	18.6216954	73.9602287
852	Dabhade Wasti	18.657166	73.899111
853	Gaikwad Wasti	18.53273	73.91821
855	Harpale wasti Burkegaon	18.5204303	73.8567437
856	Pimpri Saandas	18.6095724	74.1284003
858	Nhavi Sandas	18.6173028	74.1680347
859	Lakshmi narayan theature	18.5204303	73.8567437
861	Date Engineering	18.5204303	73.8567437
862	Bhim Jyoti Soc.	18.5204303	73.8567437
864	Alankar Police Chowki	18.497925	73.826951
865	Nav Sahyadri Sabhagruha	18.4954857	73.8291328
867	Vitthal Mandir Karvenagar	18.509184	73.8460939
868	Shriman Society	18.5204303	73.8567437
870	Warje Malwadi	18.474689	73.8022046
871	Shivane Gaon	18.4558393	73.8209234
873	Ahire gate phata	18.466865	73.779361
874	Uttamnagar	18.460409	73.772238
876	NDA gate Kondhva Gate	18.455919	73.768468
877	Dnyaneshwar paduka chauk	18.5204303	73.8567437
879	Model colony	18.5324846	73.8374954
880	Deep Bungalow Chowk	18.5204303	73.8567437
882	Janwadi	18.5292326	73.8249973
883	Maharashtra Housing Niljyoti	18.533155	73.8211231
884	Pimpri Manapa	18.524614	73.856112
886	Manik Colony	18.6285832	73.7878659
887	Darshan hall	18.629409	73.786666
889	Chinchwade Farm	18.7791889	73.8120389
890	Aher garden	18.633659	73.764866
891	Walhekarwadi	18.5204303	73.8567437
893	D.Y.Patil corner	18.4471665	73.8108211
895	D Y Patil Chowk	18.534799	73.879601
896	Gurudwara Chowk	18.645935	73.766419
897	Mimli Garden	18.5204303	73.8567437
898	Atharva Park	18.5204303	73.8567437
900	Polcompany	18.5204303	73.8567437
901	Waghmare wasti	18.8149596	74.4459679
903	Industrial Company	18.5204303	73.8567437
905	Vishrant Dham	18.5204303	73.8567437
906	Wadhu Bu	18.5204303	73.8567437
908	Chaudhri Vasti	18.5204303	73.8567437
909	Bhosale Vasti	18.5512304	73.7990016
911	Karandi Phata	19.3657748	74.0242213
912	Panyachi Taki Karandi	18.7277511	74.0608558
913	Karandigaon kaman	18.5204303	73.8567437
915	Vikasnagar Corner	18.5175497	73.8659066
917	Kaspate Vasti	18.5927957	73.7698492
918	Wakad Chowk	18.608753	73.750792
919	A B Chauk Stand	18.559766	73.815308
920	Mhaske wasti	18.5204303	73.8567437
922	R D colony	18.576733	73.876631
924	MSEB Khadki 	18.5684078	73.8813484
925	Factory Hospital	18.559445	73.846395
927	Khadaki station corner	18.560732	73.841308
928	Botanical garden	18.565536	73.82446
929	Spicer College Press	18.5204303	73.8567437
931	Rakshak Soc.	18.557949	73.896087
932	Pimple Nilakh Shala	18.5204303	73.8567437
933	Pimple Nilakh	18.5799471	73.7874983
935	S T Workshop	19.200565	72.973287
936	P W D Gate	18.5556776	73.8302905
938	Bara gholap	18.575605	73.810364
939	Shivar Chowk	18.595468	73.788428
940	Sindhu Park	18.6002151	73.7938405
942	Ramnagar rahatani	18.603268	73.792478
943	akate wasti	18.5894857	73.895824
945	Rahatani phata	18.5980935	73.7995844
946	Shrinagar	18.4208437	73.762495
948	Tapgir nagar	18.6518817	73.8521981
949	M M shala	18.526415	73.826976
951	Dhangar nagar kalewadi	18.6150264	73.7933809
952	Vijaynagar	18.6338649	73.7334431
953	Ingale hospital	18.618376	73.792043
955	Maharashtra chauk	18.5111468	73.8371508
956	Hutatma chauk	18.5204303	73.8567437
957	Shatri chauk	18.513673	73.859569
959	Dighi Corner Odha	18.5204303	73.8567437
960	Tata stores	18.62682	73.864288
962	Moje vidyalaya	18.5204303	73.8567437
963	Sai madnir	18.5823781	73.8127709
965	Gokhale Mala Sankalpa Garden	18.5204303	73.8567437
966	Wadmukhwadi	18.653948	73.884116
968	Charholi phata	18.5204303	73.8567437
970	Moshi Phata Dehu Phata	18.5204303	73.8567437
971	Alandi bus stand	18.674405	73.8972404
972	Sadhu wasvani chauk	18.52504	73.876765
974	Sarabatwala chowk	18.5204303	73.8567437
975	Sachapeer Street	18.5150605	73.8764303
977	Warje Gaon Highway	18.480297	73.805065
978	Electronic sadan	18.5204303	73.8567437
980	Indrayani nagar corner	18.540509	73.830538
981	Power house bhosari	18.631696	73.830628
982	Gavalimatha	18.638099	73.825105
984	Telco hostel	18.5204303	73.8567437
985	Telco company	18.64461	73.81856
986	KSB Chowk	18.649634	73.809226
988	Morwadi Phata	18.5204303	73.8567437
989	Mohan Nagar	18.460262	73.849149
991	Lokmanya Hospital	18.6572813	73.8002859
992	Prekshagruha	18.5204303	73.8567437
994	Narayan peth police chowky	18.516141	73.8479426
995	Raman bag	18.4962948	73.8437247
997	Ramanbag	18.4962948	73.8437247
999	Sukhsagar Nagar	18.4194658	73.8517501
1000	Khandoba Mandir Corner	18.5204303	73.8567437
1002	Shri Shatrunjay Jain Temple	18.4516009	73.8781088
1003	Hill Villa	18.452697	73.883522
1005	Khadi Machine	18.452978	73.890933
1006	Somaji Khat Karkhana	18.457239	73.890762
1007	Talab Farm	18.461244	73.890456
1009	Chaitanya Vidyalaya 	18.5204303	73.8567437
1010	Kondhva Khurd	18.4687712	73.8830701
1011	Kondhava Shala	18.5229255	73.8677464
1013	Mahatma Phule wasahat	18.622309	73.8460874
1014	Indiranagar 	18.4697673	73.9319407
1016	Airport	18.5862229	73.9193407
1017	Nagpur Chawl	18.5629104	73.8939134
1019	Bombay garaje	18.513113	73.879872
1020	PMC School Pimpri	18.5675343	73.8813614
1022	Appu Ghar	18.6658833	73.7628792
1023	Mukbadhir shala	18.659358	73.764899
1024	Big India	18.656994	73.765219
1026	Geetabhavan	18.5117757	73.8499252
1027	Ashoka	18.651305	73.77544
1029	Ganganagar	18.4930796	73.9558204
1030	Giriraj Corner	18.5204303	73.8567437
1032	Akurdi rly stn	18.6508219	73.7673837
1034	Sambhaji chowk	18.5111468	73.8371508
1035	Patil chauk	18.534799	73.879601
1036	Railway quarters	18.64629	73.770492
1038	Chinchwade Nagar Corner Akurdi Road	18.5204303	73.8567437
1039	Chaitanya sabhagruha	18.4883323	73.8131
1041	KSB chauk	18.649634	73.809226
1042	Power house Bhosari	18.631696	73.830628
1044	Century Company	18.5602954	73.8074237
1045	Electronic Sadan	18.5204303	73.8567437
1047	Sangam Metal Company	18.5204303	73.8567437
1048	Kanda Engineering Company	18.5204303	73.8567437
1050	Bhar Phata	18.531148	73.669976
1051	Alfa paper mill	18.5204303	73.8567437
1052	Hanuman chowk	18.5116908	73.8032241
1054	Ghotawade gaon	18.5204303	73.8567437
1055	Green Park hotel	18.5142993	73.8383979
1057	Ambedkar nagar	18.4599851	73.8896849
1058	Murkute wasti	18.604093	73.7292051
1060	Baner odha	18.5204303	73.8567437
1061	Balewadi Phata	18.563405	73.783134
1063	Samadhi mandir	19.2760507	73.9817566
1064	Insureance company	18.5204303	73.8567437
1066	Gokhalenagar shala	18.526415	73.826976
1067	Gokhalenagar	18.5285768	73.8257325
1069	Padmavati Bus stand	18.541845	73.82766
1070	Power house Padmavati	18.564725	73.850712
1071	Date Bus stop	18.478792	73.850657
1072	Nandadeep	18.5246706	73.8278922
1074	Laxminagar police chauki	18.4947587	73.8545733
1075	Canbay Corner	18.5204303	73.8567437
1077	Magar College	18.5083433	73.9546132
1078	Mahadeo nagar	18.4765985	73.8323492
1080	Dhere bangala	18.5204303	73.8567437
1081	Gopal Patti	18.51238	73.967988
1083	Rangicha wada	18.9833329	73.75
1084	Belhekar wasti	18.5202253	73.9791012
1086	Manjri bu.	18.5204303	73.8567437
1087	Maruti mandir ves	18.5204303	73.8567437
1089	Manjari Khurda Avhalwadi Phata	18.5204303	73.8567437
1090	Zila Parishad	18.523561	73.870318
1091	Phadake Houd	18.518901	73.860125
1093	Mhasoba Chowk	18.5204303	73.8567437
1094	Raksha Lekha Society	18.498747	73.838854
1096	Vitbhatti singhgad rd	18.492252	73.834255
1097	Vitthalwadi Jakat Naka	18.5204303	73.8567437
1098	Jaydeo nagar	18.489225	73.830747
1100	Vitthalwadi mandir hingne	18.5204303	73.8567437
1101	Shivpushpak park	18.5204303	73.8567437
1103	Krushna mandir	18.5804018	73.8152709
1104	Suncity	18.4755434	73.8137402
1106	Magarpatta school	18.5268905	73.9278113
1108	Bapusaheb Magar wasti	18.5204303	73.8567437
1109	Keertane Bag	18.5284964	73.9323081
1110	Dhamale wasti Mundhva	18.5204303	73.8567437
1112	Mundhava Gaon Corner	18.533802	73.929892
1113	Diamond watch Company	18.533852	73.923752
1115	Tadi Gupta Wanaspati Sanshodhan Kendra	18.5204303	73.8567437
1116	Farashi Karkhana	18.531281	73.914076
1118	Army college	18.52964	73.907933
1119	Family Camp	18.523308	73.88665
1121	Pratibhanagar	18.4934484	73.9324727
1122	Gulabnagar	18.4632408	73.8520598
1124	Shubham Hotel	18.5204303	73.8567437
1125	Ahilyadevi Shala	18.5204303	73.8567437
1126	Surya hopsital	18.52159	73.855775
1127	Pawale chauk	18.5204303	73.8567437
1129	Sadanand nagar	18.52235	73.865135
1130	Khadaki police station	18.5571993	73.8453063
1132	Mantri niketan Dapodi	18.5801598	73.8304653
1133	Shitaladevi Mandir 	18.5204303	73.8567437
1136	ST Stand Gram Panchayat Talegaon	18.7167	73.6833
1137	Talegao Dhamdhere Bazar	18.5204303	73.8567437
1139	LakshmiBai Mandir	18.5204303	73.8567437
1140	ST Stand Chakan Road	18.7545716	73.8601774
1142	Jakate wasti	18.5204303	73.8567437
1143	Sanaswadi	18.6689214	74.0975678
1145	Ekora Company Kalyani Forbes	18.5204303	73.8567437
1146	Bafna Industries	18.5204303	73.8567437
1148	Phulgaon phata	18.5204303	73.8567437
1149	Satva high school	18.5204303	73.8567437
1151	Naik Bungalow	18.504394	73.8201035
1152	NEI company	18.5204303	73.8567437
1154	Dharmanagar 5 va mail	18.5204303	73.8567437
1155	Ramwadi jakatnaka	18.555108	73.905778
1157	Lakud Bajar 	18.5204303	73.8567437
1158	Sonwane hospital	18.505563	73.868499
1160	Panyachi taki	18.575289	73.814975
1161	Sai chauk	18.543537	73.784902
1163	Katepuram	18.585788	73.816376
1164	New pmc school	18.5204303	73.8567437
1166	Sai lila nagar kate wasti	18.5204303	73.8567437
1168	Sai mandir	18.5823781	73.8127709
1169	Tata Stores	18.62682	73.864288
1170	Didhi corner odha	18.5204303	73.8567437
1172	Shastri chowk	18.513673	73.859569
1173	Maharashtra Chowk	18.5111468	73.8371508
1175	Officers Mess	18.590694	73.91543
1176	Central building 	18.524298	73.872334
1177	kalasgaon	18.5204303	73.8567437
1179	Wireless colony	18.563068	73.8064325
1180	AIT college	18.607573	73.873364
1182	Mitra sahakar nagar	18.484678	73.845238
1183	Dattanagar	18.4458118	73.8466847
1185	Alandi jakat naka	18.5204303	73.8567437
1187	Dnyaneshwar Bhint	18.5204303	73.8567437
1188	Ganga Dham	18.47728	73.873785
1190	Apsara Talkies	18.499607	73.869439
1191	Power house	18.564725	73.850712
1192	Mitra sahkar nagar	18.487765	73.8499576
1193	Kiwale	18.659071	73.7213063
1195	Adarshnagar Corner	18.5494576	73.9142357
1196	Kivale phata	18.5381935	73.7812713
1198	Petrol pump vikasnagar	18.5204303	73.8567437
1199	Medical shop	18.5319063	73.8765416
1201	Shankar mandir	18.5120489	73.8365189
1202	MIDC bhosari	18.6388707	73.7779386
1306	Devendra Mangal Karyalaya	18.5204303	73.8567437
1308	Karachi chowk	18.5204303	73.8567437
1309	Krushnamandir corner	18.5204303	73.8567437
1310	Ingale Hospital	18.618376	73.792043
1312	M M Shala	18.526415	73.826976
1313	Tapkir Nagar	18.6518817	73.8521981
1314	Satavwadi	18.4953248	73.9484731
1316	ADP pune	18.4895498	73.9535244
1317	Bhekrai nagar	18.5204303	73.8567437
1319	Navlakha Godown 	18.5204303	73.8567437
1320	Mantar Wadi phata 	18.5204303	73.8567437
1321	Uruli Devachi Phata	18.5204303	73.8567437
1323	Jalindre Bag 	18.5204303	73.8567437
1324	Wadi 10 Mail Phata 	18.5204303	73.8567437
1325	Wadaki nala 	18.426759	73.98168
1326	Rangan Khor 	18.5204303	73.8567437
1328	Jadhavwadi 	18.7787421	73.7227774
1329	Kalewadi 	18.6150264	73.7933809
1330	Dumewadi 	18.5825868	73.7683784
1332	Pawarwadi 	18.0228123	74.6488264
1333	Kirloskar company	18.5204303	73.8567437
1335	Saswad Bus stand 	18.345231	74.031542
1336	Saswad stand	18.349877	74.028861
1338	Sasane Hingane township	18.5204303	73.8567437
1339	Nirmal Township	18.489086	73.93763
1340	Ganesh mandir	18.57432	73.892871
1342	Jaykara bangalow	18.5204303	73.8567437
1343	Film Institute	18.5155604	73.8293919
1345	Thakur Wasti	18.666096	73.935942
1346	Rechared Company	18.692664	73.914777
1347	Pawar Wasti	18.626292	73.751647
1349	Ghenand wasti	18.698903	73.919908
1204	Tan protex	18.5204303	73.8567437
1205	Juna jakat naka	18.662099	73.848475
1207	Bankar wasti moshi	18.671378	73.848265
1208	Moshi Phata Chimbli Phata	18.5204303	73.8567437
1210	Protact Company	18.5204303	73.8567437
1211	Waki Khurda	18.5204303	73.8567437
1213	Bham	18.5204303	73.8567437
1214	Waki Budruk	18.5204303	73.8567437
1216	Shiroli Phata	18.828936	73.876738
1217	Bhandari Company	18.5204303	73.8567437
1219	Kadus Phata	18.5204303	73.8567437
1220	Rajgurunagar Vidyalaya	18.5204303	73.8567437
1221	Rajgurunagar Khed	18.8536125	73.88454
1222	Minilek company	18.500424	73.672534
1224	GAF Filters	18.5204303	73.8567437
1226	Urawade gaon	18.5204303	73.8567437
1227	Ambegaon Phata	18.448084	73.8308919
1228	Lalghar	18.480925	73.661003
1230	Marnewadi	18.473479	73.645226
1231	Talemala	18.5204303	73.8567437
1233	Mordari phata	18.5204303	73.8567437
1234	Vitbhatti Kalyangaon	18.5204303	73.8567437
1236	Kalyangaon	18.5448365	73.7845339
1237	Mahadeo mandir	18.4853903	73.9397108
1239	Shridhar Colony	18.487291	73.820816
1240	Daruwala Pool	18.519931	73.861469
1242	Ghorpadi Peth Colony	18.5204303	73.8567437
1243	Swargate police line	18.500523	73.859593
1245	Kondhava Hospital	18.439256	73.895318
1246	Lonkar Wasti	18.527644	73.949798
1247	Surya Kiran Khat Karkhana	18.5204303	73.8567437
1249	Gokulnagar Katraj	18.4471901	73.874985
1250	Sundarban	18.448964	73.869846
1251	Sudarshan nagar Katraj	18.492854	73.8239399
1253	Dhayarai gaon	18.447537	73.810282
1254	Dhayarigaon shala	18.5204303	73.8567437
1256	DSK Vishwa	18.4401119	73.7998149
1257	Masulkar Colony	18.633612	73.807355
1258	Ajmer school	18.634152	73.810111
1260	Wastu Udyog	18.6328814	73.8180835
1261	Shindewadi Ghotawale	18.512912	73.677791
1262	Kasar amboli	18.5110959	73.6635544
1264	Sutarwadi paudroad	18.5204303	73.8567437
1265	Nursery	18.5647832	73.7799042
1267	Mukund shobha udyan dattamandir	18.5204303	73.8567437
1268	Sanakata company	18.5204303	73.8567437
1270	Balkavade wasti	18.5204303	73.8567437
1272	Forest Office Road	18.5204303	73.8567437
1273	Manik press road	18.5204303	73.8567437
1275	Shaskiya vishramgrah paud road	18.5140297	73.8206202
1276	Paudgoan	18.523109	73.613664
1278	Medical Stores	18.509219	73.8126909
1279	Grampanchayat Tingrenagar	18.5204303	73.8567437
1281	Pathare Wasti 	18.5599259	73.9334103
1282	Balaji Palace 	18.5525321	73.9379569
1284	Patil Wasti Kharadi	18.5705799	73.9461665
1285	Kharadi Gaon	18.5479754	73.9451957
1286	Hirabag	18.504506	73.854814
1288	Sainathnagar Ashok Hotel 	18.5204303	73.8567437
1289	Thiite Vasti  KaluBai Mandir 	18.5204303	73.8567437
1291	Hinjewadi Gaon	18.5601154	73.7871306
1292	Water Supply Ravet	18.6496322	73.7448437
1293	Rawet	18.6496322	73.7448437
1295	Poultry farm Indrayani dhaba	18.5204303	73.8567437
1296	Power House IT Park	18.5204303	73.8567437
1298	Circle IT Park	18.5204303	73.8567437
1299	Infosys Phase 3 Gawarwadi	18.5204303	73.8567437
1301	Vanaz corner	18.50766	73.808069
1302	Ganesh Chowk	18.5111468	73.8371508
1303	Durvankur soc	18.49038	73.936074
1305	Rajmudra Soc	18.5204303	73.8567437
1350	Koyali Phata	18.5204303	73.8567437
1351	Chakan Phata	18.734027	73.946583
1555	Ahire phata	18.466865	73.779361
1355	Mohitewadi	18.7432296	73.6072583
1356	Bahulgaon Phata	18.727068	73.998232
1358	Bahulgaon	18.656031	74.0153231
1359	Someshwar Mandir	18.670741	73.781198
1361	karan Park	18.5550453	73.9214504
1362	Shubham Society 	18.554676	73.919494
1364	Phulenagar Bhosari	18.622388	73.8238945
1365	Eklavya polytechnic College	18.5204303	73.8567437
1366	Mahesh vidyalaya	18.5204303	73.8567437
1368	Khedshivapur Highschool	18.5204303	73.8567437
1369	Pinnac Society	18.5204303	73.8567437
1371	Medi point	18.565025	73.802366
1372	Rupinagar	18.6799777	73.7867629
1374	Ambedkar vasahat	18.6720588	73.7827185
1375	Jambhul Wadi	18.4268492	73.8397009
1377	Pimplekar wasti	18.5204303	73.8567437
1378	Datta Mandir	18.561495	73.785635
1380	Telco Colony	18.435711	73.845259
1381	Chakan Oil mill	18.43958	73.846932
1382	Santoshnagar	18.4418674	73.8551385
1384	Shivshankar Super market	18.440582	73.86607
1385	Khadi Machine Gujarwadi	18.434502	73.868699
1386	Gujarwadi	18.426685	73.875557
1388	Saint Janabai hostel	18.5204303	73.8567437
1389	Sangamwadi shala	18.5204303	73.8567437
1391	Parvati darshan vasahat	18.494443	73.85429
1392	Khan Road 	18.519151	73.879542
1394	NCL market	18.539926	73.816823
1395	Bavdhan gaon	18.4462164	73.8256423
1397	Mail Dagad Kramank 9	18.5204303	73.8567437
1398	 Mail Dagad Kramank 10	18.5204303	73.8567437
1400	Pashan Gate	18.5262695	73.7882141
1401	Central School NDA	18.4595744	73.7610241
1403	Ashok Stambha	18.5204303	73.8567437
1404	Stadium NDA	18.4595744	73.7610241
1405	Servents Quarters	18.5204303	73.8567437
1407	Patil Chowk	18.534799	73.879601
1409	Morya Gosavi raj park	18.6204038	73.784419
1410	Rahatani Phata	18.5980935	73.7995844
1412	Nakate wasti	18.604815	73.786519
1413	Ramnagar rahatni	18.603268	73.792478
1414	Pimpale Saudagar	18.596692	73.7977928
1416	Pimple saudagar chauk	18.6106899	73.7990755
1417	Swaraj Mazda	18.5204303	73.8567437
1418	Sudarshan nagar	18.598397	73.812046
1420	Vaiduwasti	18.5332247	73.8253649
1421	Phursungi	18.4726725	73.9784573
1423	Harpale wasti 	18.5204303	73.8567437
1424	Power house fursungi	18.476421	73.957156
1426	ADP hadapasar	18.4895498	73.9535244
1427	Gondhalenagar	18.494128	73.946694
1429	Police Line Padamji	18.5204303	73.8567437
1430	Padmji Gate	18.5109463	73.8747651
1431	Military Hospital Wanvadi 	18.501818	73.890818
1432	Wanvadi Corner 	18.499098	73.895513
1434	Netajinagar 	18.5879955	73.8156232
1435	Lullanagar	18.4821147	73.8874799
1437	N I B M Road	18.4702707	73.9001742
1438	Kondhva Shala	18.5229255	73.8677464
1440	Azadnagar Charholi	18.5204303	73.8567437
1441	Tapkir Bungalow	18.5204303	73.8567437
1443	Charholi Gaon	18.5204303	73.8567437
1444	Vasant talkies	18.51799	73.856281
1445	Kachara Depot Undri 	18.463444	73.9212858
1447	Mayur Mangal Karyalaya	18.5065589	73.8452169
1448	Pisoli Gaon 	18.450046	73.908893
1450	Khadi Machine 	18.452978	73.890933
1451	Mammadevi Chowk	18.5204303	73.8567437
1452	Ghule Wasti 	18.5095721	73.9591266
1454	Kothrud depot	18.506696	73.795338
1455	kachra depot	18.507438	73.799911
1457	ST workshop	19.200565	72.973287
1458	Shivarkar gardan	18.50475	73.901053
1460	Prasanna Bungalow	18.4677915	73.8671293
1461	Ganesh Nagar 	18.4940191	73.8257325
1463	Natraj Society	18.494695	73.824595
1464	LIC Corner	18.5204303	73.8567437
1465	Yamunanagar corner	18.664508	73.786573
1467	Jyotiba Nagar	18.6126118	73.7863952
1468	Talwade	18.7150999	73.7360175
1470	Mhalasakant chauk	18.6497062	73.7778363
1471	Sambhaji chauk	18.5111468	73.8371508
1473	Lakud Bajar	18.5204303	73.8567437
1474	Gul aali	18.5039377	73.8595928
1475	Kasture chowk	18.510681	73.862069
1477	Shivaji putala Kalubai mandir	18.5204303	73.8567437
1478	Phulenagar bhosari	18.622388	73.8238945
1480	Om sairam complex	18.6324164	73.7800298
1481	Chaitnya sabhagrah	18.4883323	73.8131
1483	Bijali nagar	18.6394732	73.7623111
1484	Hinjewadi Police Station	18.600026	73.763912
1485	Infosys company	18.5204303	73.8567437
1487	Tulsi Chemical	18.507488	73.8487136
1489	Jayanand Khira	18.5204303	73.8567437
1490	Abhi chemicals	18.5204303	73.8567437
1491	Vishalnagar C Ward office	18.5204303	73.8567437
1492	Jyoti School	18.6301835	73.8236171
1494	Dnyaneshwar June Nivas/Sai Mandir	18.5204303	73.8567437
1495	Vishrantwadi corner	18.5204303	73.8567437
1497	Gandhi Acid Company	18.5204303	73.8567437
1498	Tingre nagar Shanti nagar	18.567113	73.879489
1500	Smashanbhumi Rasta Hadapsar	18.502796	73.935062
1501	Sadhana Vidyalaya	18.505873	73.938856
1504	Tupe Mala	18.510161	73.94321
1505	Lukad Wasti	18.512122	73.947284
1507	Vidi Kamgar Vasahat	18.557215	73.932279
1508	Tukaramnagar	18.5529868	73.9323081
1510	Ahilya Society	18.552747	73.878122
1511	Akshay Sunshri	18.5204303	73.8567437
1512	Munjaba Vasti	18.587177	73.8968506
1513	Vaiduvasti	18.5332247	73.8253649
1515	Swaraj mazda	18.5204303	73.8567437
1516	Pimpale Saudagar Chowk	18.6106899	73.7990755
1518	Ramchandra Mangal Karyalaya	18.5204303	73.8567437
1519	Express highway phata	19.0229364	73.0451677
1520	Shirgaon	18.6805499	73.6874664
1522	NIV	18.543294	73.788019
1523	Sai Chauk	18.543537	73.784902
1525	Paduka mandir	18.5245052	73.8414833
1526	COD Corner	18.5204303	73.8567437
1528	Ramanand Mangal Karyalaya	18.5204303	73.8567437
1530	Hinjewadi Jakatnaka	18.591836	73.756851
1531	Shivratn Mangal Karyalaya	18.5204303	73.8567437
1532	Jadhav nagar	18.4661359	73.8279381
1533	Venutai College	18.468494	73.831616
1535	Defence Colony	18.6020503	73.9328098
1536	Ankur Bungalow	18.502158	73.805332
1538	Sutar Dawakhana	18.5036536	73.8077652
1539	NDA Gate No 10	18.454558	73.766925
1541	Pickock Bay	18.4372491	73.7505438
1542	Donger Matha	18.5204303	73.8567437
1543	Dhumal Tali	18.433698	73.747358
1545	Kudje Stand	18.5204303	73.8567437
1546	Agalambe Phata	18.417787	73.735547
1548	Mandvi Khurd	18.5204303	73.8567437
1549	Mandavi Budruk	18.5204303	73.8567437
1551	Sangrun Phata	18.403979	73.681827
1552	Sangrun	18.400575	73.679059
1553	Shastrinagar 	18.5551525	73.8992392
1554	Balewadi	18.5825868	73.7683784
1556	Ahire gaon	18.455339	73.732116
1557	Harijan wasti	18.5204303	73.8567437
1559	Golewadi	18.5204303	73.8567437
1560	Mandhare wasti pole phata	18.5204303	73.8567437
1562	Sinhgad Payth Aatekar wasti	18.5204303	73.8567437
1563	Army College	18.52964	73.907933
1565	Farshi karkhana	18.531281	73.914076
1566	Kachare Wasti	18.533485	73.920663
1568	Mundhava goan corner	18.533802	73.929892
1569	Mundhava Goan	18.532675	73.932838
1570	Shinde Mundhava	18.5094678	73.930765
1572	Keshavnagar	18.5204303	73.8567437
1574	Samartha Vidyalaya Indrayani Nagar	18.466393	73.9199998
1575	Markal Gaon	18.667683	73.949866
1576	Indrayani Nadi Pool	18.670046	73.984985
1577	Tulapur	18.6694438	73.9954909
1579	Phulgaon	18.656031	74.0153231
1581	Sakore Mala	18.5204303	73.8567437
1582	Raysoni Farm	18.5204303	73.8567437
1584	Power House Markal	18.6718661	73.9653715
1585	Kate Wasti	18.5894857	73.895824
1586	Rajas Soc.	18.4777094	73.8971106
1588	Nivedita Jhula Ghar Kirkat wadi	18.5204303	73.8567437
1589	Malwadi Kirkat wadi	18.5204303	73.8567437
1591	Mal Hagwane wasti	18.5204303	73.8567437
1592	Nandoshi Limbache Zad	18.5204303	73.8567437
1594	Jivan Shikshan Mandir Wanjal Wadi	18.5204303	73.8567437
1595	Sanaswadi Nandoshi	18.414341	73.803102
1597	Link Road	18.6142312	73.7756244
1598	Shagun chowk	18.622606	73.801505
1600	Paramhans nagar	18.5083225	73.8040428
1601	Bahiratwadi 	18.535706	73.8290409
1603	Uruli Devachi	18.4549714	73.9565551
1604	Sadanand Nagar	18.52235	73.865135
1606	Sarpodyan Telco Road	18.5204303	73.8567437
1607	HDFC corner	18.5204303	73.8567437
1608	M23	18.531082	73.8669505
1610	Maharashtra Housing Yerwada	18.561671	73.89676
1611	Amrai	18.421127	73.730057
1612	Poultry Farm Aglambe	18.5204303	73.8567437
1614	Theurgaon Phata	18.617356	73.767218
1615	Green Ekers	18.457392	73.804411
1616	Panale farm	18.5204303	73.8567437
1618	Kunjir vihir	19.4062635	73.8496252
1619	Gosavi wasti	18.5091472	73.9459015
1621	Theur gaon	18.522877	74.046326
1622	Theur factory	18.525271	74.043897
1624	Malwadi Kunjir 	18.5204303	73.8567437
1625	Karade Wasti 	18.562279	73.938945
1627	Railway gate Mhatobachi alandi	18.6667	73.9
1628	Javalkar Hospital	18.605501	73.823098
1629	Mhatobachi Alandi	18.452382	74.0690625
1631	Tukai nagar	18.487942	73.9422277
1632	Bhansali complex	18.5204303	73.8567437
1634	Chakankar mala	18.5204303	73.8567437
1636	Bharat English school	18.5316136	73.8490277
1637	Mojhe Vidyalay	18.5204303	73.8567437
1638	Master Bakery	18.632471	73.81993
1640	Kakde Vasti	18.6733338	74.6017946
1641	Oswal Estate	18.5204303	73.8567437
1643	Employment Office	18.523328	73.869116
1644	Krushnanagar	18.5566876	73.9168766
1646	Kukkut palan kendra	18.5204303	73.8567437
1647	Raysoni farm	18.5204303	73.8567437
1648	Sakore mala	18.5204303	73.8567437
1650	Ganga Village	18.4828574	73.9334103
1651	Satav Nagar	18.4768416	73.9304711
1	Bajaj Mhalunge	18.5204303	73.8567437
2	Suvarna Fabricators	18.5204303	73.8567437
5	LueMax	18.5204303	73.8567437
8	Pancharatna Complex	18.5204303	73.8567437
11	Pegra gran company	18.5204303	73.8567437
15	Kuruli Gaon	18.715294	73.848259
17	Moshi phata chimboli phata	18.5204303	73.8567437
22	Borate wasti	18.665352	73.84863
25	Wakhar Mahamandal Bhosari	18.6385292	73.8477874
28	Bhosari gaon	18.6247121	73.8483387
31	Philips	18.6203626	73.8506861
34	Nashik phata	18.5980935	73.7995844
37	Alfa Laval Atlas Company	18.5204303	73.8567437
41	Bopodi Jakat Naka	18.571469	73.838028
44	Khadaki railway station	18.5631806	73.8406198
48	Raja bangalow	18.551905	73.849493
50	Poultry Farm Old Mumbai Pune Road	18.546806	73.851656
55	Engineering college hostel	18.528357	73.852084
59	GPO	18.523517	73.87549
62	Juna Bajar 	18.527256	73.862344
65	shimala office shivajinagar	18.5308225	73.8474647
69	E square	18.537936	73.834618
72	Boys batalian	18.560308	73.815169
74	Sindh colony gate 2	18.5204303	73.8567437
78	Sangvi phata	18.572723	73.807171
81	ESI Hospital	18.484071	73.859721
84	Wakad phata 	18.587968	73.789228
87	Kalewadi phata	18.603829	73.776539
90	Dange chowk	18.6151	73.765693
93	Bhikardas maruti madnir	18.508215	73.853702
96	Dakshinabhimukh Maruti mandir	18.6569183	73.7679965
100	N T wadi	18.5332548	73.8463172
102	Deccan Gymkhana	18.5183409	73.840436
105	Petrol Pump Karve Road	18.510551	73.834878
108	Paud Phata Dashabhuja Ganpati	18.5204303	73.8567437
112	Dahanukar colony	18.4956151	73.8110279
116	Ishanya Nagari	18.487678	73.802842
119	Maharashtra mandal	18.509646	73.847399
123	Dnyaneshwar Paduka chowk	18.5204303	73.8567437
126	Bajaj showroom wakadewadi	18.539814	73.850922
130	Sapras post	18.5204303	73.8567437
1654	Gavane Nagar	18.5204303	73.8567437
1655	Handewadi gaon	18.4499531	73.9234903
1657	Holkarwadi	18.438516	73.9411256
1658	Dairy farm	18.620593	73.76071
1660	Punawale corner	18.5204303	73.8567437
1661	Pabal Phata	18.5204303	73.8567437
1663	S T Stand Kesnand	18.5731929	74.0241367
1665	Highpeek Company	18.5204303	73.8567437
1666	Kesnand	18.5731929	74.0241367
1667	Dhore Vasti	18.5204303	73.8567437
1669	Shivneri Poultry Farm	18.5204303	73.8567437
1670	Dadegaon Phata	18.5204303	73.8567437
1672	Shinde wasti	18.6216954	73.9602287
1673	KRB Workshop	18.5204303	73.8567437
1674	Lonkar wasti	18.527644	73.949798
1676	Ghavate nagar	18.5204303	73.8567437
1677	VSI company	18.5204303	73.8567437
1679	Chavan Nagar Sambhajinagar	18.4694197	73.8553222
1680	Aranyeshwar mandir	18.4855354	73.8523804
1682	Shivdarshan Vasahat	18.4900896	73.8531232
1683	Gokul Nagar Katraj	18.4471901	73.874985
1684	Gajanan Nagar	18.457917	73.877944
1686	Mukbadhir Shala	18.659358	73.764899
1687	Gokul nagar	18.5877162	73.8885824
1689	Manaji nagar	18.4549502	73.8255487
1690	JK Industries	18.5204303	73.8567437
1691	Narhe Ambegaon	18.450954	73.837548
1692	Indira Institute	18.5308225	73.8474647
1694	Tathawade Phata	18.5967267	73.7939677
1696	Pawana pul Rawet	18.5204303	73.8567437
1697	Jadhavwadi phata	18.5204303	73.8567437
1698	Shamal Rose Nursery	18.5204303	73.8567437
1700	Urse Phata	18.5204303	73.8567437
1701	Bebadohal	18.6912834	73.6462625
1703	Dhavde Vasti	18.5542406	73.935911
1704	Atlas Company	18.5204303	73.8567437
1706	Spicer college press	18.5204303	73.8567437
1707	Botanical Garden	18.5660186	73.8257325
1709	LIC Colony Khadaki	18.562315	73.833407
1710	Khadaki Station corner	18.560732	73.841308
1712	Shrama Safalya	18.6447989	73.7737101
1713	Anandpark Kharadi	18.5541598	73.9302206
1715	Ranware wasti	18.5204303	73.8567437
1716	Ravinagar Tapkir wasti	18.553406	73.75384
1717	Soos gaon	18.5436733	73.7844514
1719	Symbiosis college phata Soos	18.5204303	73.8567437
1720	Sanjay Nilgiri Garden Shinde Wast	18.5204303	73.8567437
1721	Dhamale wasti Soos road	18.555866	73.72032
1723	Gaikwad wasti Nandegaon	18.5204303	73.8567437
1725	Gawade wasti	18.538569	73.709808
1726	Satav wasti	18.497766	73.941607
1727	Lawale wasti	18.528251	73.703528
1729	Kasturba School Wadia	18.5204303	73.8567437
1730	Kalptaru Society	18.5204303	73.8567437
1732	Ghorpadi Phata	18.5204303	73.8567437
1734	Dhole Patil Farm	18.5204303	73.8567437
1735	Yashwant Nagar	18.5402123	73.8352899
1736	Ashoknagar	18.5414013	73.8396802
1738	Rangehill Circle 2	18.5204303	73.8567437
1739	Rangehills H Type Quarters	18.544901	73.839313
1740	Military Hospital	18.501818	73.890818
1742	Malkhed	18.3917	73.702067
1743	Wardade phata	18.389412	73.700424
1744	Wardade	18.385607	73.698978
134	Phulenagar	18.5587288	73.8782926
136	Mental Hospital Corner	18.5204303	73.8567437
140	Panyachi Taki	18.575289	73.814975
143	Sai Corner	18.5306416	73.8397948
146	Katraj bus stand	18.481564	73.857141
149	Chaitanya nagar	18.4979807	73.8051458
153	Natu bag	18.481564	73.857141
154	Aranyeshwar Corner	18.4925316	73.8574469
158	Shivajinagar Station	18.532448	73.849456
161	Gaimukh Ambegaon Phata	18.5204303	73.8567437
164	Chandrabhaga Restaurant	18.45405	73.851345
168	Surya hospital	18.52159	73.855775
171	Bhumkar Complex	18.602887	73.749347
174	Radhika Soc	18.5204303	73.8567437
178	Gar mala	18.5204303	73.8567437
180	Sanas Vidyalaya	18.4599788	73.8119559
184	Jadhavwadi Andh shala	18.5204303	73.8567437
187	Kolhewadi	18.4422637	73.7852922
189	Khadakwasla Dharan	18.5204303	73.8567437
193	Shivaji Putala Kalubai Mandir	18.5204303	73.8567437
197	Pan mala Sinhgad Road	18.500738	73.844967
201	Vitthalwadi jakat naka	18.5204303	73.8567437
205	Anand nagar singhgad rd	18.4790788	73.8255677
208	Wadgaon phata	18.466096	73.816713
211	Childrens School	18.5204303	73.8567437
215	Gorhe bu. jeevan shikshan mandir	18.5204303	73.8567437
218	Venkatesh poultry farm	18.406694	73.756346
222	Kasaba Police Chowky	18.519784	73.856201
225	Rastewada	18.5204389	73.864941
228	Sasoon hospital	18.525701	73.87206
231	Wadia college	18.5334387	73.880002
234	Budhrani Hospital	18.53298	73.886073
237	Kawdewasti	18.5204303	73.8567437
240	Pune University Gate	18.541962	73.829295
244	Baner phata	18.550499	73.80954
246	Anand park sindhi colony	18.5568162	73.806984
251	Ba ra gholap	18.575605	73.810364
254	shitole nagar corner	18.5204303	73.8567437
257	Vasantdada Putala	18.57575	73.826094
260	Mohammadwadi jakat naka	18.5204303	73.8567437
263	Railway Crossing Mohammadwadi	18.5204303	73.8567437
268	Mahamdwadi Gaon	18.5204303	73.8567437
271	Khole wasti 	18.5204303	73.8567437
274	Kunte Chauk	18.514469	73.852255
278	Law college	18.516111	73.829066
281	Sheti mahamandal	18.5204303	73.8567437
283	Shivaji housing board bus stop	18.5204303	73.8567437
288	Ladies Hostel Pune University	18.55173	73.82815
291	Dattanagar Highway	18.4507053	73.8580397
295	Krushnai Mangal Karyalaya	18.5204303	73.8567437
298	Warje gaon highway	18.480297	73.805065
301	Aditya garden city	18.4898951	73.7867629
304	Chandani chauk	18.506527	73.7794093
306	Nisarg Aaditya group	18.5204303	73.8567437
310	Sayali Restaurant	18.5204303	73.8567437
313	Yashoda Nivas	18.6514906	73.7804729
315	Chha. Shivaji Krida Sankul	18.5204303	73.8567437
320	Padmji Paper Mill	18.5204303	73.8567437
323	Jakatnaka pavanapul	18.5204303	73.8567437
327	Mehta hospital	18.645121	73.789908
330	Akurdi khandoba chauk	18.649997	73.785165
333	Nigadi jakat naka	18.631265	73.777034
336	Moshi phata chikhali	18.681848	73.819537
340	Sukhwani	18.5089845	73.9320785
343	Yashwant Nagar Telco Road	18.5204303	73.8567437
346	Master bakery	18.632471	73.81993
349	PCMT	18.620129	73.85043
352	Wadilal	18.5204303	73.8567437
354	Deichi Company	18.5204303	73.8567437
358	Tapodham	18.482217	73.80789
361	Maruti Mandir Karve Road	18.503754	73.820291
364	Chinchwad gaon	18.6338043	73.7791795
368	Delux	18.619874	73.801411
371	Bhatnagar	18.477816	73.8975826
373	Pimpri  chauk Bus stand	18.559766	73.815308
376	Vishal nagar C ward office	18.5204303	73.8567437
380	Tulashi chemikals	18.5204303	73.8567437
383	NDA gate Kondhava gate	18.455919	73.768468
387	Ahire gate Phata	18.466865	73.779361
390	Shivane gaon	18.4558393	73.8209234
393	Queen Mary Technical	18.5204303	73.8567437
396	Bhaurao Patil Chowk	18.566363	73.831334
400	Alegaonkar High school	18.5685281	73.8458948
403	Bhapkar Petrol Pump City pride	18.48971	73.857638
407	Mangdewadi Petrol Pump	18.436368	73.86054
410	Stage kramank 6	18.5204303	73.8567437
414	Gogalwadi Phata	18.5204303	73.8567437
416	Shindewadi Gujarwadi	18.5204303	73.8567437
419	Shivapur Bag Post office	18.5204303	73.8567437
424	Raje Phata	18.9805417	73.1375421
427	Arvi phata	18.5204303	73.8567437
430	Kondhanpur Gaon	18.5204303	73.8567437
433	Rahatawade Gaon	18.5204303	73.8567437
437	Krushnanagar Corner	18.666661	73.795941
441	Yamunanagar Corner	18.664508	73.786573
444	Akurdi Khandoba Chowk	18.649997	73.785165
448	Mandai	18.512879	73.8562411
451	More vidyalaya	18.51045	73.819635
453	Anand nagar paud road	18.5094546	73.8136711
455	Vanaz Corner	18.50766	73.808069
458	Bharti nagar	18.5069596	73.7966899
461	Bavdhan Khind 	18.4973349	73.7886276
464	Ramnagar Bharat Electronics	18.5269904	73.7829405
469	Panchwati	18.5287353	73.8157056
471	NCL Market	18.539926	73.816823
474	Pune Vidyapeeth	18.555833	73.822598
477	Krutrim reshim paidas kendra	18.549212	73.8509
481	Kasrawadi	18.6060873	73.8227917
483	HA Factory D Y Patil college	18.5204303	73.8567437
488	Kohima line	18.5204303	73.8567437
491	Garden city	18.6807904	73.7470502
494	Dehuroad railway staion	18.6804696	73.7342706
497	Dehu road police station	18.686313	73.722184
501	Amarjai Begdewadi phata	18.5204303	73.8567437
505	Somatne Phata	18.702951	73.687747
508	Bhandari hospital	18.718266	73.680375
511	Paranjpe Hospital	18.5086456	73.8448469
513	Egale Plax Petrol Pump	18.5204303	73.8567437
517	Wadgaon Maval Phata	18.5204303	73.8567437
520	Nerhe Phata	18.4489065	73.8263226
523	Punavale	18.6368016	73.7463147
526	Dairy Farm	18.620593	73.76071
530	College of engineering pune	18.5277437	73.8533007
534	Kumbhar Wada	18.536592	73.9425951
538	wadia bangala	18.549831	73.893714
541	Ramwadi Jakatnaka	18.555108	73.905778
544	ISL Company	18.5204303	73.8567437
546	Dharmanagar 5 va Mail	18.5204303	73.8567437
551	Agrawal Colony	18.509763	73.8762713
553	15 number Manjari Gaon Phata	18.5204303	73.8567437
557	Phursungi gaon phata	18.4714191	73.9596509
561	Wakvasti	18.491042	74.007742
564	Loni station	18.488876	74.027791
568	Borkar wasti	18.488692	74.045981
571	Kalbhor wasti solapur rd.	18.5062211	73.9126174
574	Naygaon phata	18.5204303	73.8567437
577	Yadav Wasti Chaufula 	18.5204303	73.8567437
580	Malran 	18.5204303	73.8567437
583	Bodhe wasti 	18.5204303	73.8567437
586	Railway Station Uruli Kanchan 	18.4938624	74.1369524
590	Lakshminagar Corner	18.5204303	73.8567437
593	Ghorpade peth colony	18.5032467	73.8645797
597	Juna pul gate	18.50801	73.879397
600	Nigadi	18.6517098	73.7683784
603	chinchwad station	18.656994	73.765219
605	H A Factory	18.558521	73.845195
607	Amunition Factory Road	18.5204303	73.8567437
611	Sutardara	18.5167978	73.8079434
613	LIC Colony Paud Road	18.510875	73.818328
617	Deccan corner sambhaji pul	18.513793	73.841438
621	Shahu chauk	18.509029	73.858027
624	Pandavnagar	18.543975	73.782667
627	Maruti Mandir 	18.508215	73.853702
630	Wadgaon budruk	18.4673041	73.8330844
633	Vaidwadi	18.5332247	73.8253649
635	Kalubai mandir solapur road	18.506623	73.906536
639	Railway Crossing Gorpadi 	18.516026	73.907262
644	Anant Talkies	18.529399	73.902506
646	Ghorpadi Post Office	18.52509	73.894597
650	Sai sayaji nagar	18.4909333	73.7924618
653	15 August Lodge Somwar Peth	18.5214325	73.8676347
656	Chintamani Nagar	18.4665827	73.8661646
659	Kothari Corner	18.5204303	73.8567437
662	Petrol Pump Rajendranagar	18.510551	73.834878
666	Surgeon quarters	18.5204303	73.8567437
669	Kirloskar Oil Engine Manaji Bag	18.569811	73.841791
673	Ramkrushna Mangal Karyalaya	18.5204303	73.8567437
677	Kumbare Park	18.5204303	73.8567437
680	Mahesh Vidyalaya	18.5204303	73.8567437
683	Tata gaurdroom Kharadi phata	18.562652	73.927638
687	Sambhaji chauk Ganesh nagar	18.5111468	73.8371508
690	Paranj company Relax hotel	18.5204303	73.8567437
694	Sainathnagar Mundhava	18.532675	73.932838
698	Dagade wasti	18.507083	73.776682
701	Mariaai Mandir Bhugaon	18.5204303	73.8567437
705	Mathalwadi	19.2282646	73.1492512
708	Nerolac Paint Company	18.5204303	73.8567437
712	Mail dagad kramank 21	18.5204303	73.8567437
716	Vishkar India company	18.5204303	73.8567437
719	Stage no.7	18.417774	73.856749
722	Shivregoan Phata	18.5204303	73.8567437
725	Warje Gaon Nasrapur Road	18.5204303	73.8567437
729	Sangvi Company	18.269826	73.880271
732	Bhairoba Mandir Nasarapur	18.250726	73.880518
736	Bhauraba nala	18.506624	73.897567
739	Jambhulkar Chauk 	18.5204303	73.8567437
743	Kedari Nagar	18.4989051	73.9025463
746	Heaven Park	18.4821866	73.9132023
748	Fatimanagar Municipal shala	18.5204303	73.8567437
752	Ramoshi gate	18.510843	73.868377
753	A D camp chauk	18.5184641	73.8792278
756	Sonya Maruti Chowk	18.515925	73.860553
759	Mauli bangala	18.5006674	73.9524683
762	P and T colony	18.494252	73.857966
765	Poona club	18.5233409	73.8792113
768	Sainikwadi	18.5515816	73.9161418
771	Wadgao sheri	18.5535156	73.9301037
774	Gunjan Theature	18.5204303	73.8567437
778	Yerwada post office	18.558997	73.892022
782	Five nine area	18.4579553	73.7919103
785	Officers mess	18.590694	73.91543
788	Jakat Naka Khese Ali	18.5204303	73.8567437
791	Khandave Bungalow	18.5204303	73.8567437
794	Kakde Vasti Lohgaon	18.5204303	73.8567437
798	Wadgaon Shinde	18.6121054	73.9395631
801	Vimannagar Gate	18.5502413	73.9186657
805	Dehugaon	18.6911825	73.8005839
808	Kudba Kruti Manmohan	18.5204303	73.8567437
812	Chincholi	18.6898223	73.7514631
814	Dehu road railway station	18.6804696	73.7342706
819	Cantonment Jakat Naka	18.571469	73.838028
822	Badade wasti	18.5204303	73.8567437
825	Rajendra pipe company	18.5204303	73.8567437
828	Prayag Dham Phata 	18.5204303	73.8567437
832	Janakbaba Darga	18.564873	73.943693
835	Satav High School	18.580514	73.977547
837	Kesanand phata	18.5730161	74.0216544
840	Jagtap Dairy Lonikand	18.616206	74.019564
843	Power House Phulgaon	18.656031	74.0153231
848	Kadam Wasti	18.7277318	73.6544392
851	Bapurao Smarak	18.5204303	73.8567437
854	Shinde Wasti Burkegaon	18.5204303	73.8567437
857	Shitole mala	18.573082	73.834668
860	Mehandale Guarage	18.5204303	73.8567437
863	Karnataka High school	18.501747	73.827077
866	Madhusanchay Society	18.5204303	73.8567437
869	Sahvas Soc	18.4947072	73.8202957
872	Ingale Colony	18.465671	73.777036
875	Kondhava Dhavde	18.4574675	73.7698492
878	Lakaki Bungalow	18.5204303	73.8567437
881	Kusalkar Putala	18.5204303	73.8567437
885	Link road	18.6142312	73.7756244
888	Chinchwade Nagar Corner Chinchwad Road	18.5204303	73.8567437
892	Matoshri nagar	18.4897798	73.8255379
894	D Y Patil college Akrdi	18.6426993	73.7783951
899	Chintamani Chowk	18.638229	73.766063
902	Phadtare Wasti	18.5204303	73.8567437
904	Z F Stearing Company	18.5204303	73.8567437
907	Bhandari nivas	18.6165282	73.8742054
910	Wajewadi Chaufula	18.5204303	73.8567437
914	Karandi gaon	18.728978	74.061998
916	Maruti Mandir Wakad	18.589549	73.774258
921	Kalasgaon	18.5204303	73.8567437
923	512 Factory Gate 	18.5804032	74.633697
926	Khadki Police Station	18.5571993	73.8453063
930	Spicer college	18.5636712	73.8194832
934	Dapodi Gaon	18.5639463	73.8102927
937	panyachi takai sangvi	18.575547	73.815303
941	Rahatani gaon	18.602959	73.795395
944	Saurabh company tambe company	18.5204303	73.8567437
947	Dhangar Nagar Kalewadi	18.6150264	73.7933809
950	Avinash Mangal Karyalaya	18.5204303	73.8567437
954	Krushnamandir Corner	18.5204303	73.8567437
958	Durwankur lawns	18.5204303	73.8567437
961	Bhosari phata	18.634142	73.874902
964	Nirma company	18.5204303	73.8567437
967	Chincheche jhad	18.5204303	73.8567437
969	Sai Lila nagar Kate Wasti	18.5204303	73.8567437
973	General post office	18.5229149	73.8752894
976	Modern Bakery Nana peth	18.515391	73.867056
979	Century company	18.5602954	73.8074237
983	Yashwant nagar telco road	18.5204303	73.8567437
987	Sanghavi College	18.6462123	73.8020208
990	MIDC Chinchwad	18.603942	73.824525
993	Elpro Company	18.632986	73.785336
996	Kesari Wada	18.516228	73.848865
998	Somanagar Society	18.5204303	73.8567437
1001	Ladies Hostel 	18.461203	73.877481
1004	Smashanbhumi Kondhava	18.5078689	73.8400685
1008	Mangalben company Sai service	18.5204303	73.8567437
1012	NIBM Road	18.4702707	73.9001742
1015	Kalubai mandir	18.506623	73.906536
1018	Vikrikar karyalaya	18.5204303	73.8567437
1021	Transport Nagari	18.6653272	73.767643
1025	Sindhunagar Corner	18.5204303	73.8567437
1028	Mhalsakant Chowk	18.6497062	73.7778363
1031	Prachi	18.645269	73.770629
1033	Akurdi Police Chowky	18.660823	73.775577
1037	Bijlinagar	18.6374555	73.7764901
1040	Om Sairam complex	18.6324164	73.7800298
1043	Indrayani nagar Corner	18.540509	73.830538
1046	Mahila Mandal	18.504407	73.850632
1049	Power House Ghotawade	18.523355	73.669998
1053	SNZ chemical company	18.5204303	73.8567437
1056	Trimurti bunglow	18.5204303	73.8567437
1059	Baner gaon	18.5601154	73.7871306
1062	Kalamkar wasti	18.5204303	73.8567437
1065	Mhalunge Gaon	18.574579	73.755451
1068	Police line Gokhalenagar	18.526533	73.843815
1073	Gandhi Training Corner	18.5204303	73.8567437
1076	Alhat wasti	18.5204303	73.8567437
1079	Ghule wasti	18.5095721	73.9591266
1082	Railway crossing	18.5287449	73.8966848
1085	Malwadi	18.5115727	73.9447994
1088	Annasaheb magar vidya mandir	18.5204303	73.8567437
1092	Dattawadi pul	18.503691	73.838893
1095	Jal shudhikaran kendra singhroad rd	18.497971	73.84092
1099	RajaramPool	18.489225	73.830747
1102	Star garden	18.475317	73.816215
1105	Tilekar wasti	18.507555	73.9275318
1107	Megarpatta City	18.5158057	73.9271644
1111	Mundhva Gaon	18.533802	73.929892
1114	Kachare wasti	18.533485	73.920663
1117	Pingale wasti	18.530591	73.910983
1120	Dhankawadi	18.4573215	73.8507279
1123	Police Line Modern College	18.5204303	73.8567437
1128	Kamala nehru hospital	18.522617	73.862728
1131	Suply depot	18.565143	73.850239
3	MIDC Phata	18.5980935	73.7995844
155	Bhapkar petrol pump City Pride	18.48971	73.857638
312	Shivsagar mangal karyalay	18.5204303	73.8567437
454	Jai bhavani 	18.509391	73.811764
604	Chinchwad chauk	18.5111468	73.8371508
754	Nana peth	18.5127916	73.8676347
1135	Pooja hospital	18.589886	73.81952
1138	Bhairoba Nagar	18.506624	73.897567
1141	Shikrapur Phata	18.5204303	73.8567437
1144	Darekar Wasti	18.5204303	73.8567437
1147	Koregaon Bhima	18.6485712	74.0623244
1150	Lieson Company	18.5204303	73.8567437
1153	Chandan nagar	18.5472058	73.9403908
1156	Wadia bunglow	18.549831	73.893714
1159	Subhanshah Darga	18.5204303	73.8567437
1162	Krishna bajar	18.581456	73.815663
1165	Dehu phata	18.669867	73.891174
1167	Gokhale mala sankalp garden	18.5204303	73.8567437
1171	Durvankur Lawns	18.5204303	73.8567437
1174	Chh.Shivaji krida sankul	18.5204303	73.8567437
1178	Parade ground	18.5058449	73.8946277
1181	Dighigaon	18.609318	73.873257
1184	Telco godown	18.620916	73.874102
1186	Navin ST stand	18.5204303	73.8567437
1189	Canol Jhopadpatti	18.495727	73.869256
1194	Shelke wasti	18.5204303	73.8567437
1197	Indraprabha mamurdi	18.6745203	73.7168927
1200	Vikasnagar	18.492424	73.9025463
1203	Wakhar mahamandal bhosari	18.6385292	73.8477874
1206	Borate Vasti	18.665352	73.84863
1209	Chakan market yard	18.4868701	73.8676347
1212	Rohakal Phata	18.5204303	73.8567437
1215	Khadi Machine Chakan	18.7602664	73.8630346
1218	Kanda Lasoon Sanshodhan Kendra	18.5204303	73.8567437
1223	Kirloskar	18.495552	73.667893
1225	Khale banglaow	18.5204303	73.8567437
1229	Datta Mandir Marnewadi	18.5204303	73.8567437
1232	Shivnarwadi	18.5204303	73.8567437
1235	Bhilarwadi chauk	18.5204303	73.8567437
1238	Mehendale garage	18.5204303	73.8567437
1241	Petrol pump rajendranagar	18.510551	73.834878
1244	Zila Parishad School Yewlewadi	18.5204303	73.8567437
1248	Shri Shatrunjay jain temple	18.4516009	73.8781088
1252	Rajas Soc. Corner	18.5273078	73.8286185
1255	Chavan mala	18.4673041	73.8330844
1259	Vitthalwadi Mandir Masulkar	18.5204303	73.8567437
1263	Cable company	18.5204303	73.8567437
1266	Amralewadi phata	18.603829	73.776539
1269	Santi company	18.5204303	73.8567437
1271	Vitthalwadi phata	18.5204303	73.8567437
1274	ST stand Paudgaon	18.5204303	73.8567437
1277	Kekan gas agency	18.5204303	73.8567437
1280	Vidyanagar Swapnaganga bangalow	18.5204303	73.8567437
1283	Rakshak Society Kharadi	18.5545369	73.9418603
1287	Swargate corner	18.5015	73.858617
1290	Infosys Phase 2	18.593565	73.708268
1294	Dharmaraj Mangal Karyalaya Ravet	18.6496322	73.7448437
1297	Tata Motors IT Park 	18.5204303	73.8567437
1300	Paramhansa Corner	18.5204303	73.8567437
1304	Shivshankar Chowk	18.5381935	73.7812713
1307	Shagun chauk	18.5190432	73.7773579
1311	Avinash mangal karyalay	18.5204303	73.8567437
1315	Gondhalenagr	18.5204303	73.8567437
1318	Power House Phursungi	18.476421	73.957156
1322	Bhadale Wasti Devachi Uruli 	18.4833333	74.1333333
1327	Zendewadi 	18.413397	74.007566
1331	Divegaon phata 	18.383438	74.015624
1334	Waghere college 	18.3546681	74.0258145
1337	Binawat Township	18.5204303	73.8567437
1341	Kaleborate Nagar	18.484989	73.939395
1344	Devpari Maharaj Mandir	18.5204303	73.8567437
1348	Wadgaon Ghenand Shala	18.715819	73.93528
1352	Shel Pimpalgaon	18.7374043	73.9565551
1353	Rajsthan Hostel	18.5204303	73.8567437
1354	Chincholi Phata	18.733205	73.974489
1357	Subhash Vidyalaya	18.725428	73.998793
1360	Vitthai mangal karyalaya	18.5204303	73.8567437
1363	Rakshak Soc. Ganpati mandir	18.5623007	73.8955291
1367	Sahitya Parishad Peru Gate	18.5204303	73.8567437
1370	Vasundara Lawns	18.5204303	73.8567437
1373	Ankush chauk	18.666305	73.776112
1376	Jambhalkar Wasti	18.5204303	73.8567437
1379	Lipanewasti	18.5204303	73.8567437
1383	Sai Industries Company	18.438998	73.862968
1387	Sarkari Vishram Gruh	18.5204303	73.8567437
1390	Sangamwadi gaon	18.5204303	73.8567437
1393	Shirke Company	18.528565	73.906239
1396	Bavdhan khind	18.4973349	73.7886276
1399	Garware Bungalow	18.5204303	73.8567437
1402	Gol Market NDA	18.4595744	73.7610241
1406	D2 Circle	18.531395	73.811645
1408	Rama Bistake park	18.5204303	73.8567437
1411	Saurabh company Tambe Shala	18.5204303	73.8567437
1415	Shivshakti Mandir	18.5204303	73.8567437
1419	Bhairavnagar Pimple Gurav	18.5867193	73.8154394
1422	Jai bhavani godown 	18.5204303	73.8567437
1425	Bhekarai Nagar	18.4882495	73.9499426
1428	Shivaji nagar S T stand	18.541845	73.82766
1433	Wanvadi Bazar 	18.495112	73.894591
1436	Mahatma Phule Vasahat	18.622309	73.8460874
1439	Kondhava Khurd	18.4687712	73.8830701
1442	Dabhade Wasti Charholi	18.657166	73.899111
1446	Queen company 	18.5204303	73.8567437
1449	Hanuman Mandir Charminar 	18.5204303	73.8567437
1453	Wadachi Wadi	18.436634	73.918233
1456	PWD gate	18.5753534	73.8147277
1459	Jagtap chauk 	18.492024	73.900162
1462	Bank of Maharashtra 	18.529951	73.851043
1466	Yamuna Nagar	18.6667547	73.7838215
1469	Dehugaon grampanchayat	18.717599	73.76779
1472	Akurdi police chauky	18.6466046	73.8004248
1476	Naik Hospital	18.5104337	73.8595057
1479	Nanekar park	18.5204303	73.8567437
1482	Chinchwade nagar corner Akurdi road	18.5204303	73.8567437
1486	Wipro company Circle	18.5133118	73.82879
1488	Indrayani nagar Corner Jayanand Road	18.5204303	73.8567437
1493	Star gardan	18.475317	73.816215
1496	Kasturba general hospital	18.5724541	73.8813671
1499	Kekan ges agency	18.5204303	73.8567437
1502	Sadu nana wasti	18.506761	73.94
1503	Vitthalwadi Mandir Sadesataranali	18.508202	73.941246
1506	Sadesataranali	18.5141791	73.9499426
1509	Vidi Kamgar Vasahat Yerawada	18.5583214	73.88601
1514	Bhairavnagar pimple gurav	18.5867193	73.8154394
1517	Shivshakti mandir	18.5204303	73.8567437
1521	Pashan gaon	18.5396184	73.7955869
1524	Abhinav college	18.544885	73.779118
1558	Krishnai water park	18.4053927	73.7689717
1561	Tilak Bag	18.5204303	73.8567437
1564	Pingle Wasti	18.5204303	73.8567437
1567	Dimond watch company	18.533852	73.923752
1571	Keshavnagar pul	18.5204303	73.8567437
1573	Idrayani nagar bhosari	18.6343474	73.8411712
1578	Balsadan	18.5135398	73.8533876
1580	Malwadi Phulgaon	18.656031	74.0153231
1583	Kukut Palan Kendra	18.5204303	73.8567437
1587	Bhushan Soc	18.4489072	73.8642681
1590	Hagwane Padwal	18.441734	73.790413
1593	Nandoshi	18.4220836	73.8014693
1596	Manik colony	18.6285832	73.7878659
1599	Waghire height	18.5204303	73.8567437
1602	Raut wasti 	18.456512	73.960813
1605	Dhayreshwar Mandir	18.5204303	73.8567437
1609	Moze Adhyapak Vidyalaya Yerwada	18.54515	73.884236
1613	Agalambe Gaon	18.43151	73.717793
1617	Kunjir mala	18.5204303	73.8567437
1620	Power house theur	18.51942	74.046046
1623	Kunjir Wadi Goan 	18.5204303	73.8567437
1626	Chowdhari Bag 	18.5204303	73.8567437
1630	Damodar nagar	18.5089382	73.8275705
1633	Chaitanya bangala	18.5204303	73.8567437
1635	Deasi poultry farm	18.5204303	73.8567437
1639	Khandoba Mandir	18.453876	73.873541
1642	Aaimata Mandir	18.471058	73.87523
1645	Power house markal	18.6718661	73.9653715
1649	Indrayani pul	18.670046	73.984985
1652	Sawant College	18.4723729	73.9370843
1653	Ramya Nagari	18.4693262	73.8687372
1656	Autadewadi Phata	18.5204303	73.8567437
1659	Kudale farm	18.5204303	73.8567437
1662	Tikone Godown	18.5204303	73.8567437
1664	Dnyaneshwar Paduka Wade Bolhai	18.5204303	73.8567437
1668	Bagal Vasti	18.5204303	73.8567437
1671	Wade Bolhai	18.5204303	73.8567437
1675	Mhasoba wasti	18.4797807	73.9412863
1678	Ramchandranagar	18.5164908	73.8480476
1681	Santnagar Chowk Taware Colony	18.4868947	73.855506
1685	Transport nagar	18.6653272	73.767643
1688	Dhayareshwar Industries	18.5204303	73.8567437
1693	Shirole Petrol Pump	18.5204303	73.8567437
1695	Vittbhatti XPS Company	18.5204303	73.8567437
1699	Parandhwadi	18.6980909	73.6580359
1702	Sadgurunagar	18.63525	73.851463
1705	Dhavade wasti	18.525017	73.967346
1708	40 Aundh Road	18.562405	73.833546
1711	Sambhaji Chowk Ganesh Nagar	18.5111468	73.8371508
1714	Abhinav kala vidyalaya	18.5054837	73.8532734
1718	Shitole wasti Soos	18.5204303	73.8567437
1722	Nandegaon	18.4503623	73.7995397
1724	Shitole wasti Nandegaon	18.545401	73.713225
1728	Rautwadi	18.7161991	73.5526032
1731	Bhairoba Pumping Station	18.5204303	73.8567437
1733	Gulmohar City Military Stadium	18.5204303	73.8567437
1737	Rangehill Circle 1	18.5204303	73.8567437
1741	Shantiban	18.401176	73.721465
1134	Raviraj Hotel	18.5183409	73.840436
\.


--
-- Name: routes_stop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bususer
--

SELECT pg_catalog.setval('routes_stop_id_seq', 1745, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_key; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: routes_route_pkey; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY routes_route
    ADD CONSTRAINT routes_route_pkey PRIMARY KEY (id);


--
-- Name: routes_route_stops_pkey; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY routes_route_stops
    ADD CONSTRAINT routes_route_stops_pkey PRIMARY KEY (id);


--
-- Name: routes_route_stops_route_id_stop_id_key; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY routes_route_stops
    ADD CONSTRAINT routes_route_stops_route_id_stop_id_key UNIQUE (route_id, stop_id);


--
-- Name: routes_stop_pkey; Type: CONSTRAINT; Schema: public; Owner: bususer; Tablespace: 
--

ALTER TABLE ONLY routes_stop
    ADD CONSTRAINT routes_stop_pkey PRIMARY KEY (id);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: bususer; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: bususer; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: bususer; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: bususer; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: bususer; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: bususer; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: bususer; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: bususer; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: bususer; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: bususer; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: routes_route_from_stop_id; Type: INDEX; Schema: public; Owner: bususer; Tablespace: 
--

CREATE INDEX routes_route_from_stop_id ON routes_route USING btree (from_stop_id);


--
-- Name: routes_route_stops_route_id; Type: INDEX; Schema: public; Owner: bususer; Tablespace: 
--

CREATE INDEX routes_route_stops_route_id ON routes_route_stops USING btree (route_id);


--
-- Name: routes_route_stops_stop_id; Type: INDEX; Schema: public; Owner: bususer; Tablespace: 
--

CREATE INDEX routes_route_stops_stop_id ON routes_route_stops USING btree (stop_id);


--
-- Name: routes_route_to_stop_id; Type: INDEX; Schema: public; Owner: bususer; Tablespace: 
--

CREATE INDEX routes_route_to_stop_id ON routes_route USING btree (to_stop_id);


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_728de91f; Type: FK CONSTRAINT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_728de91f FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_3cea63fe; Type: FK CONSTRAINT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_3cea63fe FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: route_id_refs_id_97d531f3; Type: FK CONSTRAINT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY routes_route_stops
    ADD CONSTRAINT route_id_refs_id_97d531f3 FOREIGN KEY (route_id) REFERENCES routes_route(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: routes_route_from_stop_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY routes_route
    ADD CONSTRAINT routes_route_from_stop_id_fkey FOREIGN KEY (from_stop_id) REFERENCES routes_stop(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: routes_route_stops_stop_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY routes_route_stops
    ADD CONSTRAINT routes_route_stops_stop_id_fkey FOREIGN KEY (stop_id) REFERENCES routes_stop(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: routes_route_to_stop_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY routes_route
    ADD CONSTRAINT routes_route_to_stop_id_fkey FOREIGN KEY (to_stop_id) REFERENCES routes_stop(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_831107f1; Type: FK CONSTRAINT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_831107f1 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_f2045483; Type: FK CONSTRAINT; Schema: public; Owner: bususer
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_f2045483 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

