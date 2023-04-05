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
