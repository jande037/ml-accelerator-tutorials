view: ga4_event_clustered {
  sql_table_name: `lookerplus.the_look_perf_rrezvani.ga4_event_clustered`
    ;;

  dimension: cluster_labels {
    type: number
    sql: ${TABLE}.cluster_labels ;;
  }

  dimension: device_type_id {
    type: string
    sql: ${TABLE}.device_type_id ;;
  }

  dimension: ecommerce__purchase_revenue_in_usd {
    type: number
    sql: ${TABLE}.ecommerce.purchase_revenue_in_usd ;;
    group_label: "Ecommerce"
    group_item_label: "Purchase Revenue In USD"
  }

  dimension: ecommerce__refund_value_in_usd {
    type: number
    sql: ${TABLE}.ecommerce.refund_value_in_usd ;;
    group_label: "Ecommerce"
    group_item_label: "Refund Value In USD"
  }

  dimension: ecommerce__total_item_quantity {
    type: number
    sql: ${TABLE}.ecommerce.total_item_quantity ;;
    group_label: "Ecommerce"
    group_item_label: "Total Item Quantity"
  }

  dimension: ecommerce__transaction_id {
    type: string
    sql: ${TABLE}.ecommerce.transaction_id ;;
    group_label: "Ecommerce"
    group_item_label: "Transaction ID"
  }

  dimension: engagement_time_msec {
    type: number
    sql: ${TABLE}.engagement_time_msec ;;
  }

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.event_date ;;
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension_group: event_timestamp {
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
    sql: ${TABLE}.event_timestamp ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: ga_session_id {
    type: number
    sql: ${TABLE}.ga_session_id ;;
  }

  dimension: ga_session_number {
    type: number
    sql: ${TABLE}.ga_session_number ;;
  }

  dimension: items {
    hidden: yes
    sql: ${TABLE}.items ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }

  dimension: normalized_device_type_id {
    type: string
    sql: ${TABLE}.normalized_device_type_id ;;
  }

  dimension: outbound_click_url {
    type: string
    sql: ${TABLE}.outbound_click_url ;;
  }

  dimension: page_location {
    type: string
    sql: ${TABLE}.page_location ;;
  }

  dimension: page_referrer {
    type: string
    sql: ${TABLE}.page_referrer ;;
  }

  dimension: page_title {
    type: string
    sql: ${TABLE}.page_title ;;
  }

  dimension: percent_scrolled {
    type: number
    sql: ${TABLE}.percent_scrolled ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: session_engaged_during_event {
    type: yesno
    sql: ${TABLE}.session_engaged_during_event ;;
  }

  dimension: stream_id {
    type: string
    sql: ${TABLE}.stream_id ;;
  }

  dimension: traffic_source_id {
    type: string
    sql: ${TABLE}.traffic_source_id ;;
  }

  dimension_group: user_first_touch_timestamp {
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
    sql: ${TABLE}.user_first_touch_timestamp ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_ltv_currency {
    type: string
    sql: ${TABLE}.user_ltv_currency ;;
  }

  dimension: user_ltv_revenue {
    type: number
    sql: ${TABLE}.user_ltv_revenue ;;
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
  }

  measure: count {
    type: count
    drill_fields: [event_name]
  }
}


# Refinements to add in measures
view: +ga4_event_clustered {

  measure: sum_user_ltv_revenue {
    type: sum
    sql: ${user_ltv_revenue} ;;
    description: "Clustered Feature"
    group_label: "Type C"
  }

  measure: sum_ga_session_number {
    type: sum
    sql: ${ga_session_number} ;;
    description: "Clustered Feature"
    group_label: "Type C"
  }

  measure: sum_percent_scrolled {
    type: average
    sql: ${percent_scrolled} ;;
    description: "Clustered Feature"
    group_label: "Type C"
  }

  measure: sum_ecommerce__purchase_revenue_in_usd {
    type: sum
    sql: ${ecommerce__purchase_revenue_in_usd} ;;
    description: "Clustered Feature"
    group_label: "Type C"
  }

  measure: sum_ecommerce__total_item_quantity {
    type: sum
    sql: ${ecommerce__total_item_quantity} ;;
    description: "Clustered Feature"
    group_label: "Type C"
  }

  measure: sum_engagement_time_msec {
    type: sum
    sql: ${engagement_time_msec} ;;
    description: "Clustered Feature"
    group_label: "Type C"
  }


}

view: ga4_event_clustered__items {
  drill_fields: [item_id]

  dimension: item_id {
    primary_key: yes
    type: string
    sql: item_id ;;
  }

  dimension: affiliation {
    type: string
    sql: affiliation ;;
  }

  dimension: coupon {
    type: string
    sql: coupon ;;
  }

  dimension: creative_name {
    type: string
    sql: creative_name ;;
  }

  dimension: creative_slot {
    type: string
    sql: creative_slot ;;
  }

  dimension: ga4_event_clustered__items {
    type: string
    hidden: yes
    sql: ga4_event_clustered__items ;;
  }

  dimension: item_brand {
    type: string
    sql: item_brand ;;
  }

  dimension: item_category {
    type: string
    sql: item_category ;;
  }

  dimension: item_category2 {
    type: string
    sql: item_category2 ;;
  }

  dimension: item_category3 {
    type: string
    sql: item_category3 ;;
  }

  dimension: item_category4 {
    type: string
    sql: item_category4 ;;
  }

  dimension: item_category5 {
    type: string
    sql: item_category5 ;;
  }

  dimension: item_list_id {
    type: string
    sql: item_list_id ;;
  }

  dimension: item_list_index {
    type: string
    sql: item_list_index ;;
  }

  dimension: item_list_name {
    type: string
    sql: item_list_name ;;
  }

  dimension: item_name {
    type: string
    sql: item_name ;;
  }

  dimension: item_refund {
    type: number
    sql: item_refund ;;
  }

  dimension: item_refund_in_usd {
    type: number
    sql: item_refund_in_usd ;;
  }

  dimension: item_revenue {
    type: number
    sql: item_revenue ;;
  }

  dimension: item_revenue_in_usd {
    type: number
    sql: item_revenue_in_usd ;;
  }

  dimension: item_variant {
    type: string
    sql: item_variant ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }

  dimension: price {
    type: number
    sql: price ;;
  }

  dimension: price_in_usd {
    type: number
    sql: price_in_usd ;;
  }

  dimension: promotion_id {
    type: string
    sql: promotion_id ;;
  }

  dimension: promotion_name {
    type: string
    sql: promotion_name ;;
  }

  dimension: quantity {
    type: number
    sql: quantity ;;
  }
}
