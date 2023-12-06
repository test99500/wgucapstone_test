CREATE TABLE fires(
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  source_system_type TEXT(255),
  source_system TEXT(30),
  source_reporting_unit TEXT(30),
  source_reporting_unit_name TEXT(255),
  nwcg_reporting_agency TEXT(255),
  nwcg_reporting_unit_id TEXT(255),
  nwcg_reporting_unit_name TEXT(255),
  local_fire_report_id TEXT(255),
  local_incident_id TEXT(255),
  owner_code INTEGER,
  owner_descr TEXT(100),
  fire_code TEXT(10),
  fire_name TEXT(255),
  fire_year INTEGER,
  discovery_datetime INTEGER,
  contained_datetime INTEGER,
  stat_cause_code INTEGER,
  stat_cause_descr TEXT(100),
  fire_size FLOAT,
  fire_size_class TEXT(1),
  longitude FLOAT,
  latitude FLOAT,
  state_name TEXT(255),
  state_alpha_code TEXT(2),
  state_fips_code TEXT(2),
  county_name TEXT(255),
  county_fips_name TEXT(255),
  county_fips_code TEXT(3),
  combined_fips_code TEXT(5)
);
CREATE TABLE fips_codes(
  state_name TEXT(255) NOT NULL,
  state_alpha_code TEXT(2) NOT NULL,
  state_numeric_code TEXT(2) NOT NULL,
  county_name TEXT(255) NOT NULL,
  county_numeric_code TEXT(3) NOT NULL,
  CONSTRAINT state_county_numeric_code_unique UNIQUE (state_numeric_code,county_numeric_code)
);