# marketing_ga4_base_prod_views

Tables created from one-off **CREATE TABLE** commands listed below.

Note: I believe ETL for the **google.com:superb-receiver-344820.marketing_ga4_base_prod..** suite of tables will cause the tables below to become stale. I placed the date I created the tables as part of the folder name.

## How tables were created

```

CREATE OR REPLACE TABLE ryancustomerhosted.marketing_ga4_base_prod_views.event
AS SELECT *
FROM `google.com:superb-receiver-344820.marketing_ga4_base_prod.event` ;

CREATE OR REPLACE TABLE ryancustomerhosted.marketing_ga4_base_prod_views.browser
AS SELECT *
FROM `google.com:superb-receiver-344820.marketing_ga4_base_prod.browser` ;

CREATE OR REPLACE TABLE ryancustomerhosted.marketing_ga4_base_prod_views.device_type
AS SELECT *
FROM `google.com:superb-receiver-344820.marketing_ga4_base_prod.device_type` ;

CREATE OR REPLACE TABLE ryancustomerhosted.marketing_ga4_base_prod_views.location
AS SELECT *
FROM `google.com:superb-receiver-344820.marketing_ga4_base_prod.location` ;

CREATE OR REPLACE TABLE ryancustomerhosted.marketing_ga4_base_prod_views.normalized_device_type
AS SELECT *
FROM `google.com:superb-receiver-344820.marketing_ga4_base_prod.normalized_device_type` ;

CREATE OR REPLACE TABLE ryancustomerhosted.marketing_ga4_base_prod_views.session
AS SELECT *
FROM `google.com:superb-receiver-344820.marketing_ga4_base_prod.session` ;

CREATE OR REPLACE TABLE ryancustomerhosted.marketing_ga4_base_prod_views.traffic_source
AS SELECT *
FROM `google.com:superb-receiver-344820.marketing_ga4_base_prod.traffic_source` ;

```


# Update: 2022-04-12
The following commands were also run to remove the data from the table as we determine methods for bringing demo data into the environment:

```

DELETE FROM `ryancustomerhosted.marketing_ga4_base_prod_views.browser` WHERE True;

DELETE FROM `ryancustomerhosted.marketing_ga4_base_prod_views.browser_table` WHERE True;

DELETE FROM `ryancustomerhosted.marketing_ga4_base_prod_views.device_type` WHERE True;

DELETE FROM `ryancustomerhosted.marketing_ga4_base_prod_views.event` WHERE True;

DELETE FROM `ryancustomerhosted.marketing_ga4_base_prod_views.location` WHERE True;

DELETE FROM `ryancustomerhosted.marketing_ga4_base_prod_views.normalized_device_type` WHERE True;

DELETE FROM `ryancustomerhosted.marketing_ga4_base_prod_views.session` WHERE True;

DELETE FROM `ryancustomerhosted.marketing_ga4_base_prod_views.traffic_source` WHERE True;

```


# Update: 2022-04-19

Added in the public GA4 Event Table -> view file: public_obf_event

'''

CREATE TABLE IF NOT EXISTS ryancustomerhosted.marketing_ga4_base_prod_views.public_obf_event AS
SELECT *
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*` ;
'''
