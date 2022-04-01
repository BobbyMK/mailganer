--
-- PostgreSQL database dump
--

-- Dumped from database version 13.5 (Ubuntu 13.5-0ubuntu0.21.10.1)
-- Dumped by pg_dump version 13.5 (Ubuntu 13.5-0ubuntu0.21.10.1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ganer
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO ganer;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ganer
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO ganer;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ganer
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ganer
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO ganer;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ganer
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO ganer;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ganer
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ganer
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO ganer;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ganer
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO ganer;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ganer
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ganer
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO ganer;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ganer
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO ganer;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ganer
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO ganer;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ganer
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ganer
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO ganer;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ganer
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ganer
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO ganer;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ganer
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO ganer;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ganer
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ganer
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


ALTER TABLE public.django_admin_log OWNER TO ganer;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ganer
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO ganer;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ganer
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ganer
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO ganer;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ganer
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO ganer;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ganer
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ganer
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO ganer;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ganer
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO ganer;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ganer
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ganer
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO ganer;

--
-- Name: mailing_emailtemplate; Type: TABLE; Schema: public; Owner: ganer
--

CREATE TABLE public.mailing_emailtemplate (
    id integer NOT NULL,
    subject character varying(300) NOT NULL,
    content text NOT NULL
);


ALTER TABLE public.mailing_emailtemplate OWNER TO ganer;

--
-- Name: mailing_emailtemplate_id_seq; Type: SEQUENCE; Schema: public; Owner: ganer
--

CREATE SEQUENCE public.mailing_emailtemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mailing_emailtemplate_id_seq OWNER TO ganer;

--
-- Name: mailing_emailtemplate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ganer
--

ALTER SEQUENCE public.mailing_emailtemplate_id_seq OWNED BY public.mailing_emailtemplate.id;


--
-- Name: mailing_message; Type: TABLE; Schema: public; Owner: ganer
--

CREATE TABLE public.mailing_message (
    id integer NOT NULL,
    opened boolean NOT NULL,
    recipient_id integer NOT NULL,
    text text NOT NULL
);


ALTER TABLE public.mailing_message OWNER TO ganer;

--
-- Name: mailing_message_id_seq; Type: SEQUENCE; Schema: public; Owner: ganer
--

CREATE SEQUENCE public.mailing_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mailing_message_id_seq OWNER TO ganer;

--
-- Name: mailing_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ganer
--

ALTER SEQUENCE public.mailing_message_id_seq OWNED BY public.mailing_message.id;


--
-- Name: mailing_subscriber; Type: TABLE; Schema: public; Owner: ganer
--

CREATE TABLE public.mailing_subscriber (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    birthday character varying(10) NOT NULL,
    email character varying(100) NOT NULL
);


ALTER TABLE public.mailing_subscriber OWNER TO ganer;

--
-- Name: mailing_subscriber_id_seq; Type: SEQUENCE; Schema: public; Owner: ganer
--

CREATE SEQUENCE public.mailing_subscriber_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mailing_subscriber_id_seq OWNER TO ganer;

--
-- Name: mailing_subscriber_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ganer
--

ALTER SEQUENCE public.mailing_subscriber_id_seq OWNED BY public.mailing_subscriber.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: mailing_emailtemplate id; Type: DEFAULT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.mailing_emailtemplate ALTER COLUMN id SET DEFAULT nextval('public.mailing_emailtemplate_id_seq'::regclass);


--
-- Name: mailing_message id; Type: DEFAULT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.mailing_message ALTER COLUMN id SET DEFAULT nextval('public.mailing_message_id_seq'::regclass);


--
-- Name: mailing_subscriber id; Type: DEFAULT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.mailing_subscriber ALTER COLUMN id SET DEFAULT nextval('public.mailing_subscriber_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ganer
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ganer
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ganer
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add permission	3	add_permission
8	Can change permission	3	change_permission
9	Can delete permission	3	delete_permission
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add email template	7	add_emailtemplate
20	Can change email template	7	change_emailtemplate
21	Can delete email template	7	delete_emailtemplate
22	Can add subscriber	8	add_subscriber
23	Can change subscriber	8	change_subscriber
24	Can delete subscriber	8	delete_subscriber
25	Can add message	9	add_message
26	Can change message	9	change_message
27	Can delete message	9	delete_message
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ganer
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$PJAmoaf5s25B$a7BewlyJ3D9KQ+DJsymtM2ITlPdsm4HaH/sowRkvXCg=	2022-03-30 01:35:08.129379+03	t	bobby			qwe@mailer.rub	t	t	2022-03-30 01:34:41.904704+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ganer
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ganer
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ganer
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-03-30 01:35:51.569734+03	1	Subscriber object	1	[{"added": {}}]	8	1
2	2022-03-30 01:36:21.119878+03	2	Subscriber object	1	[{"added": {}}]	8	1
3	2022-03-30 01:36:53.340174+03	3	Subscriber object	1	[{"added": {}}]	8	1
4	2022-03-30 20:03:38.544369+03	1	EmailTemplate object	1	[{"added": {}}]	7	1
5	2022-04-01 05:52:11.42069+03	2	EmailTemplate object	1	[{"added": {}}]	7	1
6	2022-04-01 05:55:13.603729+03	2	EmailTemplate object	2	[{"changed": {"fields": ["content"]}}]	7	1
7	2022-04-01 05:59:35.956788+03	2	EmailTemplate object	3		7	1
8	2022-04-01 07:43:11.759237+03	3	EmailTemplate object	1	[{"added": {}}]	7	1
9	2022-04-01 07:50:08.855522+03	3	EmailTemplate object	2	[{"changed": {"fields": ["content"]}}]	7	1
10	2022-04-01 08:58:34.170709+03	3	EmailTemplate object	3		7	1
11	2022-04-01 08:58:49.175044+03	1	EmailTemplate object	2	[{"changed": {"fields": ["content"]}}]	7	1
12	2022-04-01 09:00:58.500375+03	4	EmailTemplate object	1	[{"added": {}}]	7	1
13	2022-04-01 09:01:05.443748+03	1	EmailTemplate object	2	[]	7	1
14	2022-04-01 09:01:19.293713+03	4	EmailTemplate object	2	[{"changed": {"fields": ["content"]}}]	7	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ganer
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	group
3	auth	permission
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	mailing	emailtemplate
8	mailing	subscriber
9	mailing	message
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ganer
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-03-29 23:15:01.73218+03
2	auth	0001_initial	2022-03-29 23:15:02.733999+03
3	admin	0001_initial	2022-03-29 23:15:03.011786+03
4	admin	0002_logentry_remove_auto_add	2022-03-29 23:15:03.067146+03
5	contenttypes	0002_remove_content_type_name	2022-03-29 23:15:03.177651+03
6	auth	0002_alter_permission_name_max_length	2022-03-29 23:15:03.199325+03
7	auth	0003_alter_user_email_max_length	2022-03-29 23:15:03.232448+03
8	auth	0004_alter_user_username_opts	2022-03-29 23:15:03.263227+03
9	auth	0005_alter_user_last_login_null	2022-03-29 23:15:03.299776+03
10	auth	0006_require_contenttypes_0002	2022-03-29 23:15:03.310877+03
11	auth	0007_alter_validators_add_error_messages	2022-03-29 23:15:03.341345+03
12	auth	0008_alter_user_username_max_length	2022-03-29 23:15:03.446822+03
13	sessions	0001_initial	2022-03-29 23:15:03.644418+03
14	mailing	0001_initial	2022-03-30 01:33:16.442741+03
15	mailing	0002_subscriber_email	2022-03-30 01:52:57.657314+03
16	mailing	0003_message	2022-04-01 07:11:03.143253+03
17	mailing	0004_auto_20220401_0551	2022-04-01 08:52:02.315636+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ganer
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ragt014djtrxq7cny9ashcw8vqn9e1d2	OTc3NWQ0N2RkZGZiOWIzNjA3OTc0MGQ1OWU4MDE2NDhmOWM2MDhjNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjY5N2FhZWQ2YTczNDMwYzQyMjEyZmJmZGVhZDYwYjVkYjYwZDUyNDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2022-04-13 01:35:08.230144+03
\.


--
-- Data for Name: mailing_emailtemplate; Type: TABLE DATA; Schema: public; Owner: ganer
--

COPY public.mailing_emailtemplate (id, subject, content) FROM stdin;
1	Welcome	<p>Привет, {{ full_name }}! Ты родился {{ birthday }}, верно?</p>\r\n\r\n<img src="{{ uri }}" height="40px" width="40px"/>
4	some	<html>\r\n<head>\r\n    \r\n   <title>Tutsplus Email Newsletter</title>\r\n   <style type="text/css">\r\n    a {color: #d80a3e;}\r\n  body, #header h1, #header h2, p {margin: 0; padding: 0;}\r\n  #main {border: 1px solid #cfcece;}\r\n  img {display: block;}\r\n  #top-message p, #bottom p {color: #3f4042; font-size: 12px; font-family: Arial, Helvetica, sans-serif; }\r\n  #header h1 {color: #ffffff !important; font-family: "Lucida Grande", sans-serif; font-size: 24px; margin-bottom: 0!important; padding-bottom: 0; }\r\n  #header p {color: #ffffff !important; font-family: "Lucida Grande", "Lucida Sans", "Lucida Sans Unicode", sans-serif; font-size: 12px;  }\r\n  h5 {margin: 0 0 0.8em 0;}\r\n    h5 {font-size: 18px; color: #444444 !important; font-family: Arial, Helvetica, sans-serif; }\r\n  p {font-size: 12px; color: #444444 !important; font-family: "Lucida Grande", "Lucida Sans", "Lucida Sans Unicode", sans-serif; line-height: 1.5;}\r\n   </style>\r\n</head>\r\n<body>\r\n<table width="100%" cellpadding="0" cellspacing="0" bgcolor="e4e4e4"><tr><td>\r\n<table id="top-message" cellpadding="20" cellspacing="0" width="600" align="center">\r\n    <tr>\r\n      <td align="center">\r\n        <p><a href="#">View in Browser</a></p>\r\n      </td>\r\n    </tr>\r\n  </table>\r\n \r\n<table id="main" width="600" align="center" cellpadding="0" cellspacing="15" bgcolor="ffffff">\r\n    <tr>\r\n      <td>\r\n        <table id="header" cellpadding="10" cellspacing="0" align="center" bgcolor="8fb3e9">\r\n          <tr>\r\n            <td width="570" align="center"  bgcolor="#d80a3e"><h1>Evanto Limited</h1></td>\r\n          </tr>\r\n          <tr>\r\n            <td width="570" align="right" bgcolor="#d80a3e"><p>November 2017</p></td>\r\n          </tr>\r\n        </table>\r\n      </td>\r\n    </tr>\r\n \r\n    <tr>\r\n      <td>\r\n        <table id="content-3" cellpadding="0" cellspacing="0" align="center">\r\n          <tr>\r\n              <td width="250" valign="top" bgcolor="d0d0d0" style="padding:5px;">\r\n              <img src="https://thumbsplus.tutsplus.com/uploads/users/30/posts/29520/preview_image/pre.png" width="250" height="150"  />\r\n            </td>\r\n              <td width="15"></td>\r\n            <td width="250" valign="top" bgcolor="d0d0d0" style="padding:5px;">\r\n                <img src="https://cms-assets.tutsplus.com/uploads/users/30/posts/29642/preview_image/vue-2.png" width ="250" height="150" />\r\n            </td>\r\n          </tr>\r\n        </table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td>\r\n        <table id="content-4" cellpadding="0" cellspacing="0" align="center">\r\n          <tr>\r\n            <td width="200" valign="top">\r\n              <h5>Hello {{ full_name }}, who borned on {{ birthday }}</h5>\r\n              <p>In the introductory post for this series we spoke a little about how web designers can benefit by using Vue. In this tutorial we’ll learn how to get Vue up..</p>\r\n            </td>\r\n            <td width="15"></td>\r\n            <td width="200" valign="top">\r\n              <h5>Introducing Haiku: Design and Create Motion</h5>\r\n              <p>With motion on the rise amongst web developers so too are the tools that help to streamline its creation. Haiku is a stand-alone..</p>\r\n            </td>\r\n          </tr>\r\n        </table>\r\n      </td>\r\n    </tr>\r\n  </table>\r\n  <table id="bottom" cellpadding="20" cellspacing="0" width="600" align="center">\r\n    <tr>\r\n      <td align="center">\r\n        <p>Design better experiences for web & mobile</p>\r\n        <p><a href="#">Unsubscribe</a> | <a href="#">Tweet</a> | <a href="#">View in Browser</a></p>\r\n      </td>\r\n    </tr>\r\n  </table><!-- top message -->\r\n</td></tr></table><!-- wrapper -->\r\n<img src="{{ uri }}" height="40px" width="40px"/>\r\n \r\n</body>\r\n</html>
\.


--
-- Data for Name: mailing_message; Type: TABLE DATA; Schema: public; Owner: ganer
--

COPY public.mailing_message (id, opened, recipient_id, text) FROM stdin;
1	f	2	
2	f	2	
3	f	2	
4	f	2	
5	f	2	
6	f	2	
7	f	2	
8	f	2	
9	f	2	
10	f	2	
11	f	2	
12	f	2	
13	f	2	
14	f	2	
15	f	2	
16	f	2	
17	f	2	
18	f	2	
19	f	2	
20	f	2	
21	f	2	<h1>Hi {{ full_name }}</h1>\r\n<img src="{{ uri }}" height="40px" width="40px"/>
22	f	2	<html>\r\n<head>\r\n    \r\n   <title>Tutsplus Email Newsletter</title>\r\n   <style type="text/css">\r\n    a {color: #d80a3e;}\r\n  body, #header h1, #header h2, p {margin: 0; padding: 0;}\r\n  #main {border: 1px solid #cfcece;}\r\n  img {display: block;}\r\n  #top-message p, #bottom p {color: #3f4042; font-size: 12px; font-family: Arial, Helvetica, sans-serif; }\r\n  #header h1 {color: #ffffff !important; font-family: "Lucida Grande", sans-serif; font-size: 24px; margin-bottom: 0!important; padding-bottom: 0; }\r\n  #header p {color: #ffffff !important; font-family: "Lucida Grande", "Lucida Sans", "Lucida Sans Unicode", sans-serif; font-size: 12px;  }\r\n  h5 {margin: 0 0 0.8em 0;}\r\n    h5 {font-size: 18px; color: #444444 !important; font-family: Arial, Helvetica, sans-serif; }\r\n  p {font-size: 12px; color: #444444 !important; font-family: "Lucida Grande", "Lucida Sans", "Lucida Sans Unicode", sans-serif; line-height: 1.5;}\r\n   </style>\r\n</head>\r\n<body>\r\n<table width="100%" cellpadding="0" cellspacing="0" bgcolor="e4e4e4"><tr><td>\r\n<table id="top-message" cellpadding="20" cellspacing="0" width="600" align="center">\r\n    <tr>\r\n      <td align="center">\r\n        <p><a href="#">View in Browser</a></p>\r\n      </td>\r\n    </tr>\r\n  </table>\r\n \r\n<table id="main" width="600" align="center" cellpadding="0" cellspacing="15" bgcolor="ffffff">\r\n    <tr>\r\n      <td>\r\n        <table id="header" cellpadding="10" cellspacing="0" align="center" bgcolor="8fb3e9">\r\n          <tr>\r\n            <td width="570" align="center"  bgcolor="#d80a3e"><h1>Evanto Limited</h1></td>\r\n          </tr>\r\n          <tr>\r\n            <td width="570" align="right" bgcolor="#d80a3e"><p>November 2017</p></td>\r\n          </tr>\r\n        </table>\r\n      </td>\r\n    </tr>\r\n \r\n    <tr>\r\n      <td>\r\n        <table id="content-3" cellpadding="0" cellspacing="0" align="center">\r\n          <tr>\r\n              <td width="250" valign="top" bgcolor="d0d0d0" style="padding:5px;">\r\n              <img src="https://thumbsplus.tutsplus.com/uploads/users/30/posts/29520/preview_image/pre.png" width="250" height="150"  />\r\n            </td>\r\n              <td width="15"></td>\r\n            <td width="250" valign="top" bgcolor="d0d0d0" style="padding:5px;">\r\n                <img src="https://cms-assets.tutsplus.com/uploads/users/30/posts/29642/preview_image/vue-2.png" width ="250" height="150" />\r\n            </td>\r\n          </tr>\r\n        </table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td>\r\n        <table id="content-4" cellpadding="0" cellspacing="0" align="center">\r\n          <tr>\r\n            <td width="200" valign="top">\r\n              <h5>Hello {{ full_name }}, who borned on {{ birthday }}</h5>\r\n              <p>In the introductory post for this series we spoke a little about how web designers can benefit by using Vue. In this tutorial we’ll learn how to get Vue up..</p>\r\n            </td>\r\n            <td width="15"></td>\r\n            <td width="200" valign="top">\r\n              <h5>Introducing Haiku: Design and Create Motion</h5>\r\n              <p>With motion on the rise amongst web developers so too are the tools that help to streamline its creation. Haiku is a stand-alone..</p>\r\n            </td>\r\n          </tr>\r\n        </table>\r\n      </td>\r\n    </tr>\r\n  </table>\r\n  <table id="bottom" cellpadding="20" cellspacing="0" width="600" align="center">\r\n    <tr>\r\n      <td align="center">\r\n        <p>Design better experiences for web & mobile</p>\r\n        <p><a href="#">Unsubscribe</a> | <a href="#">Tweet</a> | <a href="#">View in Browser</a></p>\r\n      </td>\r\n    </tr>\r\n  </table><!-- top message -->\r\n</td></tr></table><!-- wrapper -->\r\n<img src="{{ uri }}" height="40px" width="40px"/>\r\n \r\n</body>\r\n</html>
\.


--
-- Data for Name: mailing_subscriber; Type: TABLE DATA; Schema: public; Owner: ganer
--

COPY public.mailing_subscriber (id, first_name, last_name, birthday, email) FROM stdin;
2	Ben	Bennet	14.05.1992	www.redbuller@mail.ru
3	Frank	Franklin	28.01.1866	www.redbuller@mail.ru
1	John	Majong	26.08.1981	www.redbuller@mail.ru
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ganer
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ganer
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ganer
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 27, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ganer
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ganer
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ganer
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ganer
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 14, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ganer
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ganer
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 17, true);


--
-- Name: mailing_emailtemplate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ganer
--

SELECT pg_catalog.setval('public.mailing_emailtemplate_id_seq', 4, true);


--
-- Name: mailing_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ganer
--

SELECT pg_catalog.setval('public.mailing_message_id_seq', 22, true);


--
-- Name: mailing_subscriber_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ganer
--

SELECT pg_catalog.setval('public.mailing_subscriber_id_seq', 10004, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: mailing_emailtemplate mailing_emailtemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.mailing_emailtemplate
    ADD CONSTRAINT mailing_emailtemplate_pkey PRIMARY KEY (id);


--
-- Name: mailing_message mailing_message_pkey; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.mailing_message
    ADD CONSTRAINT mailing_message_pkey PRIMARY KEY (id);


--
-- Name: mailing_subscriber mailing_subscriber_pkey; Type: CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.mailing_subscriber
    ADD CONSTRAINT mailing_subscriber_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: mailing_emailtemplate_subject_d8edee4f; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX mailing_emailtemplate_subject_d8edee4f ON public.mailing_emailtemplate USING btree (subject);


--
-- Name: mailing_emailtemplate_subject_d8edee4f_like; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX mailing_emailtemplate_subject_d8edee4f_like ON public.mailing_emailtemplate USING btree (subject varchar_pattern_ops);


--
-- Name: mailing_message_recipient_id_f02d931e; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX mailing_message_recipient_id_f02d931e ON public.mailing_message USING btree (recipient_id);


--
-- Name: mailing_subscriber_email_eea880e3; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX mailing_subscriber_email_eea880e3 ON public.mailing_subscriber USING btree (email);


--
-- Name: mailing_subscriber_email_eea880e3_like; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX mailing_subscriber_email_eea880e3_like ON public.mailing_subscriber USING btree (email varchar_pattern_ops);


--
-- Name: mailing_subscriber_first_name_187d6490; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX mailing_subscriber_first_name_187d6490 ON public.mailing_subscriber USING btree (first_name);


--
-- Name: mailing_subscriber_first_name_187d6490_like; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX mailing_subscriber_first_name_187d6490_like ON public.mailing_subscriber USING btree (first_name varchar_pattern_ops);


--
-- Name: mailing_subscriber_last_name_6c4611a2; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX mailing_subscriber_last_name_6c4611a2 ON public.mailing_subscriber USING btree (last_name);


--
-- Name: mailing_subscriber_last_name_6c4611a2_like; Type: INDEX; Schema: public; Owner: ganer
--

CREATE INDEX mailing_subscriber_last_name_6c4611a2_like ON public.mailing_subscriber USING btree (last_name varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mailing_message mailing_message_recipient_id_f02d931e_fk_mailing_subscriber_id; Type: FK CONSTRAINT; Schema: public; Owner: ganer
--

ALTER TABLE ONLY public.mailing_message
    ADD CONSTRAINT mailing_message_recipient_id_f02d931e_fk_mailing_subscriber_id FOREIGN KEY (recipient_id) REFERENCES public.mailing_subscriber(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

