connection: "bigquery"
label: "Public Datasets for BQML Accelerator"

persist_for: "24 hours"

include: "/explores/census_adult_income.explore.lkml"
include: "/explores/penguins.explore.lkml"
include: "/explores/zendesk_tickets.explore.lkml"

include: "/views/google_analytics_sample/*"

explore: purchase_propensity {}
