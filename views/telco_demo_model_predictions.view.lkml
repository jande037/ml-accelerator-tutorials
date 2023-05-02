# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: telco_demo_model_predictions {
  hidden: yes

  join: telco_demo_model_predictions__predicted_customer_churn_probs {
    view_label: "Telco Demo Model Predictions: Predicted Customer Churn Probs"
    sql: LEFT JOIN UNNEST(${telco_demo_model_predictions.predicted_customer_churn_probs}) as telco_demo_model_predictions__predicted_customer_churn_probs ;;
    relationship: one_to_many
  }
}

view: telco_demo_model_predictions {
  sql_table_name: `lookerplus.looker_bqml.Telco_Demo_Model_predictions`
    ;;

  dimension: customer_account_duration_months {
    type: number
    sql: ${TABLE}.customer_account_duration_months ;;
  }

  dimension: customer_churn {
    type: string
    sql: ${TABLE}.customer_churn ;;
  }

  dimension: customer_customer_id {
    type: string
    sql: ${TABLE}.customer_customer_id ;;
  }

  dimension: customer_international_plan {
    type: string
    sql: ${TABLE}.customer_international_plan ;;
  }

  dimension: customer_service_calls_group {
    type: string
    sql: ${TABLE}.customer_service_calls_group ;;
  }

  dimension: customer_service_calls_group__sort_ {
    type: string
    sql: ${TABLE}.customer_service_calls_group__sort_ ;;
  }

  dimension: customer_state {
    type: string
    sql: ${TABLE}.customer_state ;;
  }

  dimension: customer_total_day_calls {
    type: number
    sql: ${TABLE}.customer_total_day_calls ;;
  }

  dimension: customer_total_day_charge {
    type: number
    sql: ${TABLE}.customer_total_day_charge ;;
  }

  dimension: customer_total_day_minutes {
    type: number
    sql: ${TABLE}.customer_total_day_minutes ;;
  }

  dimension: customer_total_eve_calls {
    type: number
    sql: ${TABLE}.customer_total_eve_calls ;;
  }

  dimension: customer_total_eve_charge {
    type: number
    sql: ${TABLE}.customer_total_eve_charge ;;
  }

  dimension: customer_total_eve_minutes {
    type: number
    sql: ${TABLE}.customer_total_eve_minutes ;;
  }

  dimension: customer_total_intl_calls {
    type: number
    sql: ${TABLE}.customer_total_intl_calls ;;
  }

  dimension: customer_total_intl_charge {
    type: number
    sql: ${TABLE}.customer_total_intl_charge ;;
  }

  dimension: customer_total_intl_minutes {
    type: number
    sql: ${TABLE}.customer_total_intl_minutes ;;
  }

  dimension: customer_total_night_calls {
    type: number
    sql: ${TABLE}.customer_total_night_calls ;;
  }

  dimension: customer_total_night_charge {
    type: number
    sql: ${TABLE}.customer_total_night_charge ;;
  }

  dimension: customer_total_night_minutes {
    type: number
    sql: ${TABLE}.customer_total_night_minutes ;;
  }

  dimension: customer_total_service_calls {
    type: number
    sql: ${TABLE}.customer_total_service_calls ;;
  }

  dimension: customer_total_vmail_messages {
    type: number
    sql: ${TABLE}.customer_total_vmail_messages ;;
  }

  dimension: predicted_customer_churn {
    type: string
    sql: ${TABLE}.predicted_customer_churn ;;
  }

  dimension: predicted_customer_churn_probs {
    hidden: yes
    sql: ${TABLE}.predicted_customer_churn_probs ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: telco_demo_model_predictions__predicted_customer_churn_probs {
  dimension: label {
    type: string
    sql: label ;;
  }

  dimension: prob {
    type: number
    sql: prob ;;
  }

  dimension: telco_demo_model_predictions__predicted_customer_churn_probs {
    type: string
    hidden: yes
    sql: telco_demo_model_predictions__predicted_customer_churn_probs ;;
  }
}
