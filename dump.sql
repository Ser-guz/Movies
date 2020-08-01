--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

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

SET default_with_oids = false;

--
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO sergei;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO sergei;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO sergei;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO sergei;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO sergei;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO sergei;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO sergei;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO sergei;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO sergei;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO sergei;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO sergei;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO sergei;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO sergei;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO sergei;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO sergei;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO sergei;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: contact_contact; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.contact_contact (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    date timestamp with time zone NOT NULL
);


ALTER TABLE public.contact_contact OWNER TO sergei;

--
-- Name: contact_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.contact_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_contact_id_seq OWNER TO sergei;

--
-- Name: contact_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.contact_contact_id_seq OWNED BY public.contact_contact.id;


--
-- Name: contact_sub_contact; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.contact_sub_contact (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    data timestamp with time zone NOT NULL
);


ALTER TABLE public.contact_sub_contact OWNER TO sergei;

--
-- Name: contact_sub_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.contact_sub_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_sub_contact_id_seq OWNER TO sergei;

--
-- Name: contact_sub_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.contact_sub_contact_id_seq OWNED BY public.contact_sub_contact.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: sergei
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


ALTER TABLE public.django_admin_log OWNER TO sergei;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO sergei;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO sergei;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO sergei;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_flatpage; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.django_flatpage (
    id integer NOT NULL,
    url character varying(100) NOT NULL,
    title character varying(200) NOT NULL,
    content text NOT NULL,
    enable_comments boolean NOT NULL,
    template_name character varying(70) NOT NULL,
    registration_required boolean NOT NULL
);


ALTER TABLE public.django_flatpage OWNER TO sergei;

--
-- Name: django_flatpage_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.django_flatpage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_flatpage_id_seq OWNER TO sergei;

--
-- Name: django_flatpage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.django_flatpage_id_seq OWNED BY public.django_flatpage.id;


