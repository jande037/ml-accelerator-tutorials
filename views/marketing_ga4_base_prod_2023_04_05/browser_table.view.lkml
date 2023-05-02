view: browser_table {
  sql_table_name: `ryancustomerhosted.marketing_ga4_base_prod_views.browser_table`
    ;;

  dimension: browser_id {
    type: string
    # hidden: yes
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
    drill_fields: [browser.browser_id]
  }
}
