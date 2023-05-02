view: session_device_daily_metrics {
  derived_table: {
    sql: WITH
            event_devices AS (
            SELECT
              DISTINCT event.event_date,
              event.ga_session_id,
              event.user_pseudo_id,
              SUM(COALESCE(event.ecommerce.purchase_revenue_in_usd,0)) as total_purchase_revenue,
              CASE
                WHEN STARTS_WITH(UPPER(device.device_web_browser),"ANDROID") THEN 'Android'
                WHEN STARTS_WITH(UPPER(device.device_web_browser),"CHROME") THEN 'Chrome'
                WHEN STARTS_WITH(UPPER(device.device_web_browser),"EDGE") THEN 'Edge'
                WHEN STARTS_WITH(UPPER(device.device_web_browser),"FIREFOX") THEN 'Firefox'
                WHEN STARTS_WITH(UPPER(device.device_web_browser),"OPERA") THEN 'Opera'
                WHEN STARTS_WITH(UPPER(device.device_web_browser),"SAFARI") THEN 'Safari'
                WHEN STARTS_WITH(UPPER(device.device_web_browser),"SAMSUNG") THEN 'Samsung'
                ELSE '<Other>'
              END AS device_web_browser,
              INITCAP(device.device_category) AS device_category
            FROM
              ${event.SQL_TABLE_NAME} event
            LEFT JOIN
              /* Device view is a SELECT * form the device_Type table */
              ${device_type.SQL_TABLE_NAME} device
            ON
              event.device_type_id = device.device_type_id
            WHERE
              event.ga_session_id IS NOT NULL --only want events with a ga_session_id
            GROUP BY
              event_date,
              ga_session_id,
              user_pseudo_id,
              device_web_browser,
              device_category
          )
          SELECT
            COUNT(*) AS session_count,
            event_date,
            SUM(total_purchase_revenue) as total_purchase_revenue,
            device_web_browser,
            device_category
          FROM
            event_devices
          GROUP BY
            event_date,
            device_web_browser,
            device_category ;;
  }

  # Dimensions
  #####################################################################################################################
  dimension: dim_session_count {
    type: number
    sql: ${TABLE}.session_count ;;
    hidden: yes
  }

  dimension: dim_event_date {
    type: date
    sql: ${TABLE}.event_date ;;
    label: "Event Date"
  }

  dimension: dim_device_web_browser {
    type: number
    sql: ${TABLE}.device_web_browser ;;
    label: "Device Web Browser"
  }

  dimension: dim_total_purchase_revenue {
    type: number
    sql: ${TABLE}.total_purchase_revenue ;;
    hidden: yes
  }

  dimension: dim_device_category {
    type: number
    sql: ${TABLE}.device_category ;;
    label: "Device Category"
  }

  # Measures
  #####################################################################################################################
  measure: sum_session_count {
    type: sum
    sql: ${dim_session_count} ;;
    label: "Count Sessions"
  }

  measure: sum_total_purchase_revenue {
    type: sum
    sql: ${dim_total_purchase_revenue} ;;
    label: "Total Purchase Revenue"
  }

}
