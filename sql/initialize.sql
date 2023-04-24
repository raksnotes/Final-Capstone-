DROP TABLE IF EXISTS "jhu_cre_cases_deaths";
DROP TABLE IF EXISTS "location";

-- DROP TABLE IF EXISTS public.jhu_cre_cases_deaths;
-- DROP TABLE IF EXISTS public.location;

CREATE TABLE IF NOT EXISTS public.jhu_cre_cases_deaths
(
    fips double precision NOT NULL,
    cases integer NOT NULL,
    deaths integer NOT NULL,
    lat double precision NOT NULL,
    "long" double precision NOT NULL,
    state character varying COLLATE pg_catalog."default" NOT NULL,
    county character varying COLLATE pg_catalog."default" NOT NULL,
    popuni integer NOT NULL,
    total_population integer NOT NULL,
    zero_rf integer NOT NULL,
    one_two_rf integer NOT NULL,
    three_rf integer NOT NULL,
    housing_units integer NOT NULL,
    hispanic_pop double precision NOT NULL,
    white_pop double precision NOT NULL,
    black_pop double precision NOT NULL,
    native_pop double precision NOT NULL,
    asian_pop double precision NOT NULL,
    pacific_islander_pop double precision NOT NULL,
    other_race_pop double precision NOT NULL,
    bi_tri_racial_pop double precision NOT NULL,
    male_pop double precision NOT NULL,
    female_pop double precision NOT NULL,
    veteran double precision NOT NULL,
    gini_ind_income double precision NOT NULL,
    rural_pop double precision NOT NULL,
    median_age_pop double precision NOT NULL,
    elder_pop double precision NOT NULL,
    disability_pop double precision NOT NULL,
    below_poverty_level double precision NOT NULL,
    single_mothers_pop double precision NOT NULL,
    single_fathers_pop double precision NOT NULL,
    plus_family_homes double precision NOT NULL,
    highschool_grad double precision NOT NULL,
    multilingual_5yrs_plus double precision NOT NULL,
    full_time_workers double precision NOT NULL,
    no_health_insur double precision NOT NULL,
    internet_homes double precision NOT NULL,
    no_vehicle double precision NOT NULL,
    homeowner_vacancy double precision NOT NULL,
    rental_vacancy double precision NOT NULL,
    CONSTRAINT pk_jhu_cre_cases_deaths PRIMARY KEY (fips)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.jhu_cre_cases_deaths
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS public.location
(
    fips double precision NOT NULL,
    lat double precision NOT NULL,
    "long" double precision NOT NULL,
    state character varying COLLATE pg_catalog."default" NOT NULL,
    county character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pk_location PRIMARY KEY (fips)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.location
    OWNER to postgres;