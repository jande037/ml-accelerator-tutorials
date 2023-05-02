view: session {
  sql_table_name: `ryancustomerhosted.marketing_ga4_base_prod_views.session`
    ;;
  drill_fields: [ga_session_id]

  dimension: ga_session_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ga_session_id ;;
  }

  dimension: has_checkout_event {
    type: yesno
    sql: ${TABLE}.has_checkout_event ;;
  }

  dimension: has_purchase_event {
    type: yesno
    sql: ${TABLE}.has_purchase_event ;;
  }

  dimension: has_valid_purchase {
    type: yesno
    sql: ${TABLE}.has_valid_purchase ;;
  }

  dimension_group: last_updated {
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
    sql: ${TABLE}.last_updated ;;
  }

  dimension: number_of_views {
    type: number
    sql: ${TABLE}.number_of_views ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension_group: session_end {
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
    sql: ${TABLE}.session_end ;;
  }

  dimension: session_engaged {
    type: yesno
    sql: ${TABLE}.session_engaged ;;
  }

  dimension: session_number {
    type: number
    sql: ${TABLE}.session_number ;;
  }

  dimension_group: session_start {
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
    sql: ${TABLE}.session_start ;;
  }

  dimension: total_engagement_time_secs {
    type: number
    sql: ${TABLE}.total_engagement_time_secs ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
  }

  measure: count {
    type: count
    drill_fields: [ga_session_id]
  }
}
