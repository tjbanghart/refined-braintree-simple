view: transaction {
  sql_table_name: `spencer-white-tckt87992.braintree.TRANSACTION` ;;
  drill_fields: [refunded_transaction_id]

  dimension: refunded_transaction_id {
    type: number
    hidden: yes
    sql: ${TABLE}.refunded_transaction_id ;;
    description: "The sale transaction ID associated with a refund transaction. See the transaction API requests section for details."
  }

  dimension: amount {
    type: number
    hidden: yes
    sql: ${TABLE}.amount ;;
    description: "The billing amount of the request."
  }

  dimension: authorized_transaction_id {
    type: number
    hidden: yes
    sql: ${TABLE}.authorized_transaction_id ;;
  }

  dimension: billing_address_company {
    group_label: "Billing"
    type: string
    sql: ${TABLE}.billing_address_company ;;
  }

  dimension: billing_address_country_name {
    type: string
    group_label: "Billing"
    sql: ${TABLE}.billing_address_country_name ;;
  }

  dimension: billing_address_first_name {
    type: string
    group_label: "Billing"
    sql: ${TABLE}.billing_address_first_name ;;
  }

  dimension: billing_address_last_name {
    type: string
    group_label: "Billing"
    sql: ${TABLE}.billing_address_last_name ;;
  }

  dimension: billing_address_locality {
    type: string
    group_label: "Billing"
    sql: ${TABLE}.billing_address_locality ;;
  }

  dimension: billing_address_postal_code {
    type: zipcode
    group_label: "Billing"
    sql: ${TABLE}.billing_address_postal_code ;;
  }

  dimension: billing_address_region {
    type: string
    group_label: "Billing"
    sql: ${TABLE}.billing_address_region ;;
  }

  dimension: billing_address_street_address {
    type: string
    group_label: "Billing"
    sql: ${TABLE}.billing_address_street_address ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
    description: "If the transaction request was performed through a shopping cart provider or Braintree partner, this field will have a string identifier for that shopping cart provider or partner. For PayPal transactions, this maps to the PayPal account's bn_code."
  }

  dimension: currency_iso_code {
    type: string
    sql: ${TABLE}.currency_iso_code ;;
    description: "The currency for the transaction (e.g. 'USD' for US dollars). See the ISO 4217 codes."
  }

  dimension: customer_id {
    type: number
    hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: disbursement_date {
    group_label: "Disbursement"
    type: string
    sql: ${TABLE}.disbursement_date ;;
    description: "The date that the funds associated with this transaction were disbursed. This attribute is only available if you have an eligible merchant account."
  }

  dimension: disbursement_funds_held {
    type: yesno
    group_label: "Disbursement"
    sql: ${TABLE}.disbursement_funds_held ;;
  }

  dimension: disbursement_settlement_amount {
    type: number
    group_label: "Disbursement"
    sql: ${TABLE}.disbursement_settlementAmount ;;
  }

  dimension: disbursement_settlement_currency_exchange_rate {
    type: number
    group_label: "Disbursement"
    sql: ${TABLE}.disbursement_settlementCurrencyExchangeRate ;;
  }

  dimension: disbursement_settlement_currency_iso_code {
    type: string
    group_label: "Disbursement"
    sql: ${TABLE}.disbursement_settlement_currency_iso_code ;;
  }

  dimension: disbursement_success {
    type: yesno
    group_label: "Disbursement"
    sql: ${TABLE}.disbursement_success ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
    primary_key: yes
    description: "The shipping details ID. A customer Vault record can contain up to 50 shipping and billing addresses, each with a unique ID. See the transaction API requests section for details."
  }

  dimension: merchant_account_id {
    type: number
    hidden: yes
    sql: ${TABLE}.merchant_account_id ;;
    description: "The merchant account ID used to create a transaction. Currency is also determined by merchant account ID."
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
    description: "The order ID of the transaction. On PayPal transactions, this field maps to the PayPal invoice number. PayPal invoice numbers are unique in your PayPal business account."
  }

  dimension: payment_instrument_type {
    type: string
    sql: ${TABLE}.payment_instrument_type ;;
    description: "The method of payment used to process the transaction. "
  }

  dimension: plan_id {
    type: number
    hidden: yes
    sql: ${TABLE}.plan_id ;;
    description: "The plan identifier."
  }

  dimension: processor_authorization_code {
    type: number
    sql: ${TABLE}.processor_authorization_code ;;
    description: "The authorization code returned by the processor."
  }

  dimension: purchase_order_number {
    type: number
    sql: ${TABLE}.purchase_order_number ;;
    description: "A Level 2 data field that can be used to store a purchase order identification value."
  }

  dimension: recurring {
    type: yesno
    sql: ${TABLE}.recurring ;;
    description: "A value indicating whether the transaction was passed with a recurring ecommerce indicator (ECI) flag."
  }

  dimension: risk_data_decision {
    type: string
    sql: ${TABLE}.risk_data_decision ;;
  }

  dimension: risk_data_id {
    type: number
    hidden: yes
    sql: ${TABLE}.risk_data_id ;;
  }

  dimension: service_fee_amount {
    type: number
    hidden: yes
    sql: ${TABLE}.service_fee_amount ;;
    description: "The portion of a sub-merchant's transaction revenue that was routed to the master merchant account.Available to Braintree Marketplace merchants. See Creating Transactions with Service Fees for more details."
  }

  dimension: settlement_batch_id {
    type: number
    hidden: yes
    sql: ${TABLE}.settlement_batch_id ;;
    description: "The identification value of the settlement batch in which the transaction was processed. The format may change at any time but is currently YYYY-MM-DD_m_d where m is the merchant account token without special characters and d is an alphanumeric string to guarantee uniqueness."
  }

  dimension: shipping_address_company {
    type: string
    group_label: "Shipping"
    sql: ${TABLE}.shipping_address_company ;;
  }

  dimension: shipping_address_country_name {
    type: string
    group_label: "Shipping"
    sql: ${TABLE}.shipping_address_country_name ;;
  }

  dimension: shipping_address_first_name {
    type: string
    group_label: "Shipping"
    sql: ${TABLE}.shipping_address_first_name ;;
  }

  dimension: shipping_address_last_name {
    type: string
    group_label: "Shipping"
    sql: ${TABLE}.shipping_address_last_name ;;
  }

  dimension: shipping_address_locality {
    type: string
    group_label: "Shipping"
    sql: ${TABLE}.shipping_address_locality ;;
  }

  dimension: shipping_address_postal_code {
    type: zipcode
    group_label: "Shipping"
    sql: ${TABLE}.shipping_address_postal_code ;;
  }

  dimension: shipping_address_region {
    type: string
    group_label: "Shipping"
    sql: ${TABLE}.shipping_address_region ;;
  }

  dimension: shipping_address_street_address {
    type: string
    group_label: "Shipping"
    sql: ${TABLE}.shipping_address_street_address ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
    description: "The 3D Secure status value. For a list of all possible statuses and their liability shifts, see the 3D Secure guide."
  }

  dimension: subscription_id {
    type: number
    hidden: yes
    sql: ${TABLE}.subscription_id ;;
    description: "The value used to identify a specific subscription."
  }

  dimension: tax_amount {
    type: number
    sql: ${TABLE}.tax_amount ;;
    hidden: yes
    description: "A Level 2 data field that specifies the amount of tax that was included in the total transaction amount. It is never negative, and it does not add to the total transaction amount."
  }

  dimension: tax_exempt {
    type: yesno
    sql: ${TABLE}.tax_exempt ;;
    description: "A Level 2 data field that indicates whether or not the transaction should be considered eligible for tax exemption. This does not affect the total transaction amount."
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
    description: "The value that defines whether a transaction is a sale or credit."
  }

  dimension: voice_referral_number {
    type: number
    sql: ${TABLE}.voice_referral_number ;;
    description: "The value passed by the merchant with a voice-authorized transaction."
  }

  dimension_group: created {
    type: time
    sql: ${TABLE}.created_at ;;
    timeframes: [raw, date, month, year]
  }

  dimension_group: updated {
    type: time
    sql: ${TABLE}.updated_at ;;
    timeframes: [raw, date, month, year]
  }

  measure: count {
    type: count
    label: "Number of Transactions"
    drill_fields: [detail*]
    value_format_name: decimal_0
  }

  measure: total_tax {
    type: sum
    sql: ${tax_amount} ;;
    value_format_name: usd
  }

  measure: total_amount {
    type: sum
    sql: ${amount} ;;
    value_format_name: usd
  }

  measure: total_service_fee {
    type: sum
    sql: ${service_fee_amount} ;;
    value_format_name: usd
  }

  set: detail {
    fields: [
      refunded_transaction_id,
      shipping_address_country_name,
      billing_address_country_name,
      shipping_address_first_name,
      shipping_address_last_name,
      billing_address_first_name,
      billing_address_last_name,
      subscription.id,
      merchant_account.address_last_name,
      merchant_account.address_first_name,
      merchant_account.last_name,
      merchant_account.address_country_name,
      merchant_account.id,
      merchant_account.first_name,
      unregistered_customer.count,
      android_pay_details.count,
      apple_pay_card.count,
      masterpass_card_details.count,
      transaction_status_history.count,
      credit_card.count,
      paypal_details.count,
      dispute.count,
      visa_checkout_details.count,
      transaction_add_on.count,
      venmo_details.count
    ]
  }
}
