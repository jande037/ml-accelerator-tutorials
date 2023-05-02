view: device_type {
  sql_table_name: `ryancustomerhosted.marketing_ga4_base_prod_views.device_type`
    ;;
  drill_fields: [device_type_id]

  dimension: device_type_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.device_type_id ;;
  }

  dimension: app_store {
    type: string
    sql: ${TABLE}.app_store ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
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

  dimension: device_advertising_id {
    type: string
    sql: ${TABLE}.device_advertising_id ;;
  }

  dimension: device_category {
    type: string
    sql: ${TABLE}.device_category ;;
  }

  dimension: device_mobile_brand_name {
    type: string
    sql: ${TABLE}.device_mobile_brand_name ;;
  }

  dimension: device_mobile_model_name {
    type: string
    sql: ${TABLE}.device_mobile_model_name ;;
  }

  dimension: device_model {
    type: string
    sql: ${TABLE}.device_model ;;
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

  dimension: device_web_browser_version {
    type: string
    sql: ${TABLE}.device_web_browser_version ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  measure: count {
    type: count
    drill_fields: [device_type_id, device_mobile_model_name, device_mobile_brand_name, event.count]
  }
}
