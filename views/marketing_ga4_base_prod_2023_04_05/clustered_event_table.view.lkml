view: clustered_event_table {
  sql_table_name: `ryancustomerhosted.marketing_ga4_base_prod_views.clustered_event_table`
    ;;

  dimension: ga_session_id {
    type: string
    sql: ${TABLE}.ga_session_id ;;
  }

  dimension: ga_session_number {
    type: number
    sql: ${TABLE}.ga_session_number ;;
  }

  dimension: label {
    type: number
    sql: ${TABLE}.label ;;
  }

  dimension: percent_scrolled {
    type: number
    sql: ${TABLE}.percent_scrolled ;;
  }

  dimension: purchase_revenue_in_usd {
    type: number
    sql: ${TABLE}.purchase_revenue_in_usd ;;
  }

  dimension: total_item_quantity {
    type: number
    sql: ${TABLE}.total_item_quantity ;;
  }

  dimension: user_ltv_revenue {
    type: number
    sql: ${TABLE}.user_ltv_revenue ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
