include: "/views/marketing_ga4_base_prod_2023_04_05/*.view.lkml"

explore: session_device_daily_metrics {
}


explore: clustered_event_table {
  label: "GA4 Event - PoC Clustered Table"

}
