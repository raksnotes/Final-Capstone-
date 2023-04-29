DROP TABLE IF EXISTS "jhu_cre_cases_deaths";
DROP TABLE IF EXISTS "location";

-- DROP TABLE IF EXISTS public.jhu_cre_cases_deaths;
-- DROP TABLE IF EXISTS public.location;

CREATE TABLE IF NOT EXISTS public.jhu_cre_cases_deaths
(
    fips integer NOT NULL,
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
    hispanic_pop integer NOT NULL,
    white_pop integer NOT NULL,
    black_pop integer NOT NULL,
    native_pop integer NOT NULL,
    asian_pop integer NOT NULL,
    pacific_islander_pop integer NOT NULL,
    other_race_pop integer NOT NULL,
    bi_tri_racial_pop integer NOT NULL,
    male_pop integer NOT NULL,
    female_pop integer NOT NULL,
    veteran integer NOT NULL,
    gini_ind_income integer NOT NULL,
    rural_pop integer NOT NULL,
    median_age_pop integer NOT NULL,
    elder_pop integer NOT NULL,
    disability_pop integer NOT NULL,
    below_poverty_level integer NOT NULL,
    single_mothers_pop integer NOT NULL,
    single_fathers_pop integer NOT NULL,
    plus_family_homes integer NOT NULL,
    highschool_grad integer NOT NULL,
    multilingual_5yrs_plus integer NOT NULL,
    full_time_workers integer NOT NULL,
    no_health_insur integer NOT NULL,
    internet_homes integer NOT NULL,
    no_vehicle integer NOT NULL,
    homeowner_vacancy integer NOT NULL,
    rental_vacancy integer NOT NULL,
    CONSTRAINT pk_jhu_cre_cases_deaths PRIMARY KEY (fips)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.jhu_cre_cases_deaths
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS public.location
(
    fips integer NOT NULL,
    lat double precision NOT NULL,
    "long" double precision NOT NULL,
    state character varying COLLATE pg_catalog."default" NOT NULL,
    county character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pk_location PRIMARY KEY (fips)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.location
    OWNER to postgres;