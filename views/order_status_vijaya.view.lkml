view: order_status_vijaya {
  sql_table_name: demo_db.order_status_vijaya ;;

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }
  dimension: orders_count {
    type: number
    sql: ${TABLE}.`orders.count` ;;
  }
  dimension: orders_status {
    type: string
    sql: ${TABLE}.`orders.status` ;;
  }

  parameter: status_selector {
    type: string
    default_value: "complete"
    allowed_value: { label: "Complete" value: "complete" }
    allowed_value: { label: "Pending"  value: "pending"  }
    allowed_value: { label: "Cancelled" value: "cancelled" }
  }

  dimension: is_selected_status {
    type: yesno
    sql: ${orders_status} = {% parameter status_selector %} ;;
  }

  measure: count_selected_status {
    type: count
    filters: [is_selected_status: "yes"]
  }


  measure: count {
    type: count
  }
}
