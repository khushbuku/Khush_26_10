
view: sql_runner_query {
  derived_table: {
    sql: {% raw %} SELECT
          `orders`.`status` AS `orders.status`,
          `orders`.`id` AS `orders.id`,
          COUNT(DISTINCT orders.id ) AS `orders.count`
      FROM
          `demo_db`.`order_items` AS `order_items`
          LEFT JOIN `demo_db`.`orders` AS `orders` ON `order_items`.`order_id` = `orders`.`id`
      GROUP BY
          1,
          2
      ORDER BY
          3 DESC
      LIMIT 500 {% endraw %} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: orders_status {
    type: string
    sql: ${TABLE}.`orders.status` ;;
  }

  dimension: orders_id {
    type: number
    sql: ${TABLE}.`orders.id` ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}.`orders.count` ;;
  }

  set: detail {
    fields: [
        orders_status,
	orders_id,
	orders_count
    ]
  }
}
