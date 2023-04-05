view: traffic_source {
  sql_table_name: `ryancustomerhosted.marketing_ga4_base_prod_views.traffic_source`
    ;;
  drill_fields: [traffic_source_id]

  dimension: traffic_source_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.traffic_source_id ;;
  }

  dimension_group: created_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_ts ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}.traffic_source ;;
  }

  dimension: traffic_source_medium {
    type: string
    sql: ${TABLE}.traffic_source_medium ;;
  }

  dimension: traffic_source_name {
    type: string
    sql: ${TABLE}.traffic_source_name ;;
  }

  measure: count {
    type: count
    drill_fields: [traffic_source_id, traffic_source_name, event.count]
  }
}
