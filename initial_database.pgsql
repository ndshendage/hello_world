--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO postgres;

--
-- Name: components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE components (
    id integer NOT NULL,
    component_key character varying,
    expandable_component_type character varying,
    default_value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE components OWNER TO postgres;

--
-- Name: components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE components_id_seq OWNER TO postgres;

--
-- Name: components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE components_id_seq OWNED BY components.id;


--
-- Name: components_templates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE components_templates (
    template_id integer NOT NULL,
    component_id integer NOT NULL
);


ALTER TABLE components_templates OWNER TO postgres;

--
-- Name: devices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE devices (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    device_type character varying NOT NULL,
    data jsonb,
    user_id integer NOT NULL
);


ALTER TABLE devices OWNER TO postgres;

--
-- Name: devices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE devices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE devices_id_seq OWNER TO postgres;

--
-- Name: devices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE devices_id_seq OWNED BY devices.id;


--
-- Name: discount_codes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE discount_codes (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    uses integer DEFAULT 0 NOT NULL,
    maximum_uses integer DEFAULT '-1'::integer NOT NULL,
    text character varying NOT NULL,
    metadate text NOT NULL
);


ALTER TABLE discount_codes OWNER TO postgres;

--
-- Name: discount_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE discount_codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE discount_codes_id_seq OWNER TO postgres;

--
-- Name: discount_codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE discount_codes_id_seq OWNED BY discount_codes.id;


--
-- Name: enrollments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE enrollments (
    id integer NOT NULL,
    user_id integer NOT NULL,
    practice_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    practice_plan_id integer,
    plan_quantities integer
);


ALTER TABLE enrollments OWNER TO postgres;

--
-- Name: enrollments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE enrollments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE enrollments_id_seq OWNER TO postgres;

--
-- Name: enrollments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE enrollments_id_seq OWNED BY enrollments.id;


--
-- Name: extended_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE extended_components (
    id integer NOT NULL,
    component_key character varying,
    default_value jsonb NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE extended_components OWNER TO postgres;

--
-- Name: extended_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE extended_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE extended_components_id_seq OWNER TO postgres;

--
-- Name: extended_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE extended_components_id_seq OWNED BY extended_components.id;


--
-- Name: groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE groups (
    id integer NOT NULL,
    name character varying,
    provider_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE groups OWNER TO postgres;

--
-- Name: groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE groups_id_seq OWNER TO postgres;

--
-- Name: groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE groups_id_seq OWNED BY groups.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pages (
    id integer NOT NULL,
    page_key character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE pages OWNER TO postgres;

--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pages_id_seq OWNER TO postgres;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pages_id_seq OWNED BY pages.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE password_resets (
    id integer NOT NULL,
    user_id integer NOT NULL,
    password_digest character varying NOT NULL,
    token character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE password_resets OWNER TO postgres;

--
-- Name: password_resets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE password_resets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE password_resets_id_seq OWNER TO postgres;

--
-- Name: password_resets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE password_resets_id_seq OWNED BY password_resets.id;


--
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE payments (
    id integer NOT NULL,
    enrollment_id integer,
    payment_token character varying,
    refund_token character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    discount_code_id integer
);


ALTER TABLE payments OWNER TO postgres;

--
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE payments_id_seq OWNER TO postgres;

--
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE payments_id_seq OWNED BY payments.id;


--
-- Name: plans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE plans (
    id integer NOT NULL,
    name character varying,
    "interval" character varying,
    metadata jsonb,
    settings jsonb,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE plans OWNER TO postgres;

--
-- Name: plans_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE plans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE plans_id_seq OWNER TO postgres;

--
-- Name: plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE plans_id_seq OWNED BY plans.id;


--
-- Name: practice_discounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE practice_discounts (
    id integer NOT NULL,
    practice_id integer NOT NULL,
    discount_code_id integer NOT NULL,
    metadate text,
    uses integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE practice_discounts OWNER TO postgres;

--
-- Name: practice_discounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE practice_discounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE practice_discounts_id_seq OWNER TO postgres;

--
-- Name: practice_discounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE practice_discounts_id_seq OWNED BY practice_discounts.id;


--
-- Name: practice_plans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE practice_plans (
    id integer NOT NULL,
    practice_id integer NOT NULL,
    plan_id integer NOT NULL,
    name character varying,
    "interval" character varying,
    metadata jsonb,
    settings jsonb,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE practice_plans OWNER TO postgres;

--
-- Name: practice_plans_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE practice_plans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE practice_plans_id_seq OWNER TO postgres;

--
-- Name: practice_plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE practice_plans_id_seq OWNED BY practice_plans.id;


--
-- Name: practices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE practices (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    provider_id integer NOT NULL,
    background_image_id character varying,
    video_id character varying,
    description text,
    trial_sessions integer DEFAULT 0 NOT NULL,
    price integer DEFAULT 0 NOT NULL,
    hero_image_id character varying DEFAULT 'ydvkfhppshj9onrpymuw'::character varying,
    group_id integer
);


ALTER TABLE practices OWNER TO postgres;

--
-- Name: practices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE practices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE practices_id_seq OWNER TO postgres;

--
-- Name: practices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE practices_id_seq OWNED BY practices.id;


--
-- Name: provider_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE provider_components (
    id integer NOT NULL,
    provider_template_id integer NOT NULL,
    component_id integer NOT NULL,
    value character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE provider_components OWNER TO postgres;

--
-- Name: provider_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE provider_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE provider_components_id_seq OWNER TO postgres;

--
-- Name: provider_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE provider_components_id_seq OWNED BY provider_components.id;


--
-- Name: provider_extended_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE provider_extended_components (
    id integer NOT NULL,
    value jsonb NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE provider_extended_components OWNER TO postgres;

--
-- Name: provider_extended_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE provider_extended_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE provider_extended_components_id_seq OWNER TO postgres;

--
-- Name: provider_extended_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE provider_extended_components_id_seq OWNED BY provider_extended_components.id;


--
-- Name: provider_templates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE provider_templates (
    id integer NOT NULL,
    provider_id integer NOT NULL,
    page_id integer NOT NULL,
    template_id integer NOT NULL
);


ALTER TABLE provider_templates OWNER TO postgres;

--
-- Name: provider_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE provider_templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE provider_templates_id_seq OWNER TO postgres;

--
-- Name: provider_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE provider_templates_id_seq OWNED BY provider_templates.id;


--
-- Name: providers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE providers (
    id integer NOT NULL,
    logo_id character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying NOT NULL,
    description text,
    video_id character varying,
    background_image_id character varying,
    domain character varying NOT NULL,
    email_sender_name character varying NOT NULL,
    email_sender_address character varying NOT NULL,
    customizations jsonb,
    custom_ab_test_domain character varying DEFAULT 'http://www.pollinate.life/'::character varying
);


ALTER TABLE providers OWNER TO postgres;

--
-- Name: providers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE providers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE providers_id_seq OWNER TO postgres;

--
-- Name: providers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE providers_id_seq OWNED BY providers.id;


--
-- Name: reminder_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE reminder_settings (
    id integer NOT NULL,
    user_id integer,
    email_reminder boolean DEFAULT true,
    sms_reminder boolean DEFAULT true,
    time_zone character varying DEFAULT 'US/Pacific'::character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE reminder_settings OWNER TO postgres;

--
-- Name: reminder_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE reminder_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reminder_settings_id_seq OWNER TO postgres;

--
-- Name: reminder_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE reminder_settings_id_seq OWNED BY reminder_settings.id;


--
-- Name: reminders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE reminders (
    id integer NOT NULL,
    "time" character varying NOT NULL,
    days integer[] DEFAULT '{}'::integer[] NOT NULL,
    enrollment_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    next_occurrence timestamp without time zone NOT NULL,
    failed boolean DEFAULT false NOT NULL,
    time_zone character varying NOT NULL
);


ALTER TABLE reminders OWNER TO postgres;

--
-- Name: reminders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE reminders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reminders_id_seq OWNER TO postgres;

--
-- Name: reminders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE reminders_id_seq OWNED BY reminders.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO postgres;

--
-- Name: sections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sections (
    id integer NOT NULL,
    name character varying NOT NULL,
    practice_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE sections OWNER TO postgres;

--
-- Name: sections_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sections_id_seq OWNER TO postgres;

--
-- Name: sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sections_id_seq OWNED BY sections.id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sessions (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    description text,
    section_id integer,
    image_id character varying DEFAULT ''::character varying NOT NULL
);


ALTER TABLE sessions OWNER TO postgres;

--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sessions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sessions_id_seq OWNER TO postgres;

--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sessions_id_seq OWNED BY sessions.id;


--
-- Name: step_attempts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE step_attempts (
    id integer NOT NULL,
    step_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    response text
);


ALTER TABLE step_attempts OWNER TO postgres;

--
-- Name: step_attempts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE step_attempts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE step_attempts_id_seq OWNER TO postgres;

--
-- Name: step_attempts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE step_attempts_id_seq OWNED BY step_attempts.id;


--
-- Name: steps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE steps (
    id integer NOT NULL,
    name character varying NOT NULL,
    session_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    description character varying,
    step_type character varying NOT NULL,
    data jsonb,
    image_id character varying,
    quote text,
    attribution character varying
);


ALTER TABLE steps OWNER TO postgres;

--
-- Name: steps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE steps_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE steps_id_seq OWNER TO postgres;

--
-- Name: steps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE steps_id_seq OWNED BY steps.id;


--
-- Name: templates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE templates (
    id integer NOT NULL,
    template_key character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE templates OWNER TO postgres;

--
-- Name: templates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE templates_id_seq OWNER TO postgres;

--
-- Name: templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE templates_id_seq OWNED BY templates.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE users (
    id integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    email character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    password_digest character varying NOT NULL,
    onboarded boolean DEFAULT false NOT NULL,
    active boolean DEFAULT true NOT NULL,
    mobile_number character varying(20)
);


ALTER TABLE users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY components ALTER COLUMN id SET DEFAULT nextval('components_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY devices ALTER COLUMN id SET DEFAULT nextval('devices_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY discount_codes ALTER COLUMN id SET DEFAULT nextval('discount_codes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY enrollments ALTER COLUMN id SET DEFAULT nextval('enrollments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY extended_components ALTER COLUMN id SET DEFAULT nextval('extended_components_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY groups ALTER COLUMN id SET DEFAULT nextval('groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages ALTER COLUMN id SET DEFAULT nextval('pages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY password_resets ALTER COLUMN id SET DEFAULT nextval('password_resets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY payments ALTER COLUMN id SET DEFAULT nextval('payments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY plans ALTER COLUMN id SET DEFAULT nextval('plans_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY practice_discounts ALTER COLUMN id SET DEFAULT nextval('practice_discounts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY practice_plans ALTER COLUMN id SET DEFAULT nextval('practice_plans_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY practices ALTER COLUMN id SET DEFAULT nextval('practices_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY provider_components ALTER COLUMN id SET DEFAULT nextval('provider_components_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY provider_extended_components ALTER COLUMN id SET DEFAULT nextval('provider_extended_components_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY provider_templates ALTER COLUMN id SET DEFAULT nextval('provider_templates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY providers ALTER COLUMN id SET DEFAULT nextval('providers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reminder_settings ALTER COLUMN id SET DEFAULT nextval('reminder_settings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reminders ALTER COLUMN id SET DEFAULT nextval('reminders_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sections ALTER COLUMN id SET DEFAULT nextval('sections_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sessions ALTER COLUMN id SET DEFAULT nextval('sessions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY step_attempts ALTER COLUMN id SET DEFAULT nextval('step_attempts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY steps ALTER COLUMN id SET DEFAULT nextval('steps_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY templates ALTER COLUMN id SET DEFAULT nextval('templates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2016-08-27 09:06:50.454633	2016-08-27 09:06:50.454633
\.


--
-- Data for Name: components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY components (id, component_key, expandable_component_type, default_value, created_at, updated_at) FROM stdin;
\.


--
-- Name: components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('components_id_seq', 1, false);


--
-- Data for Name: components_templates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY components_templates (template_id, component_id) FROM stdin;
\.


--
-- Data for Name: devices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY devices (id, created_at, updated_at, device_type, data, user_id) FROM stdin;
\.


--
-- Name: devices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('devices_id_seq', 1, false);


--
-- Data for Name: discount_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY discount_codes (id, name, created_at, updated_at, uses, maximum_uses, text, metadate) FROM stdin;
3	navnath	2016-10-07 13:20:42.95369	2016-10-07 15:02:36.927632	0	-1	text for discount_code1	work
\.


--
-- Name: discount_codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('discount_codes_id_seq', 5, true);


--
-- Data for Name: enrollments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY enrollments (id, user_id, practice_id, created_at, updated_at, practice_plan_id, plan_quantities) FROM stdin;
1	1	1	2016-09-03 11:52:32.019059	2016-09-03 11:52:32.019059	\N	\N
\.


--
-- Name: enrollments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('enrollments_id_seq', 1, true);


--
-- Data for Name: extended_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY extended_components (id, component_key, default_value, created_at, updated_at) FROM stdin;
\.


--
-- Name: extended_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('extended_components_id_seq', 1, false);


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY groups (id, name, provider_id, created_at, updated_at) FROM stdin;
1	ATH	1	2016-09-03 11:00:48.455577	2016-09-03 11:00:48.455577
\.


--
-- Name: groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('groups_id_seq', 1, true);


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pages (id, page_key, created_at, updated_at) FROM stdin;
\.


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pages_id_seq', 1, false);


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY password_resets (id, user_id, password_digest, token, created_at, updated_at) FROM stdin;
\.


--
-- Name: password_resets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('password_resets_id_seq', 1, false);


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY payments (id, enrollment_id, payment_token, refund_token, created_at, updated_at, discount_code_id) FROM stdin;
1	1	xyz	pqr	2016-10-07 06:09:13.959734	2016-10-07 06:09:13.959734	\N
2	1	fukat	country	2016-10-07 15:26:45.812736	2016-10-07 15:29:50.757288	1
4	1	rahul123	jdscjs	2016-10-07 15:36:31.593704	2016-10-07 15:38:54.355727	12
\.


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('payments_id_seq', 5, true);


--
-- Data for Name: plans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY plans (id, name, "interval", metadata, settings, status, created_at, updated_at) FROM stdin;
1	abcd	\N	"abcd"	"true"	\N	2016-10-07 09:07:08.429062	2016-10-07 09:07:08.429062
\.


--
-- Name: plans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('plans_id_seq', 1, true);


--
-- Data for Name: practice_discounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY practice_discounts (id, practice_id, discount_code_id, metadate, uses, created_at, updated_at) FROM stdin;
\.


--
-- Name: practice_discounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('practice_discounts_id_seq', 1, false);


--
-- Data for Name: practice_plans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY practice_plans (id, practice_id, plan_id, name, "interval", metadata, settings, status, created_at, updated_at) FROM stdin;
2	1	1	"bharat"	bharat	"bara"	\N	f	2016-10-07 11:50:39.814628	2016-10-07 13:12:49.78858
3	1	1	nava	bharat	"viru"	\N	t	2016-10-07 14:29:05.907807	2016-10-07 14:29:05.907807
6	1	1	bharat	\N	"work"	\N	t	2016-10-10 05:14:18.951654	2016-10-10 05:14:18.951654
\.


--
-- Name: practice_plans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('practice_plans_id_seq', 11, true);


--
-- Data for Name: practices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY practices (id, name, created_at, updated_at, provider_id, background_image_id, video_id, description, trial_sessions, price, hero_image_id, group_id) FROM stdin;
1	Golf	2016-09-03 11:02:08.611422	2016-09-03 12:23:03.604854	1	1	\N	\N	0	1000	ydvkfhppshj9onrpymuw	1
\.


--
-- Name: practices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('practices_id_seq', 1, true);


--
-- Data for Name: provider_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY provider_components (id, provider_template_id, component_id, value, created_at, updated_at) FROM stdin;
\.


--
-- Name: provider_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('provider_components_id_seq', 1, false);


--
-- Data for Name: provider_extended_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY provider_extended_components (id, value, created_at, updated_at) FROM stdin;
\.


--
-- Name: provider_extended_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('provider_extended_components_id_seq', 1, false);


--
-- Data for Name: provider_templates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY provider_templates (id, provider_id, page_id, template_id) FROM stdin;
\.


--
-- Name: provider_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('provider_templates_id_seq', 1, false);


--
-- Data for Name: providers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY providers (id, logo_id, created_at, updated_at, name, description, video_id, background_image_id, domain, email_sender_name, email_sender_address, customizations, custom_ab_test_domain) FROM stdin;
1	\N	2016-09-03 10:51:26.032767	2016-09-03 12:22:21.112055	borker brother	UI experts	\N	1	pollinate.dev	santosh	santosh.kumbhar@athsstemsasia.com	\N	http://www.pollinate.life/
\.


--
-- Name: providers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('providers_id_seq', 1, true);


--
-- Data for Name: reminder_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY reminder_settings (id, user_id, email_reminder, sms_reminder, time_zone, created_at, updated_at) FROM stdin;
13	3	t	t	US/Pacific	2016-09-20 07:37:27.962578	2016-09-23 12:09:06.219029
2	1	f	f	Asia/Calcutta	2016-09-23 10:12:04.127105	2016-09-27 13:19:07.554902
\.


--
-- Name: reminder_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('reminder_settings_id_seq', 2, true);


--
-- Data for Name: reminders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY reminders (id, "time", days, enrollment_id, created_at, updated_at, next_occurrence, failed, time_zone) FROM stdin;
7	17:30	{0,1,2,6}	1	2016-09-06 12:32:16.418805	2016-09-19 12:00:01.244759	2016-09-20 12:00:00	f	Asia/Calcutta
15	10:00	{0,1,2,6}	1	2016-09-20 04:05:27.602199	2016-09-20 04:05:27.602199	2016-09-20 04:30:00	f	Asia/Calcutta
21	04:00	{0,1,2,3}	1	2016-09-23 11:14:14.228468	2016-09-23 11:14:14.228468	2016-09-25 11:00:00	f	Asia/Calcutta
24	10:00	{0,1,2}	1	2016-10-05 10:13:18.608414	2016-10-05 10:13:18.608414	2016-10-09 04:30:00	f	Asia/Calcutta
25	10:00	{0,1}	1	2016-10-06 09:42:28.049591	2016-10-06 09:42:28.049591	2016-10-09 04:30:00	f	Asia/Calcutta
26	10:00	{0}	1	2016-10-07 09:28:51.382214	2016-10-07 09:28:51.382214	2016-10-09 04:30:00	f	Asia/Calcutta
27	10:00	{0}	1	2016-10-07 09:29:59.61806	2016-10-07 09:29:59.61806	2016-10-09 04:30:00	f	Asia/Calcutta
28	10:00	{3}	1	2016-10-10 05:54:31.940906	2016-10-10 05:54:31.940906	2016-10-12 04:30:00	f	Asia/Calcutta
\.


--
-- Name: reminders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('reminders_id_seq', 28, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
20160215202343
20160219022359
20160219022615
20160222205211
20160223002628
20160223004716
20160223050412
20160225215110
20160226020445
20160229001946
20160229002440
20160229003250
20160229003842
20160302125724
20160302170702
20160303171331
20160307030042
20160307045826
20160312050945
20160312081517
20160315035950
20160326195532
20160327024803
20160331181305
20160331234651
20160406032854
20160406220820
20160407222529
20160408164735
20160408174207
20160409052129
20160409053009
20160411234828
20160412175653
20160412184021
20160412224148
20160414194504
20160415001152
20160419204830
20160419205242
20160422223250
20160424034957
20160424040029
20160424041650
20160425184327
20160426171359
20160428175612
20160505020337
20160507020417
20160603012620
20160609133351
20160617191609
20160619195625
20160621181859
20160716154955
20160820160606
20160820162104
20160905134151
20160905135813
20160920055710
20160920055746
20160920055855
20160920060025
20160923101546
20160923102508
20161004103912
20161004103943
20161006102123
20161006102210
20161006105014
20161006114034
20161006122020
\.


--
-- Data for Name: sections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sections (id, name, practice_id, created_at, updated_at) FROM stdin;
1	Morning	1	2016-09-03 11:05:49.017297	2016-09-03 11:05:49.017297
\.


--
-- Name: sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sections_id_seq', 1, true);


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sessions (id, name, created_at, updated_at, description, section_id, image_id) FROM stdin;
1	evening	2016-09-03 11:26:50.041164	2016-09-03 11:28:18.628304	test	1	1
\.


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sessions_id_seq', 1, true);


--
-- Data for Name: step_attempts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY step_attempts (id, step_id, user_id, created_at, updated_at, response) FROM stdin;
1	1	1	2016-09-03 11:50:33.146296	2016-09-03 11:50:33.146296	hello
2	1	1	2016-09-27 12:09:45.816068	2016-09-27 12:11:22.275206	\N
\.


--
-- Name: step_attempts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('step_attempts_id_seq', 2, true);


--
-- Data for Name: steps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY steps (id, name, session_id, created_at, updated_at, description, step_type, data, image_id, quote, attribution) FROM stdin;
1	initiATE	1	2016-09-03 11:34:37.610727	2016-09-03 11:34:37.610727	Test	information	\N	\N	\N	\N
\.


--
-- Name: steps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('steps_id_seq', 1, true);


--
-- Data for Name: templates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY templates (id, template_key, created_at, updated_at) FROM stdin;
\.


--
-- Name: templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('templates_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, first_name, last_name, email, created_at, updated_at, password_digest, onboarded, active) FROM stdin;
3	Hari	Hari1	hari31582@gmail.com	2016-09-03 10:57:59.135564	2016-09-23 10:23:00.657055	$2a$10$/BdyJQ1RSPh5YvJkUmYiYu5oHlQPUrZ.tRo3rQCBeicqGknSEXxcq	t	t	\N
1	Santosh	Kumbhar	kumbharsansk@gmail.com	2016-09-23 10:12:03.973618	2016-09-29 05:14:11.395403	$2a$10$JgRACeUM4XXg9r9tAyqx2.cLyBp83JlpdIwBsQfhJKy23xMn.eTIq	t	t
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 2, true);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY components
    ADD CONSTRAINT components_pkey PRIMARY KEY (id);


--
-- Name: devices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);


--
-- Name: discount_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY discount_codes
    ADD CONSTRAINT discount_codes_pkey PRIMARY KEY (id);


--
-- Name: enrollments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (id);


--
-- Name: extended_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY extended_components
    ADD CONSTRAINT extended_components_pkey PRIMARY KEY (id);


--
-- Name: groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- Name: pages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: password_resets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY password_resets
    ADD CONSTRAINT password_resets_pkey PRIMARY KEY (id);


--
-- Name: payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: plans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY plans
    ADD CONSTRAINT plans_pkey PRIMARY KEY (id);


--
-- Name: practice_discounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY practice_discounts
    ADD CONSTRAINT practice_discounts_pkey PRIMARY KEY (id);


--
-- Name: practice_plans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY practice_plans
    ADD CONSTRAINT practice_plans_pkey PRIMARY KEY (id);


--
-- Name: practices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY practices
    ADD CONSTRAINT practices_pkey PRIMARY KEY (id);


--
-- Name: provider_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY provider_components
    ADD CONSTRAINT provider_components_pkey PRIMARY KEY (id);


--
-- Name: provider_extended_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY provider_extended_components
    ADD CONSTRAINT provider_extended_components_pkey PRIMARY KEY (id);


--
-- Name: provider_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY provider_templates
    ADD CONSTRAINT provider_templates_pkey PRIMARY KEY (id);


--
-- Name: providers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY providers
    ADD CONSTRAINT providers_pkey PRIMARY KEY (id);


--
-- Name: reminder_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reminder_settings
    ADD CONSTRAINT reminder_settings_pkey PRIMARY KEY (id);


--
-- Name: reminders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reminders
    ADD CONSTRAINT reminders_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sections
    ADD CONSTRAINT sections_pkey PRIMARY KEY (id);


--
-- Name: sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: step_attempts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY step_attempts
    ADD CONSTRAINT step_attempts_pkey PRIMARY KEY (id);


--
-- Name: steps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY steps
    ADD CONSTRAINT steps_pkey PRIMARY KEY (id);


--
-- Name: templates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY templates
    ADD CONSTRAINT templates_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_components_templates_on_component_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_components_templates_on_component_id ON components_templates USING btree (component_id);


--
-- Name: index_components_templates_on_template_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_components_templates_on_template_id ON components_templates USING btree (template_id);


--
-- Name: index_devices_data_on_registration_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_devices_data_on_registration_id ON devices USING btree (((data ->> 'registration_id'::text)));


--
-- Name: index_devices_on_data; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_devices_on_data ON devices USING gin (data);


--
-- Name: index_devices_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_devices_on_user_id ON devices USING btree (user_id);


--
-- Name: index_discount_codes_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_discount_codes_on_name ON discount_codes USING btree (name);


--
-- Name: index_enrollments_on_practice_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_enrollments_on_practice_id ON enrollments USING btree (practice_id);


--
-- Name: index_enrollments_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_enrollments_on_user_id ON enrollments USING btree (user_id);


--
-- Name: index_groups_on_provider_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_groups_on_provider_id ON groups USING btree (provider_id);


--
-- Name: index_password_resets_on_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_password_resets_on_token ON password_resets USING btree (token);


--
-- Name: index_password_resets_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_password_resets_on_user_id ON password_resets USING btree (user_id);


--
-- Name: index_payments_on_enrollment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_payments_on_enrollment_id ON payments USING btree (enrollment_id);


--
-- Name: index_practice_discounts_on_discount_code_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_practice_discounts_on_discount_code_id ON practice_discounts USING btree (discount_code_id);


--
-- Name: index_practice_discounts_on_practice_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_practice_discounts_on_practice_id ON practice_discounts USING btree (practice_id);


--
-- Name: index_practice_plans_on_plan_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_practice_plans_on_plan_id ON practice_plans USING btree (plan_id);


--
-- Name: index_practice_plans_on_practice_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_practice_plans_on_practice_id ON practice_plans USING btree (practice_id);


--
-- Name: index_practices_on_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_practices_on_group_id ON practices USING btree (group_id);


--
-- Name: index_practices_on_provider_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_practices_on_provider_id ON practices USING btree (provider_id);


--
-- Name: index_provider_components_on_component_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_provider_components_on_component_id ON provider_components USING btree (component_id);


--
-- Name: index_provider_components_on_provider_template_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_provider_components_on_provider_template_id ON provider_components USING btree (provider_template_id);


--
-- Name: index_provider_templates_on_page_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_provider_templates_on_page_id ON provider_templates USING btree (page_id);


--
-- Name: index_provider_templates_on_provider_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_provider_templates_on_provider_id ON provider_templates USING btree (provider_id);


--
-- Name: index_provider_templates_on_template_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_provider_templates_on_template_id ON provider_templates USING btree (template_id);


--
-- Name: index_reminders_on_enrollment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_reminders_on_enrollment_id ON reminders USING btree (enrollment_id);


--
-- Name: index_reminders_on_next_occurrence; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_reminders_on_next_occurrence ON reminders USING btree (next_occurrence);


--
-- Name: index_sections_on_practice_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_sections_on_practice_id ON sections USING btree (practice_id);


--
-- Name: index_sessions_on_section_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_sessions_on_section_id ON sessions USING btree (section_id);


--
-- Name: index_step_attempts_on_step_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_step_attempts_on_step_id ON step_attempts USING btree (step_id);


--
-- Name: index_step_attempts_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_step_attempts_on_user_id ON step_attempts USING btree (user_id);


--
-- Name: index_steps_on_session_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_steps_on_session_id ON steps USING btree (session_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_email ON users USING btree (email);


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

