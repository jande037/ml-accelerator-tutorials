include: "/views/marketing_ga4_demo_data/*.view.lkml"

explore: ga4_event_clustered {
  group_label: "Demo Data"
  label: "Event Table: Type C"
  join: ga4_event_clustered__items {
    view_label: "Ga4 Event Clustered: Items"
    sql: LEFT JOIN UNNEST(${ga4_event_clustered.items}) as ga4_event_clustered__items ;;
    relationship: one_to_many
  }
}
