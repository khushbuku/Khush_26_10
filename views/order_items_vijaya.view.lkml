view: order_items_vijaya {
  sql_table_name: demo_db.order_items_vijaya ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }
  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension_group: returned {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.returned_at ;;
  }
  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }
  dimension: use_state {
    type: location
    sql_latitude: CASE
                  WHEN ${TABLE}.state IN ('Alabama', 'AL') THEN 32.8067
                  WHEN ${TABLE}.state IN ('Alaska', 'AK') THEN 61.3707
                  WHEN ${TABLE}.state IN ('Arizona', 'AZ') THEN 33.7298
                  WHEN ${TABLE}.state IN ('Arkansas', 'AR') THEN 34.9697
                  WHEN ${TABLE}.state IN ('California', 'CA') THEN 36.1162
                  WHEN ${TABLE}.state IN ('Colorado', 'CO') THEN 39.0598
                  WHEN ${TABLE}.state IN ('Connecticut', 'CT') THEN 41.5978
                  WHEN ${TABLE}.state IN ('Delaware', 'DE') THEN 39.3185
                  WHEN ${TABLE}.state IN ('District of Columbia', 'DC') THEN 38.8974
                  WHEN ${TABLE}.state IN ('Florida', 'FL') THEN 27.7663
                  WHEN ${TABLE}.state IN ('Georgia', 'GA') THEN 33.0406
                  WHEN ${TABLE}.state IN ('Hawaii', 'HI') THEN 21.0943
                  WHEN ${TABLE}.state IN ('Idaho', 'ID') THEN 44.2405
                  WHEN ${TABLE}.state IN ('Illinois', 'IL') THEN 40.3495
                  WHEN ${TABLE}.state IN ('Indiana', 'IN') THEN 39.8494
                  WHEN ${TABLE}.state IN ('Iowa', 'IA') THEN 42.0115
                  WHEN ${TABLE}.state IN ('Kansas', 'KS') THEN 38.5266
                  WHEN ${TABLE}.state IN ('Kentucky', 'KY') THEN 37.6681
                  WHEN ${TABLE}.state IN ('Louisiana', 'LA') THEN 31.1695
                  WHEN ${TABLE}.state IN ('Maine', 'ME') THEN 44.6939
                  WHEN ${TABLE}.state IN ('Maryland', 'MD') THEN 39.0639
                  WHEN ${TABLE}.state IN ('Massachusetts', 'MA') THEN 42.2302
                  WHEN ${TABLE}.state IN ('Michigan', 'MI') THEN 43.3266
                  WHEN ${TABLE}.state IN ('Minnesota', 'MN') THEN 45.6945
                  WHEN ${TABLE}.state IN ('Mississippi', 'MS') THEN 32.7416
                  WHEN ${TABLE}.state IN ('Missouri', 'MO') THEN 38.4561
                  WHEN ${TABLE}.state IN ('Montana', 'MT') THEN 46.9219
                  WHEN ${TABLE}.state IN ('Nebraska', 'NE') THEN 41.1254
                  WHEN ${TABLE}.state IN ('Nevada', 'NV') THEN 38.3135
                  WHEN ${TABLE}.state IN ('New Hampshire', 'NH') THEN 43.4525
                  WHEN ${TABLE}.state IN ('New Jersey', 'NJ') THEN 40.2990
                  WHEN ${TABLE}.state IN ('New Mexico', 'NM') THEN 34.8405
                  WHEN ${TABLE}.state IN ('New York', 'NY') THEN 42.1657
                  WHEN ${TABLE}.state IN ('North Carolina', 'NC') THEN 35.6301
                  WHEN ${TABLE}.state IN ('North Dakota', 'ND') THEN 47.5289
                  WHEN ${TABLE}.state IN ('Ohio', 'OH') THEN 40.3888
                  WHEN ${TABLE}.state IN ('Oklahoma', 'OK') THEN 35.5653
                  WHEN ${TABLE}.state IN ('Oregon', 'OR') THEN 44.5720
                  WHEN ${TABLE}.state IN ('Pennsylvania', 'PA') THEN 40.5908
                  WHEN ${TABLE}.state IN ('Rhode Island', 'RI') THEN 41.6809
                  WHEN ${TABLE}.state IN ('South Carolina', 'SC') THEN 33.8569
                  WHEN ${TABLE}.state IN ('South Dakota', 'SD') THEN 44.2998
                  WHEN ${TABLE}.state IN ('Tennessee', 'TN') THEN 35.7478
                  WHEN ${TABLE}.state IN ('Texas', 'TX') THEN 31.0545
                  WHEN ${TABLE}.state IN ('Utah', 'UT') THEN 40.1500
                  WHEN ${TABLE}.state IN ('Vermont', 'VT') THEN 44.0459
                  WHEN ${TABLE}.state IN ('Virginia', 'VA') THEN 37.7693
                  WHEN ${TABLE}.state IN ('Washington', 'WA') THEN 47.4009
                  WHEN ${TABLE}.state IN ('West Virginia', 'WV') THEN 38.4912
                  WHEN ${TABLE}.state IN ('Wisconsin', 'WI') THEN 44.2685
                  WHEN ${TABLE}.state IN ('Wyoming', 'WY') THEN 42.7560
                  ELSE NULL
                END ;;

    sql_longitude: CASE
                   WHEN ${TABLE}.state IN ('Alabama', 'AL') THEN -86.7911
                   WHEN ${TABLE}.state IN ('Alaska', 'AK') THEN -152.4044
                   WHEN ${TABLE}.state IN ('Arizona', 'AZ') THEN -111.4312
                   WHEN ${TABLE}.state IN ('Arkansas', 'AR') THEN -92.3731
                   WHEN ${TABLE}.state IN ('California', 'CA') THEN -119.6816
                   WHEN ${TABLE}.state IN ('Colorado', 'CO') THEN -105.3111
                   WHEN ${TABLE}.state IN ('Connecticut', 'CT') THEN -72.7554
                   WHEN ${TABLE}.state IN ('Delaware', 'DE') THEN -75.5071
                   WHEN ${TABLE}.state IN ('District of Columbia', 'DC') THEN -77.0268
                   WHEN ${TABLE}.state IN ('Florida', 'FL') THEN -81.6868
                   WHEN ${TABLE}.state IN ('Georgia', 'GA') THEN -83.6431
                   WHEN ${TABLE}.state IN ('Hawaii', 'HI') THEN -157.4983
                   WHEN ${TABLE}.state IN ('Idaho', 'ID') THEN -114.4788
                   WHEN ${TABLE}.state IN ('Illinois', 'IL') THEN -88.9861
                   WHEN ${TABLE}.state IN ('Indiana', 'IN') THEN -86.2583
                   WHEN ${TABLE}.state IN ('Iowa', 'IA') THEN -93.2105
                   WHEN ${TABLE}.state IN ('Kansas', 'KS') THEN -96.7265
                   WHEN ${TABLE}.state IN ('Kentucky', 'KY') THEN -84.6701
                   WHEN ${TABLE}.state IN ('Louisiana', 'LA') THEN -91.8678
                   WHEN ${TABLE}.state IN ('Maine', 'ME') THEN -69.3819
                   WHEN ${TABLE}.state IN ('Maryland', 'MD') THEN -76.8021
                   WHEN ${TABLE}.state IN ('Massachusetts', 'MA') THEN -71.5301
                   WHEN ${TABLE}.state IN ('Michigan', 'MI') THEN -84.5361
                   WHEN ${TABLE}.state IN ('Minnesota', 'MN') THEN -93.9002
                   WHEN ${TABLE}.state IN ('Mississippi', 'MS') THEN -89.6787
                   WHEN ${TABLE}.state IN ('Missouri', 'MO') THEN -92.2884
                   WHEN ${TABLE}.state IN ('Montana', 'MT') THEN -110.4544
                   WHEN ${TABLE}.state IN ('Nebraska', 'NE') THEN -98.2681
                   WHEN ${TABLE}.state IN ('Nevada', 'NV') THEN -117.0554
                   WHEN ${TABLE}.state IN ('New Hampshire', 'NH') THEN -71.5639
                   WHEN ${TABLE}.state IN ('New Jersey', 'NJ') THEN -74.5210
                   WHEN ${TABLE}.state IN ('New Mexico', 'NM') THEN -106.2485
                   WHEN ${TABLE}.state IN ('New York', 'NY') THEN -74.9481
                   WHEN ${TABLE}.state IN ('North Carolina', 'NC') THEN -79.8064
                   WHEN ${TABLE}.state IN ('North Dakota', 'ND') THEN -99.7840
                   WHEN ${TABLE}.state IN ('Ohio', 'OH') THEN -82.7649
                   WHEN ${TABLE}.state IN ('Oklahoma', 'OK') THEN -96.9289
                   WHEN ${TABLE}.state IN ('Oregon', 'OR') THEN -122.0709
                   WHEN ${TABLE}.state IN ('Pennsylvania', 'PA') THEN -77.2098
                   WHEN ${TABLE}.state IN ('Rhode Island', 'RI') THEN -71.5118
                   WHEN ${TABLE}.state IN ('South Carolina', 'SC') THEN -80.9450
                   WHEN ${TABLE}.state IN ('South Dakota', 'SD') THEN -99.4388
                   WHEN ${TABLE}.state IN ('Tennessee', 'TN') THEN -86.6923
                   WHEN ${TABLE}.state IN ('Texas', 'TX') THEN -97.5635
                   WHEN ${TABLE}.state IN ('Utah', 'UT') THEN -111.8624
                   WHEN ${TABLE}.state IN ('Vermont', 'VT') THEN -72.7107
                   WHEN ${TABLE}.state IN ('Virginia', 'VA') THEN -78.1700
                   WHEN ${TABLE}.state IN ('Washington', 'WA') THEN -121.4905
                   WHEN ${TABLE}.state IN ('West Virginia', 'WV') THEN -80.9545
                   WHEN ${TABLE}.state IN ('Wisconsin', 'WI') THEN -89.6165
                   WHEN ${TABLE}.state IN ('Wyoming', 'WY') THEN -107.3025
                   ELSE NULL
                 END ;;
  }

  parameter: status {
    type: string
    default_value: "All"
    allowed_value: {
      label: "All Statuses"
      value: "All"
    }
    allowed_value: {
      label: "Pending"
      value: "pending"
    }
    allowed_value: {
      label: "Completed"
      value: "completed"
    }
    allowed_value: {
      label: "Cancelled"
      value: "cancelled"
    }
  }

  measure: count {
    type: count
    drill_fields: [id, orders.id, inventory_items.id]
  }
}
