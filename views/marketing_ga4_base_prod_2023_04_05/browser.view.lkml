view: browser {
  sql_table_name: `ryancustomerhosted.marketing_ga4_base_prod_views.browser`
    ;;
  drill_fields: [browser_id]

  dimension: browser_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.browser_id ;;
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

  dimension: device_category {
    type: string
    sql: ${TABLE}.device_category ;;
  }

  dimension: device_os {
    type: string
    sql: ${TABLE}.device_os ;;
  }

  dimension: device_os_version {
    type: string
    sql: ${TABLE}.device_os_version ;;
  }

  dimension: device_web_browser {
    type: string
    sql: ${TABLE}.device_web_browser ;;
  }

  dimension: normalized_device_web_browser_version {
    type: string
    sql: ${TABLE}.normalized_device_web_browser_version ;;
  }

  measure: count {
    type: count
    drill_fields: [browser_id, browser_table.count]
  }
}
