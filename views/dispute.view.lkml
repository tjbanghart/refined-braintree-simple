view: dispute {
  sql_table_name: `spencer-white-tckt87992.braintree.DISPUTE` ;;

  dimension: amount {
    type: number
    hidden: yes
    sql: ${TABLE}.amount ;;
    description: "The billing amount of the request."
  }

  dimension: kind {
    type: string
    sql: ${TABLE}.kind ;;
    description: "The kind of dispute. "
  }

  dimension_group: opened {
    type: time
    sql: ${TABLE}.opened_date ;;
    timeframes: [raw, date, month, year]
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
    description: "The reason the dispute was created. "
  }

  dimension_group: received {
    type: time
    sql: ${TABLE}.received_date ;;
    timeframes: [raw, date, month, year]
    description: "The date the dispute was received by the merchant."
  }

  dimension: reply_by_date {
    type: date
    sql: ${TABLE}.reply_by_date ;;
    description: "The merchant Reply By date that is referenced in the gateway."
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
    description: "The status of the dispute. "
  }

  dimension: transaction_id {
    type: number
    hidden: yes
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: won_date {
    type: date
    sql: ${TABLE}.won_date ;;
  }

  measure: count {
    type: count
    label: "Number of Disputes"
    drill_fields: [detail*]
  }

  measure: total_dispute_amount {
    type: sum
    sql: ${amount} ;;
    value_format_name: usd
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      transaction.shipping_address_country_name,
      transaction.billing_address_country_name,
      transaction.shipping_address_first_name,
      transaction.refunded_transaction_id,
      transaction.shipping_address_last_name,
      transaction.billing_address_first_name,
      transaction.billing_address_last_name
    ]
  }
}
