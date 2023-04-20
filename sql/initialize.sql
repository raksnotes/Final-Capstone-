-- Table: public.jhu_cre_cases_deaths

-- DROP TABLE IF EXISTS public.jhu_cre_cases_deaths;

CREATE TABLE "jhu_cre_cases_deaths" (
    "fips" int   NOT NULL,
    "cases" int   NOT NULL,
    "deaths" int   NOT NULL,
    "lat" varchar   NOT NULL,
    "long" varchar   NOT NULL,
    "state" varchar   NOT NULL,
    "county" varchar   NOT NULL,
    "total_population" int   NOT NULL,
    CONSTRAINT "pk_jhu_cre_cases_deaths" PRIMARY KEY (
        "fips"
     )
);

CREATE TABLE "location" (
    "fips" int   NOT NULL,
    "lat" varchar   NOT NULL,
    "long" varchar   NOT NULL,
    "state" varchar   NOT NULL,
    "county" varchar   NOT NULL,
    CONSTRAINT "pk_location" PRIMARY KEY (
        "fips"
     )
);