--
-- Name: django_flatpage_sites; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.django_flatpage_sites (
    id integer NOT NULL,
    flatpage_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.django_flatpage_sites OWNER TO sergei;

--
-- Name: django_flatpage_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.django_flatpage_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_flatpage_sites_id_seq OWNER TO sergei;

--
-- Name: django_flatpage_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.django_flatpage_sites_id_seq OWNED BY public.django_flatpage_sites.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO sergei;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO sergei;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO sergei;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO sergei;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO sergei;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: movies_app_actor; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.movies_app_actor (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    age smallint NOT NULL,
    description text NOT NULL,
    image character varying(100) NOT NULL,
    description_en text,
    description_ru text,
    name_en character varying(100),
    name_ru character varying(100),
    CONSTRAINT movies_app_actor_age_check CHECK ((age >= 0))
);


ALTER TABLE public.movies_app_actor OWNER TO sergei;

--
-- Name: movies_app_actor_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.movies_app_actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_app_actor_id_seq OWNER TO sergei;

--
-- Name: movies_app_actor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.movies_app_actor_id_seq OWNED BY public.movies_app_actor.id;


--
-- Name: movies_app_category; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.movies_app_category (
    id integer NOT NULL,
    name character varying(15) NOT NULL,
    description text NOT NULL,
    url character varying(100) NOT NULL,
    description_en text,
    description_ru text,
    name_en character varying(15),
    name_ru character varying(15)
);


ALTER TABLE public.movies_app_category OWNER TO sergei;

--
-- Name: movies_app_category_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.movies_app_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_app_category_id_seq OWNER TO sergei;

--
-- Name: movies_app_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.movies_app_category_id_seq OWNED BY public.movies_app_category.id;


--
-- Name: movies_app_genre; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.movies_app_genre (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    url character varying(100) NOT NULL,
    description_en text,
    description_ru text,
    name_en character varying(100),
    name_ru character varying(100)
);


ALTER TABLE public.movies_app_genre OWNER TO sergei;

--
-- Name: movies_app_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.movies_app_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_app_genre_id_seq OWNER TO sergei;

--
-- Name: movies_app_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.movies_app_genre_id_seq OWNED BY public.movies_app_genre.id;


--
-- Name: movies_app_movie; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.movies_app_movie (
    id integer NOT NULL,
    title character varying(150) NOT NULL,
    tagline character varying(100) NOT NULL,
    description text NOT NULL,
    poster character varying(100) NOT NULL,
    year smallint NOT NULL,
    country character varying(30) NOT NULL,
    world_premiere date NOT NULL,
    budget integer NOT NULL,
    fees_in_country integer NOT NULL,
    fees_in_world integer NOT NULL,
    url character varying(100) NOT NULL,
    draft boolean NOT NULL,
    category_id integer,
    country_en character varying(30),
    country_ru character varying(30),
    description_en text,
    description_ru text,
    tagline_en character varying(100),
    tagline_ru character varying(100),
    title_en character varying(150),
    title_ru character varying(150),
    CONSTRAINT movies_app_movie_budget_check CHECK ((budget >= 0)),
    CONSTRAINT movies_app_movie_fees_in_country_check CHECK ((fees_in_country >= 0)),
    CONSTRAINT movies_app_movie_fees_in_world_check CHECK ((fees_in_world >= 0)),
    CONSTRAINT movies_app_movie_year_check CHECK ((year >= 0))
);


ALTER TABLE public.movies_app_movie OWNER TO sergei;

--
-- Name: movies_app_movie_actors; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.movies_app_movie_actors (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    actor_id integer NOT NULL
);


ALTER TABLE public.movies_app_movie_actors OWNER TO sergei;

--
-- Name: movies_app_movie_actor_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.movies_app_movie_actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_app_movie_actor_id_seq OWNER TO sergei;

--
-- Name: movies_app_movie_actor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.movies_app_movie_actor_id_seq OWNED BY public.movies_app_movie_actors.id;


--
-- Name: movies_app_movie_directors; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.movies_app_movie_directors (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    actor_id integer NOT NULL
);


ALTER TABLE public.movies_app_movie_directors OWNER TO sergei;

--
-- Name: movies_app_movie_directors_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.movies_app_movie_directors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_app_movie_directors_id_seq OWNER TO sergei;

--
-- Name: movies_app_movie_directors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.movies_app_movie_directors_id_seq OWNED BY public.movies_app_movie_directors.id;


--
-- Name: movies_app_movie_genres; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.movies_app_movie_genres (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE public.movies_app_movie_genres OWNER TO sergei;

--
-- Name: movies_app_movie_genres_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.movies_app_movie_genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_app_movie_genres_id_seq OWNER TO sergei;

--
-- Name: movies_app_movie_genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.movies_app_movie_genres_id_seq OWNED BY public.movies_app_movie_genres.id;


--
-- Name: movies_app_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.movies_app_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_app_movie_id_seq OWNER TO sergei;

--
-- Name: movies_app_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.movies_app_movie_id_seq OWNED BY public.movies_app_movie.id;


--
-- Name: movies_app_movieshort; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.movies_app_movieshort (
    id integer NOT NULL,
    title character varying(150) NOT NULL,
    description text NOT NULL,
    image character varying(100) NOT NULL,
    movie_id integer NOT NULL,
    description_en text,
    description_ru text,
    title_en character varying(150),
    title_ru character varying(150)
);


ALTER TABLE public.movies_app_movieshort OWNER TO sergei;

--
-- Name: movies_app_movieshort_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.movies_app_movieshort_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_app_movieshort_id_seq OWNER TO sergei;

--
-- Name: movies_app_movieshort_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.movies_app_movieshort_id_seq OWNED BY public.movies_app_movieshort.id;


--
-- Name: movies_app_rating; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.movies_app_rating (
    id integer NOT NULL,
    ip character varying(15) NOT NULL,
    movie_id integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.movies_app_rating OWNER TO sergei;

--
-- Name: movies_app_ratingstar; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.movies_app_ratingstar (
    id integer NOT NULL,
    value smallint NOT NULL,
    CONSTRAINT movies_app_ratingstar_value_check CHECK ((value >= 0))
);


ALTER TABLE public.movies_app_ratingstar OWNER TO sergei;

--
-- Name: movies_app_reting_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.movies_app_reting_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_app_reting_id_seq OWNER TO sergei;

--
-- Name: movies_app_reting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.movies_app_reting_id_seq OWNED BY public.movies_app_rating.id;


--
-- Name: movies_app_retingstar_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.movies_app_retingstar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_app_retingstar_id_seq OWNER TO sergei;

--
-- Name: movies_app_retingstar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.movies_app_retingstar_id_seq OWNED BY public.movies_app_ratingstar.id;


--
-- Name: movies_app_reviews; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.movies_app_reviews (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    name character varying(100) NOT NULL,
    text text NOT NULL,
    movie_id integer NOT NULL,
    parent_id integer
);


ALTER TABLE public.movies_app_reviews OWNER TO sergei;

--
-- Name: movies_app_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.movies_app_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_app_reviews_id_seq OWNER TO sergei;

--
-- Name: movies_app_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.movies_app_reviews_id_seq OWNED BY public.movies_app_reviews.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO sergei;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO sergei;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO sergei;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO sergei;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO sergei;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO sergei;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: sergei
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO sergei;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: sergei
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO sergei;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergei
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: contact_contact id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.contact_contact ALTER COLUMN id SET DEFAULT nextval('public.contact_contact_id_seq'::regclass);


--
-- Name: contact_sub_contact id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.contact_sub_contact ALTER COLUMN id SET DEFAULT nextval('public.contact_sub_contact_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_flatpage id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_flatpage ALTER COLUMN id SET DEFAULT nextval('public.django_flatpage_id_seq'::regclass);


--
-- Name: django_flatpage_sites id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_flatpage_sites ALTER COLUMN id SET DEFAULT nextval('public.django_flatpage_sites_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: movies_app_actor id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_actor ALTER COLUMN id SET DEFAULT nextval('public.movies_app_actor_id_seq'::regclass);


--
-- Name: movies_app_category id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_category ALTER COLUMN id SET DEFAULT nextval('public.movies_app_category_id_seq'::regclass);


--
-- Name: movies_app_genre id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_genre ALTER COLUMN id SET DEFAULT nextval('public.movies_app_genre_id_seq'::regclass);


--
-- Name: movies_app_movie id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie ALTER COLUMN id SET DEFAULT nextval('public.movies_app_movie_id_seq'::regclass);


--
-- Name: movies_app_movie_actors id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie_actors ALTER COLUMN id SET DEFAULT nextval('public.movies_app_movie_actor_id_seq'::regclass);


--
-- Name: movies_app_movie_directors id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie_directors ALTER COLUMN id SET DEFAULT nextval('public.movies_app_movie_directors_id_seq'::regclass);


--
-- Name: movies_app_movie_genres id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie_genres ALTER COLUMN id SET DEFAULT nextval('public.movies_app_movie_genres_id_seq'::regclass);


--
-- Name: movies_app_movieshort id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movieshort ALTER COLUMN id SET DEFAULT nextval('public.movies_app_movieshort_id_seq'::regclass);


--
-- Name: movies_app_rating id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_rating ALTER COLUMN id SET DEFAULT nextval('public.movies_app_reting_id_seq'::regclass);


--
-- Name: movies_app_ratingstar id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_ratingstar ALTER COLUMN id SET DEFAULT nextval('public.movies_app_retingstar_id_seq'::regclass);


--
-- Name: movies_app_reviews id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_reviews ALTER COLUMN id SET DEFAULT nextval('public.movies_app_reviews_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
1	format@gmail.com	f	t	2
2	format2@gmail.com	f	t	3
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: sergei
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
25	Can add Кадр из фильма	7	add_movieshort
26	Can change Кадр из фильма	7	change_movieshort
27	Can delete Кадр из фильма	7	delete_movieshort
28	Can view Кадр из фильма	7	view_movieshort
29	Can add Звезда рейтинга	8	add_retingstar
30	Can change Звезда рейтинга	8	change_retingstar
31	Can delete Звезда рейтинга	8	delete_retingstar
32	Can view Звезда рейтинга	8	view_retingstar
33	Can add Фильм	9	add_movie
34	Can change Фильм	9	change_movie
35	Can delete Фильм	9	delete_movie
36	Can view Фильм	9	view_movie
37	Can add Отзыв	10	add_reviews
38	Can change Отзыв	10	change_reviews
39	Can delete Отзыв	10	delete_reviews
40	Can view Отзыв	10	view_reviews
41	Can add Рейтинг	11	add_reting
42	Can change Рейтинг	11	change_reting
43	Can delete Рейтинг	11	delete_reting
44	Can view Рейтинг	11	view_reting
45	Can add Актер и режиссер	12	add_actor
46	Can change Актер и режиссер	12	change_actor
47	Can delete Актер и режиссер	12	delete_actor
48	Can view Актер и режиссер	12	view_actor
49	Can add Категория	13	add_category
50	Can change Категория	13	change_category
51	Can delete Категория	13	delete_category
52	Can view Категория	13	view_category
53	Can add Жанр	14	add_genre
54	Can change Жанр	14	change_genre
55	Can delete Жанр	14	delete_genre
56	Can view Жанр	14	view_genre
57	Can add Рейтинг	11	add_rating
58	Can change Рейтинг	11	change_rating
59	Can delete Рейтинг	11	delete_rating
60	Can view Рейтинг	11	view_rating
61	Can add Звезда рейтинга	8	add_ratingstar
62	Can change Звезда рейтинга	8	change_ratingstar
63	Can delete Звезда рейтинга	8	delete_ratingstar
64	Can view Звезда рейтинга	8	view_ratingstar
65	Can add site	15	add_site
66	Can change site	15	change_site
67	Can delete site	15	delete_site
68	Can view site	15	view_site
69	Can add flat page	16	add_flatpage
70	Can change flat page	16	change_flatpage
71	Can delete flat page	16	delete_flatpage
72	Can view flat page	16	view_flatpage
73	Can add Подписка	17	add_contact
74	Can change Подписка	17	change_contact
75	Can delete Подписка	17	delete_contact
76	Can view Подписка	17	view_contact
77	Can add Подписка	18	add_contact
78	Can change Подписка	18	change_contact
79	Can delete Подписка	18	delete_contact
80	Can view Подписка	18	view_contact
81	Can add email address	19	add_emailaddress
82	Can change email address	19	change_emailaddress
83	Can delete email address	19	delete_emailaddress
84	Can view email address	19	view_emailaddress
85	Can add email confirmation	20	add_emailconfirmation
86	Can change email confirmation	20	change_emailconfirmation
87	Can delete email confirmation	20	delete_emailconfirmation
88	Can view email confirmation	20	view_emailconfirmation
89	Can add social account	21	add_socialaccount
90	Can change social account	21	change_socialaccount
91	Can delete social account	21	delete_socialaccount
92	Can view social account	21	view_socialaccount
93	Can add social application	22	add_socialapp
94	Can change social application	22	change_socialapp
95	Can delete social application	22	delete_socialapp
96	Can view social application	22	view_socialapp
97	Can add social application token	23	add_socialtoken
98	Can change social application token	23	change_socialtoken
99	Can delete social application token	23	delete_socialtoken
100	Can view social application token	23	view_socialtoken
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$180000$1RydYmtz1K70$mWAJ83BxJrpdL27szlZX6IZBiCUyDmohW3s6PrzyriA=	\N	f	format			format@gmail.com	f	t	2020-05-21 21:52:36.356808+03
3	pbkdf2_sha256$180000$Ek5HVyR1fJVP$Mf+nNaixnmqnwVnvTKzt+L6pjTj+o0T2WttvOjt+lLc=	2020-05-21 22:00:05.643612+03	f	format2			format2@gmail.com	f	t	2020-05-21 22:00:05.351946+03
1	pbkdf2_sha256$180000$KlEWb7eX6Aat$DTalfzcszg02MvH+0l7kn/8+G/9GQqO7IthgWXu43iY=	2020-05-21 22:01:37.268291+03	t	admin			admin@gmail.com	t	t	2020-04-26 21:27:09.799208+03
4	!eErUunA7LGALtBvViBiKWQgwgvkOknpKwnzTe4Xd	2020-05-21 22:25:36.706163+03	f	id1733670	Сергей	Гузун		f	t	2020-05-21 22:25:36.5979+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: contact_contact; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.contact_contact (id, email, date) FROM stdin;
\.


--
-- Data for Name: contact_sub_contact; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.contact_sub_contact (id, email, data) FROM stdin;
1	ser.guzun19@gmail.com	2020-05-11 20:11:33.885799+03
2	fasd@mail.ru	2020-05-11 22:44:42.741279+03
3	fd@mail.ru	2020-05-11 22:46:11.384514+03
4	parashytov@mail.ru	2020-05-14 20:43:49.522118+03
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-04-26 21:30:46.439837+03	1	Фильмы	1	[{"added": {}}]	13	1
2	2020-04-26 21:31:07.57203+03	1	Комедия	1	[{"added": {}}]	14	1
3	2020-04-26 21:31:32.073397+03	2	Боевик	1	[{"added": {}}]	14	1
4	2020-04-26 21:34:43.215951+03	1	Джеки Чан	1	[{"added": {}}]	12	1
5	2020-04-26 21:38:53.605325+03	2	Киа́ну Ривз	1	[{"added": {}}]	12	1
6	2020-04-26 21:45:59.383521+03	2	Киану Ривз	2	[{"changed": {"fields": ["\\u0418\\u043c\\u044f", "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	12	1
7	2020-04-26 21:46:21.528197+03	1	Джеки Чан	2	[{"changed": {"fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	12	1
8	2020-04-26 21:57:49.713412+03	3	Квентин Тарантино	1	[{"added": {}}]	12	1
9	2020-04-26 22:03:00.201237+03	1	Аватар	1	[{"added": {}}]	9	1
10	2020-04-26 22:11:05.424806+03	2	Пьяный мастер 2	1	[{"added": {}}]	9	1
11	2020-04-26 22:11:13.124413+03	2	Пьяный мастер 2	2	[]	9	1
12	2020-04-29 08:21:56.561568+03	1	Стрельба из лука	1	[{"added": {}}]	7	1
13	2020-04-29 08:22:42.864973+03	2	Главный герой и его аватар	1	[{"added": {}}]	7	1
14	2020-04-29 08:23:28.305246+03	3	Главный герой перед полетом	1	[{"added": {}}]	7	1
15	2020-04-29 08:24:37.663644+03	4	Главный герой в мыле	1	[{"added": {}}]	7	1
16	2020-04-29 08:25:30.348798+03	5	Колено главного героя	1	[{"added": {}}]	7	1
17	2020-04-29 08:26:15.365417+03	6	Главные алкоголики фильма	1	[{"added": {}}]	7	1
18	2020-05-01 12:51:25.82139+03	3	Гузун Сергей Юрьевич - Пьяный мастер 2	3		10	1
19	2020-05-01 12:51:25.874497+03	2	m - Пьяный мастер 2	3		10	1
20	2020-05-02 10:41:45.603932+03	3	Пьяный мастер	1	[{"added": {}}, {"added": {"name": "\\u041e\\u0442\\u0437\\u044b\\u0432", "object": " - \\u041f\\u044c\\u044f\\u043d\\u044b\\u0439 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440"}}, {"added": {"name": "\\u041e\\u0442\\u0437\\u044b\\u0432", "object": " - \\u041f\\u044c\\u044f\\u043d\\u044b\\u0439 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440"}}, {"added": {"name": "\\u041e\\u0442\\u0437\\u044b\\u0432", "object": " - \\u041f\\u044c\\u044f\\u043d\\u044b\\u0439 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440"}}, {"added": {"name": "\\u041e\\u0442\\u0437\\u044b\\u0432", "object": " - \\u041f\\u044c\\u044f\\u043d\\u044b\\u0439 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440"}}, {"added": {"name": "\\u041e\\u0442\\u0437\\u044b\\u0432", "object": " - \\u041f\\u044c\\u044f\\u043d\\u044b\\u0439 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440"}}, {"added": {"name": "\\u041e\\u0442\\u0437\\u044b\\u0432", "object": " - \\u041f\\u044c\\u044f\\u043d\\u044b\\u0439 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440"}}, {"added": {"name": "\\u041e\\u0442\\u0437\\u044b\\u0432", "object": " - \\u041f\\u044c\\u044f\\u043d\\u044b\\u0439 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440"}}, {"added": {"name": "\\u041e\\u0442\\u0437\\u044b\\u0432", "object": " - \\u041f\\u044c\\u044f\\u043d\\u044b\\u0439 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440"}}]	9	1
21	2020-05-02 10:43:29.756036+03	3	Пьяный мастер	2	[{"changed": {"name": "\\u041e\\u0442\\u0437\\u044b\\u0432", "object": " - \\u041f\\u044c\\u044f\\u043d\\u044b\\u0439 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440", "fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c"]}}, {"changed": {"name": "\\u041e\\u0442\\u0437\\u044b\\u0432", "object": " - \\u041f\\u044c\\u044f\\u043d\\u044b\\u0439 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440", "fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c"]}}, {"changed": {"name": "\\u041e\\u0442\\u0437\\u044b\\u0432", "object": " - \\u041f\\u044c\\u044f\\u043d\\u044b\\u0439 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440", "fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c"]}}]	9	1
22	2020-05-02 10:45:47.056319+03	3	Пьяный мастер	2	[{"changed": {"fields": ["\\u0427\\u0435\\u0440\\u043d\\u043e\\u0432\\u0438\\u043a"]}}]	9	1
23	2020-05-02 10:45:51.548973+03	3	Пьяный мастер	2	[{"changed": {"fields": ["\\u0427\\u0435\\u0440\\u043d\\u043e\\u0432\\u0438\\u043a"]}}]	9	1
24	2020-05-02 11:50:52.505579+03	2	Пьяный мастер 2	2	[{"changed": {"name": "\\u041e\\u0442\\u0437\\u044b\\u0432", "object": "batman1284 - \\u041f\\u044c\\u044f\\u043d\\u044b\\u0439 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440 2", "fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c"]}}]	9	1
25	2020-05-02 15:54:43.447389+03	1	Аватар	2	[{"changed": {"fields": ["description"]}}]	9	1
26	2020-05-02 16:31:21.752635+03	1	Аватар	2	[]	9	1
27	2020-05-02 16:58:37.288938+03	1	Аватар	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	9	1
28	2020-05-02 18:51:09.844188+03	2	Сериалы	1	[{"added": {}}]	13	1
29	2020-05-02 18:51:54.663531+03	3	Авторское кино	1	[{"added": {}}]	13	1
30	2020-05-02 18:53:06.56373+03	4	Аниме	1	[{"added": {}}]	13	1
31	2020-05-03 19:48:48.017375+03	3	Драма	1	[{"added": {}}]	14	1
32	2020-05-03 19:49:57.98013+03	4	Исторический фильм	1	[{"added": {}}]	14	1
33	2020-05-03 19:50:44.983405+03	5	Детектив	1	[{"added": {}}]	14	1
34	2020-05-05 12:03:31.992356+03	3	Пьяный мастер	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u041f\\u043e\\u0441\\u0442\\u0435\\u0440"]}}]	9	1
35	2020-05-05 12:03:35.853458+03	3	Пьяный мастер	2	[]	9	1
36	2020-05-05 16:26:41.305915+03	7	1	1	[{"added": {}}]	8	1
37	2020-05-05 16:27:08.234482+03	8	2	1	[{"added": {}}]	8	1
38	2020-05-05 16:27:10.894748+03	9	3	1	[{"added": {}}]	8	1
39	2020-05-05 17:28:31.804119+03	10	4	1	[{"added": {}}]	8	1
40	2020-05-05 17:28:40.112508+03	11	5	1	[{"added": {}}]	8	1
41	2020-05-08 22:13:31.010297+03	4	Матрица	1	[{"added": {}}, {"added": {"name": "\\u041a\\u0430\\u0434\\u0440 \\u0438\\u0437 \\u0444\\u0438\\u043b\\u044c\\u043c\\u0430", "object": "\\u041f\\u0435\\u0440\\u0435\\u0441\\u0442\\u0440\\u0435\\u043b\\u043a\\u0430 \\u0433\\u043b\\u0430\\u0432\\u043d\\u044b\\u0445 \\u0433\\u0435\\u0440\\u043e\\u0435\\u0432"}}, {"added": {"name": "\\u041a\\u0430\\u0434\\u0440 \\u0438\\u0437 \\u0444\\u0438\\u043b\\u044c\\u043c\\u0430", "object": "\\u041f\\u0435\\u0440\\u0432\\u044b\\u0435 \\u043f\\u0440\\u043e\\u0431\\u043b\\u0435\\u0441\\u043a\\u0438 \\u043f\\u0440\\u0430\\u0432\\u0434\\u044b"}}, {"added": {"name": "\\u041a\\u0430\\u0434\\u0440 \\u0438\\u0437 \\u0444\\u0438\\u043b\\u044c\\u043c\\u0430", "object": "\\u0410\\u0433\\u0435\\u043d\\u0442 \\u0438 \\u043f\\u0443\\u043b\\u0438"}}]	9	1
42	2020-05-08 22:16:49.641692+03	4	Лана Вачовски	1	[{"added": {}}]	12	1
43	2020-05-08 22:20:16.446477+03	5	Вячеслав Тихонов	1	[{"added": {}}]	12	1
44	2020-05-08 22:44:38.684566+03	5	Семнадцать мгновений весны	1	[{"added": {}}, {"added": {"name": "\\u041a\\u0430\\u0434\\u0440 \\u0438\\u0437 \\u0444\\u0438\\u043b\\u044c\\u043c\\u0430", "object": "\\u0428\\u0435\\u043b\\u043b\\u0435\\u043d\\u0431\\u0435\\u0440\\u0433 \\u0438 \\u0413\\u0438\\u043c\\u043c\\u043b\\u0435\\u0440"}}, {"added": {"name": "\\u041a\\u0430\\u0434\\u0440 \\u0438\\u0437 \\u0444\\u0438\\u043b\\u044c\\u043c\\u0430", "object": "\\u0428\\u0442\\u0438\\u0440\\u043b\\u0438\\u0446 \\u0438 \\u043f\\u0430\\u0441\\u0442\\u043e\\u0440 \\u0428\\u043b\\u0430\\u0433"}}, {"added": {"name": "\\u041a\\u0430\\u0434\\u0440 \\u0438\\u0437 \\u0444\\u0438\\u043b\\u044c\\u043c\\u0430", "object": "\\u0428\\u0442\\u0438\\u0440\\u043b\\u0438\\u0446 \\u0438 \\u0413\\u0430\\u0431\\u0438 \\u041d\\u0430\\u0431\\u0435\\u043b\\u044c"}}]	9	1
45	2020-05-09 17:18:42.484763+03	6	Матрица 2: перезагрузка	1	[{"added": {}}, {"added": {"name": "\\u041a\\u0430\\u0434\\u0440 \\u0438\\u0437 \\u0444\\u0438\\u043b\\u044c\\u043c\\u0430", "object": "\\u0410\\u0433\\u0435\\u043d\\u0442\\u044b"}}, {"added": {"name": "\\u041a\\u0430\\u0434\\u0440 \\u0438\\u0437 \\u0444\\u0438\\u043b\\u044c\\u043c\\u0430", "object": "\\u041f\\u0443\\u043b\\u0438 \\u0438 \\u041d\\u0435\\u043e"}}, {"added": {"name": "\\u041a\\u0430\\u0434\\u0440 \\u0438\\u0437 \\u0444\\u0438\\u043b\\u044c\\u043c\\u0430", "object": "\\u041c\\u0438\\u0440\\u043e\\u0432\\u0438\\u043d\\u0433\\u0435\\u043d \\u0438 \\u041f\\u0435\\u043d\\u0435\\u043b\\u043e\\u043f\\u0430"}}]	9	1
46	2020-05-09 18:18:03.914993+03	7	Матрица 3: революция	1	[{"added": {}}, {"added": {"name": "\\u041a\\u0430\\u0434\\u0440 \\u0438\\u0437 \\u0444\\u0438\\u043b\\u044c\\u043c\\u0430", "object": "asda"}}, {"added": {"name": "\\u041a\\u0430\\u0434\\u0440 \\u0438\\u0437 \\u0444\\u0438\\u043b\\u044c\\u043c\\u0430", "object": "asd"}}, {"added": {"name": "\\u041a\\u0430\\u0434\\u0440 \\u0438\\u0437 \\u0444\\u0438\\u043b\\u044c\\u043c\\u0430", "object": "ds"}}]	9	1
47	2020-05-10 07:37:30.510919+03	1	/about/ -- О нас	1	[{"added": {}}]	16	1
48	2020-05-12 21:16:22.69106+03	7	Матрица 3: революция	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 [en]", "\\u0421\\u043b\\u043e\\u0433\\u0430\\u043d [en]", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0421\\u0442\\u0440\\u0430\\u043d\\u0430 [en]"]}}]	9	1
49	2020-05-12 22:12:49.987765+03	6	Матрица 2: перезагрузка	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 [en]", "\\u0421\\u043b\\u043e\\u0433\\u0430\\u043d [en]", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0421\\u0442\\u0440\\u0430\\u043d\\u0430 [en]"]}}]	9	1
50	2020-05-12 22:13:16.682904+03	4	Аниме	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f [en]", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 [en]"]}}]	13	1
51	2020-05-12 22:13:45.916857+03	3	Авторское кино	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f [en]", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 [en]"]}}]	13	1
52	2020-05-12 22:14:05.517922+03	1	Фильмы	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f [en]", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 [en]"]}}]	13	1
53	2020-05-12 22:14:41.353246+03	5	Вячеслав Тихонов	2	[{"changed": {"fields": ["\\u0418\\u043c\\u044f [en]", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 [en]"]}}]	12	1
54	2020-05-12 22:15:47.584075+03	4	Лана Вачовски	2	[{"changed": {"fields": ["\\u0418\\u043c\\u044f [en]", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 [en]"]}}]	12	1
55	2020-05-12 22:16:28.624427+03	3	Квентин Тарантино	2	[{"changed": {"fields": ["\\u0418\\u043c\\u044f [en]", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 [en]"]}}]	12	1
56	2020-05-12 22:17:03.073989+03	2	Киану Ривз	2	[{"changed": {"fields": ["\\u0418\\u043c\\u044f [en]", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 [en]"]}}]	12	1
57	2020-05-12 22:17:39.042698+03	1	Джеки Чан	2	[{"changed": {"fields": ["\\u0418\\u043c\\u044f [en]", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 [en]"]}}]	12	1
58	2020-05-12 22:18:07.271645+03	5	Детектив	2	[{"changed": {"fields": ["\\u0418\\u043c\\u044f [en]", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 [en]"]}}]	14	1
59	2020-05-12 22:18:26.391922+03	4	Исторический фильм	2	[{"changed": {"fields": ["\\u0418\\u043c\\u044f [en]", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 [en]"]}}]	14	1
60	2020-05-12 22:18:40.566872+03	3	Драма	2	[{"changed": {"fields": ["\\u0418\\u043c\\u044f [en]", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 [en]"]}}]	14	1
61	2020-05-12 22:18:53.314549+03	2	Боевик	2	[{"changed": {"fields": ["\\u0418\\u043c\\u044f [en]", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 [en]"]}}]	14	1
62	2020-05-12 22:19:05.971013+03	1	Комедия	2	[{"changed": {"fields": ["\\u0418\\u043c\\u044f [en]", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 [en]"]}}]	14	1
63	2020-05-12 22:25:39.08973+03	1	Comedy	2	[{"changed": {"fields": ["\\u0418\\u043c\\u044f [en]"]}}]	14	1
64	2020-05-21 21:31:35.224487+03	7	Матрица 3: Революция	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 [ru]"]}}]	9	1
65	2020-05-21 21:31:41.602085+03	6	Матрица 2: Перезагрузка	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 [ru]"]}}]	9	1
66	2020-05-21 22:24:56.39838+03	1	vk	1	[{"added": {}}]	22	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	movies_app	movieshort
9	movies_app	movie
10	movies_app	reviews
12	movies_app	actor
13	movies_app	category
14	movies_app	genre
11	movies_app	rating
8	movies_app	ratingstar
15	sites	site
16	flatpages	flatpage
17	contact	contact
18	contact_sub	contact
19	account	emailaddress
20	account	emailconfirmation
21	socialaccount	socialaccount
22	socialaccount	socialapp
23	socialaccount	socialtoken
\.


--
-- Data for Name: django_flatpage; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.django_flatpage (id, url, title, content, enable_comments, template_name, registration_required) FROM stdin;
1	/about/	О нас	Текст страницы	f	pages/about.html	f
\.


--
-- Data for Name: django_flatpage_sites; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.django_flatpage_sites (id, flatpage_id, site_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-04-26 14:27:59.316241+03
2	auth	0001_initial	2020-04-26 14:27:59.444673+03
3	admin	0001_initial	2020-04-26 14:27:59.499052+03
4	admin	0002_logentry_remove_auto_add	2020-04-26 14:27:59.517211+03
5	admin	0003_logentry_add_action_flag_choices	2020-04-26 14:27:59.528186+03
6	contenttypes	0002_remove_content_type_name	2020-04-26 14:27:59.565227+03
7	auth	0002_alter_permission_name_max_length	2020-04-26 14:27:59.57525+03
8	auth	0003_alter_user_email_max_length	2020-04-26 14:27:59.588384+03
9	auth	0004_alter_user_username_opts	2020-04-26 14:27:59.604503+03
10	auth	0005_alter_user_last_login_null	2020-04-26 14:27:59.623714+03
11	auth	0006_require_contenttypes_0002	2020-04-26 14:27:59.629463+03
12	auth	0007_alter_validators_add_error_messages	2020-04-26 14:27:59.646652+03
13	auth	0008_alter_user_username_max_length	2020-04-26 14:27:59.66784+03
14	auth	0009_alter_user_last_name_max_length	2020-04-26 14:27:59.688415+03
15	auth	0010_alter_group_name_max_length	2020-04-26 14:27:59.704796+03
16	auth	0011_update_proxy_permissions	2020-04-26 14:27:59.72184+03
17	sessions	0001_initial	2020-04-26 14:27:59.733156+03
18	movies_app	0001_initial	2020-04-26 16:42:56.539956+03
19	movies_app	0002_auto_20200426_1811	2020-04-26 21:11:26.18862+03
20	movies_app	0003_auto_20200502_0802	2020-05-02 11:02:40.7991+03
21	movies_app	0004_auto_20200503_0834	2020-05-03 11:34:54.052251+03
22	movies_app	0005_auto_20200505_1612	2020-05-05 19:13:03.718288+03
23	movies_app	0006_auto_20200506_0411	2020-05-06 07:11:43.201535+03
24	sites	0001_initial	2020-05-10 07:32:16.235932+03
25	flatpages	0001_initial	2020-05-10 07:32:16.304756+03
26	sites	0002_alter_domain_unique	2020-05-10 07:32:16.350455+03
27	contact	0001_initial	2020-05-10 12:42:07.789191+03
28	contact_sub	0001_initial	2020-05-11 17:54:47.636931+03
30	movies_app	0007_auto_20200512_1806	2020-05-12 21:06:14.050911+03
31	account	0001_initial	2020-05-14 22:05:02.179255+03
32	account	0002_email_max_length	2020-05-14 22:05:02.271641+03
33	movies_app	0008_auto_20200516_1948	2020-05-16 22:48:59.974876+03
34	socialaccount	0001_initial	2020-05-21 22:09:07.754525+03
35	socialaccount	0002_token_max_lengths	2020-05-21 22:09:07.854805+03
36	socialaccount	0003_extra_data_default_dict	2020-05-21 22:09:07.867285+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
bv8k54xi7hcdmpga3kdoasruaqkclrm3	YWYwODk1ZDVmMzk0NTA3Zjc0MmZkYjgyYzBmOWUwNjc3NzllN2YwYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YzU5NzdkMmExZjg5ZDJlODYzYTQzNjU0MmI3ZjY2MGZlM2YwOWQ5In0=	2020-05-10 21:28:09.330196+03
iz4dfzyda5s5a99i98uk2s6xe0wpaz2x	YWYwODk1ZDVmMzk0NTA3Zjc0MmZkYjgyYzBmOWUwNjc3NzllN2YwYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YzU5NzdkMmExZjg5ZDJlODYzYTQzNjU0MmI3ZjY2MGZlM2YwOWQ5In0=	2020-05-25 18:23:19.540257+03
zqophebwc0oq9dlietz9a5k6yg05xwvq	YjU2NmNjYTU3M2JjNTA5NGViOTdlYjMzZmIzZGZmZDMzNTM4ZDg5YTp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsImFjY291bnRfdXNlciI6IjQiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFsbGF1dGguYWNjb3VudC5hdXRoX2JhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQyZmIwZjkzYTkyMzg0ZjE5ZWY2N2RjNmZkODAzYzc2MTc3NWY3MzkifQ==	2020-06-04 22:25:36.710718+03
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: movies_app_actor; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.movies_app_actor (id, name, age, description, image, description_en, description_ru, name_en, name_ru) FROM stdin;
2	Киану Ривз	55	Киа́ну Чарльз Ривз (англ. Keanu Charles Reeves, [kiˈɑːnuː]; род. 2 сентября 1964, Бейрут, Ливан) — канадский актёр, кинорежиссёр, кинопродюсер и музыкант (бас-гитарист). Наиболее известен своими ролями в киносериях «Матрица» (1999—2003), «Билл и Тед» (англ.)русск. (1989—2020) и «Джон Уик» (2014—2019), а также в фильмах «На гребне волны» (1991), «Мой личный штат Айдахо» (1991), «Дракула» (1992), «Скорость» (1994), «Джонни-мнемоник» (1995), «Адвокат дьявола» (1997), «Константин: Повелитель тьмы» (2005) и «Короли улиц» (2008).	actors/Kianu-Rivz.jpeg	Keanu Charles Reeves (/kiˈɑːnuː/ kee-AH-noo;[1][2][3] born September 2, 1964) is a Canadian[a][4] actor, musician, film producer and director. Born in Beirut, Reeves grew up in Toronto, Ontario. He started acting in theatre productions, and in television films before making his mainstream film debut in Youngblood (1986). Reeves gained recognition in his breakthrough role as Ted "Theodore" Logan in the science fiction comedy Bill & Ted's Excellent Adventure (1989). This was followed by a supporting role in Ron Howard's comedy Parenthood, 1991's Point Break, sequel Bill & Ted's Bogus Journey, and the independent drama My Own Private Idaho. For playing a street hustler in the last of these, Reeves was critically praised for his performance. He had a supporting role in Bram Stoker's Dracula (1992), which was nominated for four Academy Awards.	Киа́ну Чарльз Ривз (англ. Keanu Charles Reeves, [kiˈɑːnuː]; род. 2 сентября 1964, Бейрут, Ливан) — канадский актёр, кинорежиссёр, кинопродюсер и музыкант (бас-гитарист). Наиболее известен своими ролями в киносериях «Матрица» (1999—2003), «Билл и Тед» (англ.)русск. (1989—2020) и «Джон Уик» (2014—2019), а также в фильмах «На гребне волны» (1991), «Мой личный штат Айдахо» (1991), «Дракула» (1992), «Скорость» (1994), «Джонни-мнемоник» (1995), «Адвокат дьявола» (1997), «Константин: Повелитель тьмы» (2005) и «Короли улиц» (2008).	Keanu Reeves	Киану Ривз
4	Лана Вачовски	65	Ла́на Вачо́вски (англ. Lana Wachowski; урождённая Ло́уренс Вачо́вски (англ. Laurence Wachowski), род. 21 июня 1965) и Ли́лли Вачо́вски (англ. Lilly Wachowski; урождённая Э́ндрю Пол Вачо́вски (англ. Andrew Paul Wachowski), род. 29 декабря 1967, Чикаго, Иллинойс, США) — американские режиссёры, продюсеры и сценаристы. Обе сестры являются транс-женщинами.\r\n\r\nВачовски дебютировали в режиссуре с фильмом «Связь» (1996), и получили мировую известность после создания фантастической трилогии «Матрица».	actors/Lana-Vachovski_TwA8FRe.jpg	Lana Wachowski (born Lana Wachowski; nee Laurence Wachowski), born June 21, 1965) and Lilly Wachowski (born Lilly Wachowski; born Andrew Paul Wachowski (born December 29, 1967) , Chicago, Illinois, USA) - American directors, producers and screenwriters. Both sisters are trans women.\r\n\r\nWachowski made his directorial debut with the movie "Communication" (1996), and gained world fame after creating the fantastic trilogy "The Matrix".	Ла́на Вачо́вски (англ. Lana Wachowski; урождённая Ло́уренс Вачо́вски (англ. Laurence Wachowski), род. 21 июня 1965) и Ли́лли Вачо́вски (англ. Lilly Wachowski; урождённая Э́ндрю Пол Вачо́вски (англ. Andrew Paul Wachowski), род. 29 декабря 1967, Чикаго, Иллинойс, США) — американские режиссёры, продюсеры и сценаристы. Обе сестры являются транс-женщинами.\r\n\r\nВачовски дебютировали в режиссуре с фильмом «Связь» (1996), и получили мировую известность после создания фантастической трилогии «Матрица».	Lana Wachowski	Лана Вачовски
1	Джеки Чан	66	Дже́ки Чан — гонконгский актёр, каскадёр, кинорежиссёр, продюсер, сценарист, постановщик трюков и боевых сцен, певец, филантроп, мастер боевых искусств. Посол доброй воли ЮНИСЕФ. Кавалер ордена Британской империи[8], главный режиссёр Чанчуньской киностудии — старейшей киностудии в КНР.\r\n\r\nЧан — один из самых популярных героев боевиков в мире, он известен своим акробатическим боевым стилем, комедийным даром, а также использованием всевозможных «подручных средств» в боях. Снялся в главных ролях более чем в 100 фильмах и является одним из наиболее знаменитых азиатских актёров в мире. Помимо кино, занимается и певческой карьерой — он поёт песни во многих своих фильмах и выпускает альбомы с 1980-х годов.	actors/Jackie-Chan.jpg	Chan Kong-sang SBS[1] MBE[2] PMW[3] (Chinese: 陳港生; born 7 April 1954),[4] known professionally as Jackie Chan, is a Hong Kong martial artist, actor, film director, producer, stuntman, and singer. He is known in the cinematic world for his acrobatic fighting style, comic timing, use of improvised weapons, and innovative stunts, which he typically performs himself. He has trained in Wushu or Kung Fu and Hapkido,[5][6] and has been acting since the 1960s, appearing in over 150 films.\r\n\r\nChan is one of the most recognisable and influential cinematic personalities in the world, gaining a widespread following in both the Eastern and Western hemispheres, and has received stars on the Hong Kong Avenue of Stars and the Hollywood Walk of Fame.[7][8] He has been referenced in various pop songs, cartoons, and video games. He is an operatically trained vocalist and is also a Cantopop and Mandopop star, having released a number of albums and sung many of the theme songs for the films in which he has starred. He is also a globally known philanthropist and has been named as one of the top 10 most charitable celebrities by Forbes magazine.[9][10] In 2004, film scholar Andrew Willis stated that Chan was "perhaps" the "most recognised star in the world".[11] In 2015, Forbes estimated his net worth to be $350 million, and as of 2016, he was the second-highest paid actor in the world.[12][13]	Дже́ки Чан — гонконгский актёр, каскадёр, кинорежиссёр, продюсер, сценарист, постановщик трюков и боевых сцен, певец, филантроп, мастер боевых искусств. Посол доброй воли ЮНИСЕФ. Кавалер ордена Британской империи[8], главный режиссёр Чанчуньской киностудии — старейшей киностудии в КНР.\r\n\r\nЧан — один из самых популярных героев боевиков в мире, он известен своим акробатическим боевым стилем, комедийным даром, а также использованием всевозможных «подручных средств» в боях. Снялся в главных ролях более чем в 100 фильмах и является одним из наиболее знаменитых азиатских актёров в мире. Помимо кино, занимается и певческой карьерой — он поёт песни во многих своих фильмах и выпускает альбомы с 1980-х годов.	Jackie Chan	Джеки Чан
5	Вячеслав Тихонов	81	Вячесла́в Васи́льевич Ти́хонов (8 февраля 1928, Павловский Посад — 4 декабря 2009, Москва) — советский и российский актёр. Герой Социалистического Труда (1982). Народный артист СССР (1974). Наибольшую известность Тихонову принесла роль разведчика Исаева-Штирлица в 12-серийном телефильме Татьяны Лиозновой «Семнадцать мгновений весны».	actors/Vaycheslav-Tihonov_X4rX1Gb.jpg	Vyacheslav Vasilyevich Tikhonov (Russian: Вячесла́в Васи́льевич Ти́хонов; 8 February 1928, in Pavlovsky Posad – 4 December 2009, in Moscow) was a Soviet and Russian actor whose best known role was as Soviet spy, Stierlitz in the television series Seventeen Moments of Spring. He was a recipient of numerous state awards, including the titles of People's Artist of the USSR (1974) and Hero of Socialist Labour (1982).	Вячесла́в Васи́льевич Ти́хонов (8 февраля 1928, Павловский Посад — 4 декабря 2009, Москва) — советский и российский актёр. Герой Социалистического Труда (1982). Народный артист СССР (1974). Наибольшую известность Тихонову принесла роль разведчика Исаева-Штирлица в 12-серийном телефильме Татьяны Лиозновой «Семнадцать мгновений весны».	Vyacheslav Tikhonov	Вячеслав Тихонов
3	Квентин Тарантино	57	Кве́нтин Джеро́м Таранти́но (англ. Quentin Jerome Tarantino, МФА: [ˌtærənˈtiːno]; род. 27 марта 1963 года, Ноксвилл, Теннесси, США) — американский кинорежиссёр, сценарист, актёр, кинопродюсер и кинооператор. Один из наиболее ярких представителей постмодернизма в кинематографе. Фильмы Тарантино отличаются нелинейной структурой повествования, переосмыслением культурно-исторического процесса, использованием готовых форм и эстетизацией насилия[2][3].\r\n\r\nМировую известность получил после картины «Криминальное чтиво» (1994), которая принесла ему «Золотую пальмовую ветвь» Каннского кинофестиваля[4], а также премии «Оскар»[5], «BAFTA» и «Золотой глобус» за лучший сценарий[6]. К его работам относятся также «Бешеные псы» (1992), «Джеки Браун» (1997), «Убить Билла» (в двух частях, 2003—2004), «Доказательство смерти» (2007), «Бесславные ублюдки» (2009), «Джанго освобождённый» (2012), «Омерзительная восьмёрка» (2015) и «Однажды в… Голливуде» (2019). За сценарий к «Джанго освобождённый» был вновь удостоен «Оскара», «BAFTA» и «Золотого глобуса».	actors/Qentin-Tarantino.jpg	Quentin Jerome Tarantino (/ˌtærənˈtiːnoʊ/; born March 27, 1963)[1] is an American filmmaker and actor. His films are characterized by nonlinear storylines, aestheticization of violence, extended scenes of dialogue, ensemble casts, references to popular culture and a wide variety of other films, soundtracks primarily containing songs and score pieces from the 1960s to the 1980s, alternate history, and features of neo-noir film.\r\n\r\nHe began his career as an independent filmmaker with the release of Reservoir Dogs in 1992, which was funded by money from the sale of his screenplay True Romance (1993). Empire magazine hailed Reservoir Dogs the "Greatest Independent Film of All Time". His second film, Pulp Fiction (1994), a comedy crime film, was a major success both among critics and audiences.[2][3] He also wrote the screenplay for the horror From Dusk Till Dawn (1996), in which he also starred in. Tarantino paid homage to the blaxploitation films of the 1970s with Jackie Brown (1997), an adaptation of Elmore Leonard's novel Rum Punch.	Кве́нтин Джеро́м Таранти́но (англ. Quentin Jerome Tarantino, МФА: [ˌtærənˈtiːno]; род. 27 марта 1963 года, Ноксвилл, Теннесси, США) — американский кинорежиссёр, сценарист, актёр, кинопродюсер и кинооператор. Один из наиболее ярких представителей постмодернизма в кинематографе. Фильмы Тарантино отличаются нелинейной структурой повествования, переосмыслением культурно-исторического процесса, использованием готовых форм и эстетизацией насилия[2][3].\r\n\r\nМировую известность получил после картины «Криминальное чтиво» (1994), которая принесла ему «Золотую пальмовую ветвь» Каннского кинофестиваля[4], а также премии «Оскар»[5], «BAFTA» и «Золотой глобус» за лучший сценарий[6]. К его работам относятся также «Бешеные псы» (1992), «Джеки Браун» (1997), «Убить Билла» (в двух частях, 2003—2004), «Доказательство смерти» (2007), «Бесславные ублюдки» (2009), «Джанго освобождённый» (2012), «Омерзительная восьмёрка» (2015) и «Однажды в… Голливуде» (2019). За сценарий к «Джанго освобождённый» был вновь удостоен «Оскара», «BAFTA» и «Золотого глобуса».	Quentin Tarantino	Квентин Тарантино
\.


--
-- Data for Name: movies_app_category; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.movies_app_category (id, name, description, url, description_en, description_ru, name_en, name_ru) FROM stdin;
2	Сериалы	Многосерийные фильмы с множеством серий и сезонов.	serials	\N	Многосерийные фильмы с множеством серий и сезонов.	\N	Сериалы
4	Аниме	Анимированная мультипликация с сюжетами для детской и для взрослой аудитории.	anime	Animated animation with plots for children and adults.	Анимированная мультипликация с сюжетами для детской и для взрослой аудитории.	Anime	Аниме
3	Авторское кино	Неформатное кино	author-movies	Unformatted movie	Неформатное кино	Author cinema	Авторское кино
1	Фильмы	Все фильмы мира	movie	All movies	Все фильмы мира	Movies	Фильмы
\.


--
-- Data for Name: movies_app_genre; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.movies_app_genre (id, name, description, url, description_en, description_ru, name_en, name_ru) FROM stdin;
5	Детектив	Сюжеты с расследованием загадок и головоломок	detective	Riddles and puzzles	Сюжеты с расследованием загадок и головоломок	Detective	Детектив
4	Исторический фильм	Экранизации историй былых времен.	historical_movie	Screen versions of stories of bygone days.	Экранизации историй былых времен.	Historical movie	Исторический фильм
3	Драма	Драмотические сюжеты совершенно без веселья и юмора, дабы подчеркнуть, что жизнь состоит не только из радостных моментов.	drama	Dramatic scenes completely without fun and humor in order to emphasize that life consists not only of joyful moments.	Драмотические сюжеты совершенно без веселья и юмора, дабы подчеркнуть, что жизнь состоит не только из радостных моментов.	Drama	Драма
2	Боевик	Боевик	action_film	Action	Боевик	Action	Боевик
1	Comedy	Comedy	comedy	Comedy	Комедия	Comedy	Комедия
\.


--
-- Data for Name: movies_app_movie; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.movies_app_movie (id, title, tagline, description, poster, year, country, world_premiere, budget, fees_in_country, fees_in_world, url, draft, category_id, country_en, country_ru, description_en, description_ru, tagline_en, tagline_ru, title_en, title_ru) FROM stdin;
7	Матрица 3: Революция	Все, что имеет начало, имеет и конец	<p>Пока армия Машин пытается уничтожить Зион, его&nbsp;жители из&nbsp;последних сил&nbsp;держат оборону. Но&nbsp;удастся ли&nbsp;им предотвратить полное вторжение в&nbsp;город кишащей орды беспощадных машин до&nbsp;того, как&nbsp;Нео соберет все&nbsp;свои силы и&nbsp;положит конец войне?</p>	movies/matrix3.jpg	2003	США	2003-10-27	150000000	139313948	427343298	matrix3	f	1	USA	США	<p>While the Army of Machines is trying to destroy Zion, its inhabitants are holding their defenses with all their might. But will they be able to prevent a full invasion of the city of a teeming horde of ruthless machines before Neo gathers all his forces and puts an end to the war?</p>	<p>Пока армия Машин пытается уничтожить Зион, его&nbsp;жители из&nbsp;последних сил&nbsp;держат оборону. Но&nbsp;удастся ли&nbsp;им предотвратить полное вторжение в&nbsp;город кишащей орды беспощадных машин до&nbsp;того, как&nbsp;Нео соберет все&nbsp;свои силы и&nbsp;положит конец войне?</p>	Everything that has a beginning has an end	Все, что имеет начало, имеет и конец	The Matrix Revolutions	Матрица 3: Революция
3	Пьяный мастер	Не попадайтесь у него на пути, когда он пьян!	<p>Молодой Вонг Фей-Хун, будущий народный герой Китая, защитник обездоленных и обиженных, в молодости был весьма строптив и дерзок. Настолько, что отец отослал неуправляемого сына к дяде, известному мастеру кунг-фу и большому эксперту в двух вещах: распитии крепких спиртных напитков и выбивании дури из самонадеянных юнцов. Неудивительно, что герой сбегает от дяди-садиста при первой же возможности. Увы, тут же побитый и униженный бандитом-профи, он возвращается назад к Пьяному Мастеру. Придется ему, скрипя зубами, терпеть иезуитские методы воспитания дяди, дабы потом, постигнув все тонкости боевых искусств, отомстить своему обидчику, который, к тому же, собирается убить его отца&hellip;</p>	movies/drunk-master1_KjIhFQY.jpg	1978	Гонконг	1978-10-05	33	33	33	drunk-master1	f	1	\N	Гонконг	\N	<p>Молодой Вонг Фей-Хун, будущий народный герой Китая, защитник обездоленных и обиженных, в молодости был весьма строптив и дерзок. Настолько, что отец отослал неуправляемого сына к дяде, известному мастеру кунг-фу и большому эксперту в двух вещах: распитии крепких спиртных напитков и выбивании дури из самонадеянных юнцов. Неудивительно, что герой сбегает от дяди-садиста при первой же возможности. Увы, тут же побитый и униженный бандитом-профи, он возвращается назад к Пьяному Мастеру. Придется ему, скрипя зубами, терпеть иезуитские методы воспитания дяди, дабы потом, постигнув все тонкости боевых искусств, отомстить своему обидчику, который, к тому же, собирается убить его отца&hellip;</p>	\N	Не попадайтесь у него на пути, когда он пьян!	\N	Пьяный мастер
6	Матрица 2: Перезагрузка	Одни машины помогают нам жить, другие – пытаются нас убить	<p>Борцы за&nbsp;свободу Нео, Тринити и&nbsp;Морфеус продолжают руководить восстанием людей против Армии Машин. Для&nbsp;уничтожения системы репрессий и&nbsp;эксплуатации они&nbsp;вынуждены прибегнуть не&nbsp;только к&nbsp;арсеналу превосходного оружия, но&nbsp;и к&nbsp;своим выдающимся навыкам.<br />\r\n<br />\r\nУчастие в&nbsp;миссии по&nbsp;спасению человеческой расы от&nbsp;ее полного истребления приносит им&nbsp;более глубокое понимание конструкции Матрицы и&nbsp;осознание центральной роли Нео&nbsp;в судьбе человечества.</p>	movies/matrix2_JZUZOrL.jpg	2003	США	2003-05-07	150000000	281576461	742128461	matrix2	f	1	USA	США	<p>Freedom fighters Neo, Trinity and Morpheus continue to lead a rebellion against the Army of Machines. To destroy the system of repression and exploitation, they are forced to resort not only to an arsenal of excellent weapons, but also to their outstanding skills.</p>\r\n\r\n<p>Participation in the mission to save the human race from its complete extermination brings them a deeper understanding of the construction of the Matrix and awareness of the central role of Neo in the fate of mankind.</p>	<p>Борцы за&nbsp;свободу Нео, Тринити и&nbsp;Морфеус продолжают руководить восстанием людей против Армии Машин. Для&nbsp;уничтожения системы репрессий и&nbsp;эксплуатации они&nbsp;вынуждены прибегнуть не&nbsp;только к&nbsp;арсеналу превосходного оружия, но&nbsp;и к&nbsp;своим выдающимся навыкам.<br />\r\n<br />\r\nУчастие в&nbsp;миссии по&nbsp;спасению человеческой расы от&nbsp;ее полного истребления приносит им&nbsp;более глубокое понимание конструкции Матрицы и&nbsp;осознание центральной роли Нео&nbsp;в судьбе человечества.</p>	Some cars help us live, others try to kill us	Одни машины помогают нам жить, другие – пытаются нас убить	The Matrix Reloaded	Матрица 2: Перезагрузка
1	Аватар	Это новый мир	<p><strong><u>Джейк Салли</u></strong> &mdash; бывший морской <em>пехотинец</em>, <s>прикованный к инвалидному креслу.</s> Несмотря на немощное тело, Джейк в душе по-прежнему остается воином. Он получает задание совершить путешествие в несколько световых лет к базе землян на планете Пандора, где корпорации добывают редкий минерал, имеющий огромное значение для выхода Земли из энергетического кризиса.</p>\r\n\r\n<p><iframe allowfullscreen="" frameborder="0" height="360" src="https://www.youtube.com/embed/6ziBFh3V1aM" width="640"></iframe></p>	movies/avatar.jpg	2009	США	2009-12-10	237000000	749766139	1994570654	avatar	f	1	\N	США	\N	<p><strong><u>Джейк Салли</u></strong> &mdash; бывший морской <em>пехотинец</em>, <s>прикованный к инвалидному креслу.</s> Несмотря на немощное тело, Джейк в душе по-прежнему остается воином. Он получает задание совершить путешествие в несколько световых лет к базе землян на планете Пандора, где корпорации добывают редкий минерал, имеющий огромное значение для выхода Земли из энергетического кризиса.</p>\r\n\r\n<p><iframe allowfullscreen="" frameborder="0" height="360" src="https://www.youtube.com/embed/6ziBFh3V1aM" width="640"></iframe></p>	\N	Это новый мир	\N	Аватар
2	Пьяный мастер 2	Не попадайтесь у него на пути, когда он пьян!	Пьяный мастер возвращается, его стиль становится еще более отточенным и смешным! Возвращаясь домой из шопинг-тура вместе со своим отцом, знаменитый «пьяный мастер» Вонг-Фей Хунг оказывается вовлеченным в потасовку между иностранцами, пытающимися вывезти из Китая ценные древние реликвии, и патриотами, которые хотят помешать вывозу этих предметов из страны.\r\n\r\nК сожалению, отец Вонг-Фей Хунга никогда не занимался ни одним из видов спорта, кроме пьяных драк, поэтому герою приходится сражаться практически одному против толпы. Но как всегда его удивительный стиль боя помогает ему расправиться с многочисленными врагами.	movies/drunk-master.jpg	1994	Гонконг	1994-02-03	10000000	11555430	11555430	drunk-master	f	1	\N	Гонконг	\N	Пьяный мастер возвращается, его стиль становится еще более отточенным и смешным! Возвращаясь домой из шопинг-тура вместе со своим отцом, знаменитый «пьяный мастер» Вонг-Фей Хунг оказывается вовлеченным в потасовку между иностранцами, пытающимися вывезти из Китая ценные древние реликвии, и патриотами, которые хотят помешать вывозу этих предметов из страны.\r\n\r\nК сожалению, отец Вонг-Фей Хунга никогда не занимался ни одним из видов спорта, кроме пьяных драк, поэтому герою приходится сражаться практически одному против толпы. Но как всегда его удивительный стиль боя помогает ему расправиться с многочисленными врагами.	\N	Не попадайтесь у него на пути, когда он пьян!	\N	Пьяный мастер 2
4	Матрица	Добро пожаловать в реальный мир	<p>Жизнь Томаса Андерсона разделена на&nbsp;две части: днём он&nbsp;&mdash;&nbsp;самый обычный офисный работник, получающий нагоняи от&nbsp;начальства, а&nbsp;ночью превращается в&nbsp;хакера по&nbsp;имени Нео, и&nbsp;нет места в&nbsp;сети, куда он&nbsp;не смог бы&nbsp;дотянуться. Но&nbsp;однажды всё меняется&nbsp;&mdash;&nbsp;герой, сам&nbsp;того не&nbsp;желая, узнаёт страшную правду: всё, что&nbsp;его окружает&nbsp;&mdash;&nbsp;не более, чем&nbsp;иллюзия, Матрица, а&nbsp;люди&nbsp;&mdash;&nbsp;всего лишь источник питания для&nbsp;искусственного интеллекта, поработившего человечество. И&nbsp;только Нео&nbsp;под силу изменить расстановку сил&nbsp;в этом чужом и&nbsp;страшном мире.</p>	movies/matrix_U6qh4t4.jpg	1999	США	2020-05-08	63000000	171479930	463517383	matrix	f	1	\N	США	\N	<p>Жизнь Томаса Андерсона разделена на&nbsp;две части: днём он&nbsp;&mdash;&nbsp;самый обычный офисный работник, получающий нагоняи от&nbsp;начальства, а&nbsp;ночью превращается в&nbsp;хакера по&nbsp;имени Нео, и&nbsp;нет места в&nbsp;сети, куда он&nbsp;не смог бы&nbsp;дотянуться. Но&nbsp;однажды всё меняется&nbsp;&mdash;&nbsp;герой, сам&nbsp;того не&nbsp;желая, узнаёт страшную правду: всё, что&nbsp;его окружает&nbsp;&mdash;&nbsp;не более, чем&nbsp;иллюзия, Матрица, а&nbsp;люди&nbsp;&mdash;&nbsp;всего лишь источник питания для&nbsp;искусственного интеллекта, поработившего человечество. И&nbsp;только Нео&nbsp;под силу изменить расстановку сил&nbsp;в этом чужом и&nbsp;страшном мире.</p>	\N	Добро пожаловать в реальный мир	\N	Матрица
5	Семнадцать мгновений весны	111	<p>Советский 12-серийный художественный&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%A2%D0%B5%D0%BB%D0%B5%D1%84%D0%B8%D0%BB%D1%8C%D0%BC" title="Телефильм">телефильм</a>&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%9B%D0%B8%D0%BE%D0%B7%D0%BD%D0%BE%D0%B2%D0%B0,_%D0%A2%D0%B0%D1%82%D1%8C%D1%8F%D0%BD%D0%B0_%D0%9C%D0%B8%D1%85%D0%B0%D0%B9%D0%BB%D0%BE%D0%B2%D0%BD%D0%B0" title="Лиознова, Татьяна Михайловна">Татьяны Лиозновой</a>. Снят по&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%A1%D0%B5%D0%BC%D0%BD%D0%B0%D0%B4%D1%86%D0%B0%D1%82%D1%8C_%D0%BC%D0%B3%D0%BD%D0%BE%D0%B2%D0%B5%D0%BD%D0%B8%D0%B9_%D0%B2%D0%B5%D1%81%D0%BD%D1%8B_(%D1%80%D0%BE%D0%BC%D0%B0%D0%BD)" title="Семнадцать мгновений весны (роман)">одноимённому роману</a>&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%A1%D0%B5%D0%BC%D1%91%D0%BD%D0%BE%D0%B2,_%D0%AE%D0%BB%D0%B8%D0%B0%D0%BD_%D0%A1%D0%B5%D0%BC%D1%91%D0%BD%D0%BE%D0%B2%D0%B8%D1%87" title="Семёнов, Юлиан Семёнович">Юлиана Семёнова</a>.</p>\r\n\r\n<p>Военная драма о советском разведчике, внедрённом в высшие эшелоны власти&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%93%D0%B8%D1%82%D0%BB%D0%B5%D1%80%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F_%D0%93%D0%B5%D1%80%D0%BC%D0%B0%D0%BD%D0%B8%D1%8F" title="Гитлеровская Германия">нацистской Германии</a>, снималась с&nbsp;<a href="https://ru.wikipedia.org/wiki/1971_%D0%B3%D0%BE%D0%B4_%D0%B2_%D0%BA%D0%B8%D0%BD%D0%BE" title="1971 год в кино">1971</a>&nbsp;по&nbsp;<a href="https://ru.wikipedia.org/wiki/1973_%D0%B3%D0%BE%D0%B4_%D0%B2_%D0%BA%D0%B8%D0%BD%D0%BE" title="1973 год в кино">1973</a>&nbsp;год. Показ фильма должен был начаться ко&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%94%D0%B5%D0%BD%D1%8C_%D0%9F%D0%BE%D0%B1%D0%B5%D0%B4%D1%8B" title="День Победы">Дню Победы</a>&nbsp;в мае 1973 года, но был отложен по политическим соображениям, из-за визита в эти дни советского лидера&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%91%D1%80%D0%B5%D0%B6%D0%BD%D0%B5%D0%B2,_%D0%9B%D0%B5%D0%BE%D0%BD%D0%B8%D0%B4_%D0%98%D0%BB%D1%8C%D0%B8%D1%87" title="Брежнев, Леонид Ильич">Леонида Брежнева</a>&nbsp;в&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%A4%D0%A0%D0%93" title="ФРГ">ФРГ</a>. Первую серию картины зрители увидели&nbsp;<a href="https://ru.wikipedia.org/wiki/11_%D0%B0%D0%B2%D0%B3%D1%83%D1%81%D1%82%D0%B0" title="11 августа">11 августа</a>&nbsp;1973 года. Фильм приобрёл широкую популярность в Советском Союзе уже во время премьерного показа, в связи с чем повторный показ состоялся уже через три месяца<sup><a href="https://ru.wikipedia.org/wiki/%D0%A1%D0%B5%D0%BC%D0%BD%D0%B0%D0%B4%D1%86%D0%B0%D1%82%D1%8C_%D0%BC%D0%B3%D0%BD%D0%BE%D0%B2%D0%B5%D0%BD%D0%B8%D0%B9_%D0%B2%D0%B5%D1%81%D0%BD%D1%8B_(%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%B8%D0%BB%D1%8C%D0%BC)#cite_note-ReferenceB-1">[1]</a></sup>.</p>\r\n\r\n<p>В&nbsp;<a href="https://ru.wikipedia.org/wiki/1976_%D0%B3%D0%BE%D0%B4" title="1976 год">1976 году</a>&nbsp;удостоен&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%93%D0%BE%D1%81%D1%83%D0%B4%D0%B0%D1%80%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%B0%D1%8F_%D0%BF%D1%80%D0%B5%D0%BC%D0%B8%D1%8F_%D0%A0%D0%A1%D0%A4%D0%A1%D0%A0" title="">Государственной премии РСФСР имени братьев Васильевых</a>, а в&nbsp;<a href="https://ru.wikipedia.org/wiki/1978_%D0%B3%D0%BE%D0%B4" title="1978 год">1978 году</a>&nbsp;&mdash;&nbsp;<a href="https://ru.wikipedia.org/w/index.php?title=%D0%9F%D1%80%D0%B5%D0%BC%D0%B8%D1%8F_%D0%9A%D0%93%D0%91_%D0%A1%D0%A1%D0%A1%D0%A0&amp;action=edit&amp;redlink=1" title="Премия КГБ СССР (страница отсутствует)">премии КГБ СССР</a>.</p>	movies/mgnovenia_L0zLCzf.jpg	1973	СССР	1973-08-11	0	0	0	mgnovenia	f	2	\N	СССР	\N	<p>Советский 12-серийный художественный&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%A2%D0%B5%D0%BB%D0%B5%D1%84%D0%B8%D0%BB%D1%8C%D0%BC" title="Телефильм">телефильм</a>&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%9B%D0%B8%D0%BE%D0%B7%D0%BD%D0%BE%D0%B2%D0%B0,_%D0%A2%D0%B0%D1%82%D1%8C%D1%8F%D0%BD%D0%B0_%D0%9C%D0%B8%D1%85%D0%B0%D0%B9%D0%BB%D0%BE%D0%B2%D0%BD%D0%B0" title="Лиознова, Татьяна Михайловна">Татьяны Лиозновой</a>. Снят по&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%A1%D0%B5%D0%BC%D0%BD%D0%B0%D0%B4%D1%86%D0%B0%D1%82%D1%8C_%D0%BC%D0%B3%D0%BD%D0%BE%D0%B2%D0%B5%D0%BD%D0%B8%D0%B9_%D0%B2%D0%B5%D1%81%D0%BD%D1%8B_(%D1%80%D0%BE%D0%BC%D0%B0%D0%BD)" title="Семнадцать мгновений весны (роман)">одноимённому роману</a>&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%A1%D0%B5%D0%BC%D1%91%D0%BD%D0%BE%D0%B2,_%D0%AE%D0%BB%D0%B8%D0%B0%D0%BD_%D0%A1%D0%B5%D0%BC%D1%91%D0%BD%D0%BE%D0%B2%D0%B8%D1%87" title="Семёнов, Юлиан Семёнович">Юлиана Семёнова</a>.</p>\r\n\r\n<p>Военная драма о советском разведчике, внедрённом в высшие эшелоны власти&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%93%D0%B8%D1%82%D0%BB%D0%B5%D1%80%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F_%D0%93%D0%B5%D1%80%D0%BC%D0%B0%D0%BD%D0%B8%D1%8F" title="Гитлеровская Германия">нацистской Германии</a>, снималась с&nbsp;<a href="https://ru.wikipedia.org/wiki/1971_%D0%B3%D0%BE%D0%B4_%D0%B2_%D0%BA%D0%B8%D0%BD%D0%BE" title="1971 год в кино">1971</a>&nbsp;по&nbsp;<a href="https://ru.wikipedia.org/wiki/1973_%D0%B3%D0%BE%D0%B4_%D0%B2_%D0%BA%D0%B8%D0%BD%D0%BE" title="1973 год в кино">1973</a>&nbsp;год. Показ фильма должен был начаться ко&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%94%D0%B5%D0%BD%D1%8C_%D0%9F%D0%BE%D0%B1%D0%B5%D0%B4%D1%8B" title="День Победы">Дню Победы</a>&nbsp;в мае 1973 года, но был отложен по политическим соображениям, из-за визита в эти дни советского лидера&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%91%D1%80%D0%B5%D0%B6%D0%BD%D0%B5%D0%B2,_%D0%9B%D0%B5%D0%BE%D0%BD%D0%B8%D0%B4_%D0%98%D0%BB%D1%8C%D0%B8%D1%87" title="Брежнев, Леонид Ильич">Леонида Брежнева</a>&nbsp;в&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%A4%D0%A0%D0%93" title="ФРГ">ФРГ</a>. Первую серию картины зрители увидели&nbsp;<a href="https://ru.wikipedia.org/wiki/11_%D0%B0%D0%B2%D0%B3%D1%83%D1%81%D1%82%D0%B0" title="11 августа">11 августа</a>&nbsp;1973 года. Фильм приобрёл широкую популярность в Советском Союзе уже во время премьерного показа, в связи с чем повторный показ состоялся уже через три месяца<sup><a href="https://ru.wikipedia.org/wiki/%D0%A1%D0%B5%D0%BC%D0%BD%D0%B0%D0%B4%D1%86%D0%B0%D1%82%D1%8C_%D0%BC%D0%B3%D0%BD%D0%BE%D0%B2%D0%B5%D0%BD%D0%B8%D0%B9_%D0%B2%D0%B5%D1%81%D0%BD%D1%8B_(%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%B8%D0%BB%D1%8C%D0%BC)#cite_note-ReferenceB-1">[1]</a></sup>.</p>\r\n\r\n<p>В&nbsp;<a href="https://ru.wikipedia.org/wiki/1976_%D0%B3%D0%BE%D0%B4" title="1976 год">1976 году</a>&nbsp;удостоен&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%93%D0%BE%D1%81%D1%83%D0%B4%D0%B0%D1%80%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%B0%D1%8F_%D0%BF%D1%80%D0%B5%D0%BC%D0%B8%D1%8F_%D0%A0%D0%A1%D0%A4%D0%A1%D0%A0" title="">Государственной премии РСФСР имени братьев Васильевых</a>, а в&nbsp;<a href="https://ru.wikipedia.org/wiki/1978_%D0%B3%D0%BE%D0%B4" title="1978 год">1978 году</a>&nbsp;&mdash;&nbsp;<a href="https://ru.wikipedia.org/w/index.php?title=%D0%9F%D1%80%D0%B5%D0%BC%D0%B8%D1%8F_%D0%9A%D0%93%D0%91_%D0%A1%D0%A1%D0%A1%D0%A0&amp;action=edit&amp;redlink=1" title="Премия КГБ СССР (страница отсутствует)">премии КГБ СССР</a>.</p>	\N	111	\N	Семнадцать мгновений весны
\.


--
-- Data for Name: movies_app_movie_actors; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.movies_app_movie_actors (id, movie_id, actor_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	2	1
5	3	1
6	4	2
7	5	5
8	6	2
9	7	2
\.


--
-- Data for Name: movies_app_movie_directors; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.movies_app_movie_directors (id, movie_id, actor_id) FROM stdin;
1	1	3
2	2	1
3	3	1
4	4	3
5	5	5
6	6	4
7	7	4
\.


--
-- Data for Name: movies_app_movie_genres; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.movies_app_movie_genres (id, movie_id, genre_id) FROM stdin;
1	1	2
2	2	1
3	2	2
4	3	1
5	3	2
6	4	2
7	5	5
8	6	2
9	7	2
\.


--
-- Data for Name: movies_app_movieshort; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.movies_app_movieshort (id, title, description, image, movie_id, description_en, description_ru, title_en, title_ru) FROM stdin;
1	Стрельба из лука	Обучение главного героя стрельбе из лука.	movie_short/Avatar1.jpg	1	\N	Обучение главного героя стрельбе из лука.	\N	Стрельба из лука
2	Главный герой и его аватар	Главный герой на фоне тела аватара	movie_short/Avatar2.jpg	1	\N	Главный герой на фоне тела аватара	\N	Главный герой и его аватар
3	Главный герой перед полетом	Главный герой перед полетом	movie_short/Avatar3.jpg	1	\N	Главный герой перед полетом	\N	Главный герой перед полетом
5	Колено главного героя	Демонстрация трюка на съемочной площадке	movie_short/drunk_master2.jpg	2	\N	Демонстрация трюка на съемочной площадке	\N	Колено главного героя
4	Главный герой в мыле	Главного героя бьют, но дело происходит в начале фильма, поэтому у него еще не открылось второго дыхания и еще нет перевеса в физической силе и ловкости.	movie_short/drunk_master1.jpg	2	\N	Главного героя бьют, но дело происходит в начале фильма, поэтому у него еще не открылось второго дыхания и еще нет перевеса в физической силе и ловкости.	\N	Главный герой в мыле
6	Главные алкоголики фильма	Главный герой со своим учителем-отцом выпиывают.	movie_short/drunk_master3.jpg	2	\N	Главный герой со своим учителем-отцом выпиывают.	\N	Главные алкоголики фильма
7	Перестрелка главных героев	Начало схватки Нео с агентом Смиттом.	movie_short/matrix1_KPLdSbW.jpeg	4	\N	Начало схватки Нео с агентом Смиттом.	\N	Перестрелка главных героев
8	Первые проблески правды	Морфиуз рассказывает Нео о Матрице.	movie_short/matrix2_b8NlVvQ.jpeg	4	\N	Морфиуз рассказывает Нео о Матрице.	\N	Первые проблески правды
9	Агент и пули	Агент матрицы уворачивается от пуль.	movie_short/matrix3_eiQ9UQA.jpg	4	\N	Агент матрицы уворачивается от пуль.	\N	Агент и пули
12	Штирлиц и Габи Набель	Штирлиц и Габи Набель в кафе «Элефант»	movie_short/mgnovenia3_AB37ZjZ.jpg	5	\N	Штирлиц и Габи Набель в кафе «Элефант»	\N	Штирлиц и Габи Набель
10	Шелленберг и Гиммлер	Шелленберг и Гиммлер смотрят пропагандистские ролики	movie_short/mgnovenia1_J7dccM8.jpg	5	\N	Шелленберг и Гиммлер смотрят пропагандистские ролики	\N	Шелленберг и Гиммлер
11	Штирлиц и пастор Шлаг	Штирлиц и пастор Шлаг обедают в кафе после освобождения пастора:	movie_short/mgnovenia2_oBkkgMS.jpg	5	\N	Штирлиц и пастор Шлаг обедают в кафе после освобождения пастора:	\N	Штирлиц и пастор Шлаг
16	asda	asd	movie_short/matrix3_1_wwxHsPL.jpg	7	\N	asd	\N	asda
17	asd	asda	movie_short/matrix3_2_c3vvdvC.jpg	7	\N	asda	\N	asd
13	Агенты	В начале фильма агенты нападают на Нео, чтобы продемонстрировать его возможности зрителю.	movie_short/matrix2_1_XZ8qcTS.jpg	6	\N	В начале фильма агенты нападают на Нео, чтобы продемонстрировать его возможности зрителю.	\N	Агенты
14	Пули и Нео	Нео останавливает пули, которые из автоматов выпускают люди Мировинген в Нео и его друзей.	movie_short/matrix2_2_3JuM03C.jpg	6	\N	Нео останавливает пули, которые из автоматов выпускают люди Мировинген в Нео и его друзей.	\N	Пули и Нео
15	Мировинген и Пенелопа	Беседа главных героев с Мировинген и Пенелопой.	movie_short/matrix2_3_C93FD02.jpeg	6	\N	Беседа главных героев с Мировинген и Пенелопой.	\N	Мировинген и Пенелопа
18	ds	asds	movie_short/matrix3_3_7VAXqSA.png	7	\N	asds	\N	ds
\.


--
-- Data for Name: movies_app_rating; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.movies_app_rating (id, ip, movie_id, star_id) FROM stdin;
1	127.0.0.1	1	7
2	127.0.0.1	2	10
\.


--
-- Data for Name: movies_app_ratingstar; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.movies_app_ratingstar (id, value) FROM stdin;
7	1
8	2
9	3
10	4
11	5
\.


--
-- Data for Name: movies_app_reviews; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.movies_app_reviews (id, email, name, text, movie_id, parent_id) FROM stdin;
5	Lintandil@mail.ru	Lintandil	«Если не хочешь платить пошлину — надо стать консулом…»\r\n\r\nРаздолбай Фэй-Хунг в первой части научился кунг-фу так, что просто загляденье. Может уже и что-то не физическое ему стоит объяснить, скажем, что важнее уметь прощать, чем уметь драться. Он уже даже может повторить это наизусть. Правда, выполнять отнюдь не собирается, ну так иначе кина бы и не было! К тому же отец Фэй-Хунга проявляет себя таким самодуром, что только торжествуешь, если его постоянно одурачивают все вокруг. И вот, когда главный герой пытается смошенничать на таможне, чтобы не платить пошлину за отцовский женьшень, оный женьшень в ходе небольшой такой потасовки перемещается к несколько иному индивиду, а у Джеки взамен оказывается нефритовая печать, которая древняя реликвия и так далее. Что ж, похоже, скоро пожалуют незванные гости!\r\n\r\nДраматизму здесь тоже постарались нагнать — мутузят Джеки постоянно и очень мощно. Ну и про культуру и англичан, которые хотят её потырить, вставить отнюдь не мешает («Иначе моим внукам придётся ехать в Англию, чтобы изучать историю Китая!»). И рабочим, которых просто так вытурили с предприятий, помочь можно параллельно. Вот Джеки и демонстрирует как обычные приёмы, так и весь спектр своего пьяного кунг-фу в духе «дядя катает бочку». Даже против того, у кого рука обмотана цепью, выйти он, конечно же, не оробеет! Что ж, женьшень выдался в том году превосходным…	2	\N
6	Leon911@mail.ru	Leon911	Мы все с воодушевлением ждали этого фильма. Помню, как считал дни до премьеры… и был приятно удивлен, что у нас в Тольятти премьера намечена уже на 16 декабря. Это свершилось! И вот я сижу в кинотеатре в ожидании великолепного зрелища…\r\n\r\n3D.\r\n\r\nСкажу сразу этот фильм нужно смотреть только в 3D без вариантов! Превосходство 3D над обычной версией трудно оценить словами. Через 10 минут фильма объемное изображение затягивает тебя с головой, совершенно забываешь, что смотришь 3D-фильм и сам становишься обитателем «нового мира»… Настолько все реально. И заслуга в этом не столько самой технологии 3D, сколько как ей воспользовался великий режиссер Джеймс Кэмерон. Если сравнивать «Аватар 3D» например с недавним «Пунктом назначения-4 3D», то в «Пункте» 3D не давало большого эффекта трехмерности, а только отвлекало и мешало просмотру, передний и задний план разделялся слишком четко, что лишало фильм эффекта реальности происходящего. В «Аватаре» же 3D иное… Передний и задний план разделяются не так четко и смотрятся единой картинкой. Об этом говорит и тот факт, что, потратив почти 15 миллионов долларов собственных средств, режиссер получил в свое распоряжение уникальный стереоскопический съемочный комплекс, принципиально отличавшийся от тех, с которыми работали авторы лучших фантастических фильмов. В некоторых эпизодах объемное изображение просто завораживает, хочется протянуть руку и прикоснуться к чему-нибудь…\r\n\r\nКомпьютерная графика.\r\n\r\nМожно с уверенностью сказать что «Аватар» если и не прорыв в этом плане, то точно новый уровень. Никогда еще компьютерные персонажи не выглядели столь натурально. Вспоминается лишь эпизод с нарисованным Арни из последнего терминатора. Технологический прогресс не стоит на месте. Технология «motion capture» дарит компьютерным персонажам неповторимую естественность в движениях тела, но не обошлось и без нововведений… Вместо технологии «performance capture», которая наделяет персонажей реалистичной мимикой, Кэмерон использовал свою собственную — надел на актеров шлемы особой конструкции с укрепленными на них микрокамерами, которые считывали не только всю мимику, но и малейшие движения глазных яблок, что позволило победить эффект «мертвых глаз». Лица На’ви ожили! Невиданные красоты и реалистичность флоры и фауны Пандоры радуют глаз. В этом видится заслуга технологии «Reality Camera System». А детализации анимированных животных позавидовали бы Дискавери и BBC. Картина уже попала в Лонг-лист на номинацию Оскар в категории «лучшие визуальные эффекты». Думаю и победа не за горами. Стоит отметить, что в этот Лонг-лист не попали даже «Трансформеры-2», где упор делался именно на графику…\r\n\r\nСюжет.\r\n\r\nФильм смотрится на одном дыхании. За 2,5 часа я не заметил ни одного скучного эпизода. Все зрители с открытым ртом наблюдали за красотами Пандоры в первой половине фильма и бешеным действом во второй. Понимая о неизбежности окончания фильма, ловишь себя на желании, чтобы он никогда не заканчивался и продолжал радовать и радовать. Посмотрел бы еще раз с удовольствием! Сюжет фильма действительно хорош, держит в напряжении до самого конца. Джеймс Кэмерон — великолепный фантаст! Конечно, некоторые сюжетные линии предсказуемы, но как же без этого. Сам сюжет фильма, думаю, пересказывать не имеет смысла.\r\n\r\nИгра актеров.\r\n\r\nНе выделил бы ни одну выдающуюся актерскую игру, все актеры сыграли на хорошем уровне, но не более… Самым эмоциональным персонажем выглядела девушка-на’ви Нейтири, однако насколько в этом заслуга Зои Салдана судить сложно. Но я не стал бы за это ставить картине минус. В данном случае все актеры просто меркнут под величием проекта.\r\n\r\nИтог.\r\n\r\nФильм оправдал мои ожидания на 100%. Фильм не оказался вновь шикарно разрекламированной пустышкой. Он великолепен во всех своих аспектах и будет еще долго оставаться в наших умах. Джеймс Кэмерон, с возвращением на большую сцену!\r\n\r\n10 из 10	1	\N
7	murphy@mail.ru	murphy	Чувство непреодолимой гордости за чужую планету…\r\n\r\nСлоган фильма кричит «Это новый мир» и это действительно так. Мира, на столько сказочного и волшебного ещё не было. Каждая маленькая деталь живёт своей жизнью и функционирует в общем круговороте. Все живые организмы на планете Пандора взаимосвязаны между собой, как большой пучок нервов: гуманоиды, животные, растения.\r\n\r\nНе уводя глаза в сторону можно сказать, что в этот фильм вложено невероятное количество труда и конечно денег. Картинка происходящего на столько вылизана, что кажется, даже маленькую слезу на глазах героем, редактировали несколько месяцев.\r\n\r\nПоражает то, что от фильма нельзя отвести глаз, он завараживает тебя до начала титров. Все 160 минут фильм держит в напряжении. Отдельное слово нужно оставить спецэффектам, реалистичные и в то же время необычные, которые не требуют одобрения, они одобрены изначально.\r\n\r\nСмотря фильм, постепенно в мозг поступает импульс, приказывающий чувствовать любовь, сострадание и гордость к обитателем чужой планеты… Режиссер как бы говорит «Люди — это варвары, которым есть дело, только до денег и до своей задницы».\r\n\r\nВ плане режиссуры Джеймс Кэмерон не стал изобретать велосипед, а использовал проверенные временем приёмы, которые оказывается до сих пор действуют.\r\n\r\nАватар, это великолепный показатель, что старая школа ещё существует и не нужно разбивать голову об стену, чтобы снять по-настоящему достойную ленту.\r\n\r\nПосле просмотра фильма жаль только одного, жаль, что ты посмотрел этот фильм не будучи 10 летним ребёнком, ведь тогда бы вся атмосфера доброты и правильности была намного мощнее и убедительнее.\r\n\r\n9 из 10	1	\N
8	ser.guzun19@gmail.com	Сергей Гузун	m,.,m	2	\N
9	d@mail.com	ser19	aasdf	2	\N
10	d@mail.com	ser19	aasdf	2	\N
11	ser.guzun19@gmail.com	Гузун Сергей Юрьевич	nnjnm	2	\N
12	ser.guzun19@gmail.com	Гузун Сергей Юрьевич	nnjnm	2	\N
13	ser.guzun19@gmail.com	Гузун Сергей Юрьевич	nnjnm	2	\N
14	murphy@mail.ru	murphy	murphy,  dfsdfs	1	7
15	ser.guzun19@gmail.com	Гузун Сергей Юрьевич	jkhjkjhj	1	\N
16			Я с детства обожаю фильмы с Джеки Чаном. Фильмы с его участием всегда были веселые и с очень хорошо поставленными трюками и поединками. И вот в один день я посмотрел» Легенда о пьяном мастере» и это перевернуло все мое представление о Джеке Чане и вообще о фильмах боевых исскуств.\r\n\r\nПосле просмотра, я сидел с открытым ртом. Такого я уже давно не видел. Джеки удалось снять идеальный и во всем сбалансированный фильм. В фильме идеально все. Разберем все по порядку:\r\n\r\n1. Сюжет- весьма интересный для боевика. Нам показывают юного парня по имени Вонг Фей-Хонг. Он мастерски владеет стилем «пьяный мастер». В один день он вместе с отцом возвращались с рынка с покупками и чтобы не платить пошлину посольству Англии, Фей-Хонг прячет женьшень в чемодане одного важного англичанина. Позже Фей-Хонг путает коробку с женьшенем с коробкой где находится нефритовая статуэтка, которую тайно вывозили из Китая. Весь фильм это противостояние Народа Китая против Правительства Ангии, которые вывозили ценности Китая. Сюжет подан интересно и за весь просмотр, никогда не скучал.\r\n\r\n2. Музыка- Очень приятная для ушей. Присутствуют в основном китайские мелодии, которые очень приятно слушать. Отдельно стоит сказать что все мелодии подобраны идеально к конкретным ситуациям. Допустим когда есть грустный момент, играет трогающая мелодия. Когда происходит драка(особенно в начале) так как главный герой пьяный, играет веселая музыка.\r\n\r\n3. Актеры- все справились на 100 процентов. Джеки Чан просто великолепен. Например когда он пяьн во время поединков, то он улыбается, корчит рожицы и вообще веселится, в грустных ситуациях он иногда плачет. Стоит отметить игру Аниты Муи которая сыграла мать Фей-Хонга. Ее игра великолепна, ведет она себя весело и придает фильму какой то особенный шарм. Хорошо сыграл и Кен Ло(главный злодей), прям действительно веришь что он воплощение зла и хотелось чтобы его победили.\r\n\r\n4. Поединки- они бесподобны. Если вы не видели этот фильм то обязательно посмотрите. Все поединки захватывают дух и иногда удары происходят так быстро что не успеваешь понять как кто то бил. Фей-Хонг напившись, творит просто невероятные трюки, порой даже смешные как например бутылка вина(когда он берет противника и крутит его в руках как бытулку) и вообще все смотрится весело и захватывающе. Хочется сказать Браво Джеки, который выложился на все сто. Есть сцена в которой его столкнули в горящие угли и он должен был проползти по ним. Джеки Чан делал это все сам без дублера да и к тому же немного пострадали его руки, но он делал это ради нас, чтобы мы оценили происходящее. Не каждый актер готов пойти на такое! Финальный поединок, на мой взгляд, самый лучший в истории кинематографа, так как Джеки и Кен Ло выкладываются по полной и творят просто сумасшедшие вещи.\r\n\r\nЭтот фильм, на мой взгляд самый лучший фильм про боевые искусства. Он идеален во всем. Если вы еще не посмотрели его, то обязательно посмотрите. А тому кому не нравятся боевые исскуства то посмотрите это, вы обязательно измените свое мнение.\r\n\r\nФильм на века, с отличными актерами и самыми захватывающими поединками. Изумительно!\r\n\r\n10 из 10	3	\N
17			«Если не хочешь платить пошлину — надо стать консулом…»\r\n\r\nРаздолбай Фэй-Хунг в первой части научился кунг-фу так, что просто загляденье. Может уже и что-то не физическое ему стоит объяснить, скажем, что важнее уметь прощать, чем уметь драться. Он уже даже может повторить это наизусть. Правда, выполнять отнюдь не собирается, ну так иначе кина бы и не было! К тому же отец Фэй-Хунга проявляет себя таким самодуром, что только торжествуешь, если его постоянно одурачивают все вокруг. И вот, когда главный герой пытается смошенничать на таможне, чтобы не платить пошлину за отцовский женьшень, оный женьшень в ходе небольшой такой потасовки перемещается к несколько иному индивиду, а у Джеки взамен оказывается нефритовая печать, которая древняя реликвия и так далее. Что ж, похоже, скоро пожалуют незванные гости!\r\n\r\nДраматизму здесь тоже постарались нагнать — мутузят Джеки постоянно и очень мощно. Ну и про культуру и англичан, которые хотят её потырить, вставить отнюдь не мешает («Иначе моим внукам придётся ехать в Англию, чтобы изучать историю Китая!»). И рабочим, которых просто так вытурили с предприятий, помочь можно параллельно. Вот Джеки и демонстрирует как обычные приёмы, так и весь спектр своего пьяного кунг-фу в духе «дядя катает бочку». Даже против того, у кого рука обмотана цепью, выйти он, конечно же, не оробеет! Что ж, женьшень выдался в том году превосходным…	3	\N
19			aasdf	3	\N
22			nnjnm	3	\N
23			nnjnm	3	\N
18			m,.,m	3	20
20			aasdf	3	21
21			nnjnm	3	17
4	batman1284@mail.ru	batman1284	Я с детства обожаю фильмы с Джеки Чаном. Фильмы с его участием всегда были веселые и с очень хорошо поставленными трюками и поединками. И вот в один день я посмотрел» Легенда о пьяном мастере» и это перевернуло все мое представление о Джеке Чане и вообще о фильмах боевых исскуств.\r\n\r\nПосле просмотра, я сидел с открытым ртом. Такого я уже давно не видел. Джеки удалось снять идеальный и во всем сбалансированный фильм. В фильме идеально все. Разберем все по порядку:\r\n\r\n1. Сюжет- весьма интересный для боевика. Нам показывают юного парня по имени Вонг Фей-Хонг. Он мастерски владеет стилем «пьяный мастер». В один день он вместе с отцом возвращались с рынка с покупками и чтобы не платить пошлину посольству Англии, Фей-Хонг прячет женьшень в чемодане одного важного англичанина. Позже Фей-Хонг путает коробку с женьшенем с коробкой где находится нефритовая статуэтка, которую тайно вывозили из Китая. Весь фильм это противостояние Народа Китая против Правительства Ангии, которые вывозили ценности Китая. Сюжет подан интересно и за весь просмотр, никогда не скучал.\r\n\r\n2. Музыка- Очень приятная для ушей. Присутствуют в основном китайские мелодии, которые очень приятно слушать. Отдельно стоит сказать что все мелодии подобраны идеально к конкретным ситуациям. Допустим когда есть грустный момент, играет трогающая мелодия. Когда происходит драка(особенно в начале) так как главный герой пьяный, играет веселая музыка.\r\n\r\n3. Актеры- все справились на 100 процентов. Джеки Чан просто великолепен. Например когда он пяьн во время поединков, то он улыбается, корчит рожицы и вообще веселится, в грустных ситуациях он иногда плачет. Стоит отметить игру Аниты Муи которая сыграла мать Фей-Хонга. Ее игра великолепна, ведет она себя весело и придает фильму какой то особенный шарм. Хорошо сыграл и Кен Ло(главный злодей), прям действительно веришь что он воплощение зла и хотелось чтобы его победили.\r\n\r\n4. Поединки- они бесподобны. Если вы не видели этот фильм то обязательно посмотрите. Все поединки захватывают дух и иногда удары происходят так быстро что не успеваешь понять как кто то бил. Фей-Хонг напившись, творит просто невероятные трюки, порой даже смешные как например бутылка вина(когда он берет противника и крутит его в руках как бытулку) и вообще все смотрится весело и захватывающе. Хочется сказать Браво Джеки, который выложился на все сто. Есть сцена в которой его столкнули в горящие угли и он должен был проползти по ним. Джеки Чан делал это все сам без дублера да и к тому же немного пострадали его руки, но он делал это ради нас, чтобы мы оценили происходящее. Не каждый актер готов пойти на такое! Финальный поединок, на мой взгляд, самый лучший в истории кинематографа, так как Джеки и Кен Ло выкладываются по полной и творят просто сумасшедшие вещи.\r\n\r\nЭтот фильм, на мой взгляд самый лучший фильм про боевые искусства. Он идеален во всем. Если вы еще не посмотрели его, то обязательно посмотрите. А тому кому не нравятся боевые исскуства то посмотрите это, вы обязательно измените свое мнение.\r\n\r\nФильм на века, с отличными актерами и самыми захватывающими поединками. Изумительно!\r\n\r\n10 из 10	2	4
24	rezzonner@gmail.com	Rezzonner	Матрица, как много в слове этом. Не многие думали, что один инновационный фильм перерастет в трилогию, и в совсем не плохую, спешу заметить. Но все таки это случилось, и это, как бы вам не хотелось, имеет место быть.\r\n\r\nВ данном случае, на операционном столе лежит симпатичный гибрид первой и второй частей. Зрелищно, но с умом. Сюжет подходит к концу, и Вачовски ненавязчиво преподносят его.\r\n\r\nСпецэффекты, как обычно, радуют. Актерская игра тоже. Особенно игра Лоуренса Фишберна, который за все три фильма не потерял обаяния своего героя. Да и Ривз отличился неплохим слиянием с Нео, впрочем как и Уивинг с агентом Смитом.\r\n\r\nПодводя итог, хочется поделиться своим видением финала.\r\n\r\nФинал вовсе не означает конец битвы агента Смита и мистера Андерсона, как мне показалось. «Революция» в том, что человек и машина объединились для общей цели. Неважно какая эта цель. Важно то, что машина поняла человека.\r\n\r\n10 из 10	7	\N
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
1	vk	1733670	2020-05-21 22:25:36.630033+03	2020-05-21 22:25:36.63006+03	{"id": 1733670, "first_name": "\\u0421\\u0435\\u0440\\u0433\\u0435\\u0439", "last_name": "\\u0413\\u0443\\u0437\\u0443\\u043d", "is_closed": false, "can_access_closed": true, "sex": 2, "nickname": "", "screen_name": "id1733670", "bdate": "8.4.1991", "city": {"id": 1, "title": "\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430"}, "country": {"id": 1, "title": "\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f"}, "timezone": 3, "photo": "https://sun9-2.userapi.com/c622923/v622923670/2fe52/BIDwT5jDqwc.jpg?ava=1", "photo_medium": "https://sun9-30.userapi.com/c622923/v622923670/2fe51/ObkzTrOPPrM.jpg?ava=1", "photo_big": "https://sun9-6.userapi.com/c622923/v622923670/2fe4f/1m79x0iMv1w.jpg?ava=1", "photo_max_orig": "https://sun9-6.userapi.com/c622923/v622923670/2fe4f/1m79x0iMv1w.jpg?ava=1", "has_mobile": 1, "online": 1, "activity": "", "last_seen": {"time": 1590088940, "platform": 7}, "counters": {"albums": 1, "videos": 21, "audios": 226, "photos": 18, "groups": 209, "gifts": 0, "friends": 429, "online_friends": 35, "followers": 170, "subscriptions": 3, "pages": 25}, "university": 339, "university_name": "\\u0420\\u0425\\u0422\\u0423 \\u0438\\u043c. \\u0414. \\u0418. \\u041c\\u0435\\u043d\\u0434\\u0435\\u043b\\u0435\\u0435\\u0432\\u0430", "faculty": 1524, "faculty_name": "\\u0424\\u0430\\u043a\\u0443\\u043b\\u044c\\u0442\\u0435\\u0442 \\u043d\\u0435\\u0444\\u0442\\u0435\\u0433\\u0430\\u0437\\u043e\\u0445\\u0438\\u043c\\u0438\\u0438 \\u0438 \\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432", "graduation": 2014, "education_form": "\\u041e\\u0447\\u043d\\u043e\\u0435 \\u043e\\u0442\\u0434\\u0435\\u043b\\u0435\\u043d\\u0438\\u0435", "education_status": "\\u0421\\u0442\\u0443\\u0434\\u0435\\u043d\\u0442 (\\u043c\\u0430\\u0433\\u0438\\u0441\\u0442\\u0440)", "relation": 4, "universities": [{"id": 339, "country": 1, "city": 1, "name": "\\u0420\\u0425\\u0422\\u0423 \\u0438\\u043c. \\u041c\\u0435\\u043d\\u0434\\u0435\\u043b\\u0435\\u0435\\u0432\\u0430", "faculty": 1524, "faculty_name": "\\u0424\\u0430\\u043a\\u0443\\u043b\\u044c\\u0442\\u0435\\u0442 \\u043d\\u0435\\u0444\\u0442\\u0435\\u0433\\u0430\\u0437\\u043e\\u0445\\u0438\\u043c\\u0438\\u0438 \\u0438 \\u043f\\u043e\\u043b\\u0438\\u043c\\u0435\\u0440\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432", "chair": 1773690, "chair_name": "\\u0425\\u0438\\u043c\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0439 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u0433\\u043e \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0433\\u043e \\u0438 \\u043d\\u0435\\u0444\\u0442\\u0435\\u0445\\u0438\\u043c\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u0438\\u043d\\u0442\\u0435\\u0437\\u0430", "graduation": 2014, "education_form": "\\u041e\\u0447\\u043d\\u043e\\u0435 \\u043e\\u0442\\u0434\\u0435\\u043b\\u0435\\u043d\\u0438\\u0435", "education_status": "\\u0421\\u0442\\u0443\\u0434\\u0435\\u043d\\u0442 (\\u043c\\u0430\\u0433\\u0438\\u0441\\u0442\\u0440)"}]}	4
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
1	vk	vk	7477845	jYpsMg5r91qjzx1a4s9w	723087557230875572308755f672429d0077230723087552cf6524dc5c48c42b596cff1
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: sergei
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
1	e80956789db83508a90d6cdb8d6492b333cad5fb0f1f1ee30ea0f666c79c8270d462da1bf1b378322ee55		2020-05-22 22:25:36.421149+03	1	1
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 2, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 100, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: contact_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.contact_contact_id_seq', 1, false);


--
-- Name: contact_sub_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.contact_sub_contact_id_seq', 4, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 66, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 23, true);


--
-- Name: django_flatpage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.django_flatpage_id_seq', 1, true);


--
-- Name: django_flatpage_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.django_flatpage_sites_id_seq', 1, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 36, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: movies_app_actor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.movies_app_actor_id_seq', 5, true);


--
-- Name: movies_app_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.movies_app_category_id_seq', 4, true);


--
-- Name: movies_app_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.movies_app_genre_id_seq', 5, true);


--
-- Name: movies_app_movie_actor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.movies_app_movie_actor_id_seq', 9, true);


--
-- Name: movies_app_movie_directors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.movies_app_movie_directors_id_seq', 7, true);


--
-- Name: movies_app_movie_genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.movies_app_movie_genres_id_seq', 9, true);


--
-- Name: movies_app_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.movies_app_movie_id_seq', 7, true);


--
-- Name: movies_app_movieshort_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.movies_app_movieshort_id_seq', 18, true);


--
-- Name: movies_app_reting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.movies_app_reting_id_seq', 2, true);


--
-- Name: movies_app_retingstar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.movies_app_retingstar_id_seq', 11, true);


--
-- Name: movies_app_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.movies_app_reviews_id_seq', 24, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, true);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, true);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, true);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergei
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, true);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: contact_contact contact_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.contact_contact
    ADD CONSTRAINT contact_contact_pkey PRIMARY KEY (id);


--
-- Name: contact_sub_contact contact_sub_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.contact_sub_contact
    ADD CONSTRAINT contact_sub_contact_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_flatpage django_flatpage_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_flatpage
    ADD CONSTRAINT django_flatpage_pkey PRIMARY KEY (id);


--
-- Name: django_flatpage_sites django_flatpage_sites_flatpage_id_site_id_0d29d9d1_uniq; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_flatpage_sites
    ADD CONSTRAINT django_flatpage_sites_flatpage_id_site_id_0d29d9d1_uniq UNIQUE (flatpage_id, site_id);


--
-- Name: django_flatpage_sites django_flatpage_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_flatpage_sites
    ADD CONSTRAINT django_flatpage_sites_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: movies_app_actor movies_app_actor_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_actor
    ADD CONSTRAINT movies_app_actor_pkey PRIMARY KEY (id);


--
-- Name: movies_app_category movies_app_category_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_category
    ADD CONSTRAINT movies_app_category_pkey PRIMARY KEY (id);


--
-- Name: movies_app_genre movies_app_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_genre
    ADD CONSTRAINT movies_app_genre_pkey PRIMARY KEY (id);


--
-- Name: movies_app_genre movies_app_genre_url_key; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_genre
    ADD CONSTRAINT movies_app_genre_url_key UNIQUE (url);


--
-- Name: movies_app_movie_actors movies_app_movie_actor_movie_id_actor_id_db26bfb1_uniq; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie_actors
    ADD CONSTRAINT movies_app_movie_actor_movie_id_actor_id_db26bfb1_uniq UNIQUE (movie_id, actor_id);


--
-- Name: movies_app_movie_actors movies_app_movie_actor_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie_actors
    ADD CONSTRAINT movies_app_movie_actor_pkey PRIMARY KEY (id);


--
-- Name: movies_app_movie_directors movies_app_movie_directors_movie_id_actor_id_c0bac50d_uniq; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie_directors
    ADD CONSTRAINT movies_app_movie_directors_movie_id_actor_id_c0bac50d_uniq UNIQUE (movie_id, actor_id);


--
-- Name: movies_app_movie_directors movies_app_movie_directors_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie_directors
    ADD CONSTRAINT movies_app_movie_directors_pkey PRIMARY KEY (id);


--
-- Name: movies_app_movie_genres movies_app_movie_genres_movie_id_genre_id_e11a2fe5_uniq; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie_genres
    ADD CONSTRAINT movies_app_movie_genres_movie_id_genre_id_e11a2fe5_uniq UNIQUE (movie_id, genre_id);


--
-- Name: movies_app_movie_genres movies_app_movie_genres_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie_genres
    ADD CONSTRAINT movies_app_movie_genres_pkey PRIMARY KEY (id);


--
-- Name: movies_app_movie movies_app_movie_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie
    ADD CONSTRAINT movies_app_movie_pkey PRIMARY KEY (id);


--
-- Name: movies_app_movie movies_app_movie_url_key; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie
    ADD CONSTRAINT movies_app_movie_url_key UNIQUE (url);


--
-- Name: movies_app_movieshort movies_app_movieshort_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movieshort
    ADD CONSTRAINT movies_app_movieshort_pkey PRIMARY KEY (id);


--
-- Name: movies_app_rating movies_app_rating_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_rating
    ADD CONSTRAINT movies_app_rating_pkey PRIMARY KEY (id);


--
-- Name: movies_app_ratingstar movies_app_ratingstar_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_ratingstar
    ADD CONSTRAINT movies_app_ratingstar_pkey PRIMARY KEY (id);


--
-- Name: movies_app_reviews movies_app_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_reviews
    ADD CONSTRAINT movies_app_reviews_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_flatpage_sites_flatpage_id_078bbc8b; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX django_flatpage_sites_flatpage_id_078bbc8b ON public.django_flatpage_sites USING btree (flatpage_id);


--
-- Name: django_flatpage_sites_site_id_bfd8ea84; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX django_flatpage_sites_site_id_bfd8ea84 ON public.django_flatpage_sites USING btree (site_id);


--
-- Name: django_flatpage_url_41612362; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX django_flatpage_url_41612362 ON public.django_flatpage USING btree (url);


--
-- Name: django_flatpage_url_41612362_like; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX django_flatpage_url_41612362_like ON public.django_flatpage USING btree (url varchar_pattern_ops);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: movies_app_category_url_a3be849b; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX movies_app_category_url_a3be849b ON public.movies_app_category USING btree (url);


--
-- Name: movies_app_category_url_a3be849b_like; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX movies_app_category_url_a3be849b_like ON public.movies_app_category USING btree (url varchar_pattern_ops);


--
-- Name: movies_app_genre_url_cd6dc7a9_like; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX movies_app_genre_url_cd6dc7a9_like ON public.movies_app_genre USING btree (url varchar_pattern_ops);


--
-- Name: movies_app_movie_actor_actor_id_3244be46; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX movies_app_movie_actor_actor_id_3244be46 ON public.movies_app_movie_actors USING btree (actor_id);


--
-- Name: movies_app_movie_actor_movie_id_2092908e; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX movies_app_movie_actor_movie_id_2092908e ON public.movies_app_movie_actors USING btree (movie_id);


--
-- Name: movies_app_movie_category_id_13547e4a; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX movies_app_movie_category_id_13547e4a ON public.movies_app_movie USING btree (category_id);


--
-- Name: movies_app_movie_directors_actor_id_925b7299; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX movies_app_movie_directors_actor_id_925b7299 ON public.movies_app_movie_directors USING btree (actor_id);


--
-- Name: movies_app_movie_directors_movie_id_902ad7b9; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX movies_app_movie_directors_movie_id_902ad7b9 ON public.movies_app_movie_directors USING btree (movie_id);


--
-- Name: movies_app_movie_genres_genre_id_3c6e61a8; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX movies_app_movie_genres_genre_id_3c6e61a8 ON public.movies_app_movie_genres USING btree (genre_id);


--
-- Name: movies_app_movie_genres_movie_id_41d02c54; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX movies_app_movie_genres_movie_id_41d02c54 ON public.movies_app_movie_genres USING btree (movie_id);


--
-- Name: movies_app_movie_url_6f5240cb_like; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX movies_app_movie_url_6f5240cb_like ON public.movies_app_movie USING btree (url varchar_pattern_ops);


--
-- Name: movies_app_movieshort_movie_id_5495c9a5; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX movies_app_movieshort_movie_id_5495c9a5 ON public.movies_app_movieshort USING btree (movie_id);


--
-- Name: movies_app_rating_movie_id_622a6111; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX movies_app_rating_movie_id_622a6111 ON public.movies_app_rating USING btree (movie_id);


--
-- Name: movies_app_rating_star_id_2d201cf2; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX movies_app_rating_star_id_2d201cf2 ON public.movies_app_rating USING btree (star_id);


--
-- Name: movies_app_reviews_movie_id_3c289421; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX movies_app_reviews_movie_id_3c289421 ON public.movies_app_reviews USING btree (movie_id);


--
-- Name: movies_app_reviews_parent_id_eecb2c8c; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX movies_app_reviews_parent_id_eecb2c8c ON public.movies_app_reviews USING btree (parent_id);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: sergei
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_flatpage_sites django_flatpage_site_flatpage_id_078bbc8b_fk_django_fl; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_flatpage_sites
    ADD CONSTRAINT django_flatpage_site_flatpage_id_078bbc8b_fk_django_fl FOREIGN KEY (flatpage_id) REFERENCES public.django_flatpage(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_flatpage_sites django_flatpage_sites_site_id_bfd8ea84_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.django_flatpage_sites
    ADD CONSTRAINT django_flatpage_sites_site_id_bfd8ea84_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movies_app_movie_actors movies_app_movie_act_actor_id_44b9d38f_fk_movies_ap; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie_actors
    ADD CONSTRAINT movies_app_movie_act_actor_id_44b9d38f_fk_movies_ap FOREIGN KEY (actor_id) REFERENCES public.movies_app_actor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movies_app_movie_actors movies_app_movie_act_movie_id_2780b9f1_fk_movies_ap; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie_actors
    ADD CONSTRAINT movies_app_movie_act_movie_id_2780b9f1_fk_movies_ap FOREIGN KEY (movie_id) REFERENCES public.movies_app_movie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movies_app_movie movies_app_movie_category_id_13547e4a_fk_movies_app_category_id; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie
    ADD CONSTRAINT movies_app_movie_category_id_13547e4a_fk_movies_app_category_id FOREIGN KEY (category_id) REFERENCES public.movies_app_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movies_app_movie_directors movies_app_movie_dir_actor_id_925b7299_fk_movies_ap; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie_directors
    ADD CONSTRAINT movies_app_movie_dir_actor_id_925b7299_fk_movies_ap FOREIGN KEY (actor_id) REFERENCES public.movies_app_actor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movies_app_movie_directors movies_app_movie_dir_movie_id_902ad7b9_fk_movies_ap; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie_directors
    ADD CONSTRAINT movies_app_movie_dir_movie_id_902ad7b9_fk_movies_ap FOREIGN KEY (movie_id) REFERENCES public.movies_app_movie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movies_app_movie_genres movies_app_movie_gen_genre_id_3c6e61a8_fk_movies_ap; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie_genres
    ADD CONSTRAINT movies_app_movie_gen_genre_id_3c6e61a8_fk_movies_ap FOREIGN KEY (genre_id) REFERENCES public.movies_app_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movies_app_movie_genres movies_app_movie_gen_movie_id_41d02c54_fk_movies_ap; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movie_genres
    ADD CONSTRAINT movies_app_movie_gen_movie_id_41d02c54_fk_movies_ap FOREIGN KEY (movie_id) REFERENCES public.movies_app_movie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movies_app_movieshort movies_app_movieshort_movie_id_5495c9a5_fk_movies_app_movie_id; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_movieshort
    ADD CONSTRAINT movies_app_movieshort_movie_id_5495c9a5_fk_movies_app_movie_id FOREIGN KEY (movie_id) REFERENCES public.movies_app_movie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movies_app_rating movies_app_rating_movie_id_622a6111_fk_movies_app_movie_id; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_rating
    ADD CONSTRAINT movies_app_rating_movie_id_622a6111_fk_movies_app_movie_id FOREIGN KEY (movie_id) REFERENCES public.movies_app_movie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movies_app_rating movies_app_rating_star_id_1111f567_fk_movies_app_ratingstar_id; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_rating
    ADD CONSTRAINT movies_app_rating_star_id_1111f567_fk_movies_app_ratingstar_id FOREIGN KEY (star_id) REFERENCES public.movies_app_ratingstar(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movies_app_reviews movies_app_reviews_movie_id_3c289421_fk_movies_app_movie_id; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_reviews
    ADD CONSTRAINT movies_app_reviews_movie_id_3c289421_fk_movies_app_movie_id FOREIGN KEY (movie_id) REFERENCES public.movies_app_movie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movies_app_reviews movies_app_reviews_parent_id_eecb2c8c_fk_movies_app_reviews_id; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.movies_app_reviews
    ADD CONSTRAINT movies_app_reviews_parent_id_eecb2c8c_fk_movies_app_reviews_id FOREIGN KEY (parent_id) REFERENCES public.movies_app_reviews(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sergei
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

