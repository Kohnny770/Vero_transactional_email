# Track when order is confirmed. 
# Note that you must cycle through all products in the order and create a hash/array to send to Vero. This will differ
# based on your platform (PHP, etc.)

# Iterate through products, for each do this:
products = []
products << {
  name:     'PRODUCT_NAME',
  price:    'PRODUCT_PRICE',
  quantity: 'PRODUCT_QTY',
  url:      'PRODUCT_URL',
  image:    'PRODUCT_IMAGE_URL'
}

# Track the event in Vero
vero.events.track!({
  identity: {
    id: 123, 
    email: 'reba@getvero.com'
  },
  event_name: 'Order Confirmed',
  data: {
    products:             products,
    order_number:         'ORDER_NUMBER',
    order_date:       'ORDER_DATE',
    order_subtotal:   'ORDER_SUBTOTAL',
    discount:         'DISCOUNT',
    shipping_cost:    'SHIPPING_COST',
    total_tax:		    ' TOTAL_TAX',
    total_price:      'TOTAL_PRICE',
    tracking_id:      'TRACKING_ID',
    tracking_url:     'TRACKING_URL',
    billing_address_first_name:  'BILLING_ADDRESS_FIRST_NAME',
    billing_address_last_name:  'BILLING_ADDRESS_LAST_NAME',
    billing_address_1:  'BILLING_ADDRESS_1',
    billing_address_2:  'BILLING_ADDRESS_2',
    billing_address_city:  'BILLING_ADDRESS_CITY',
    billing_address_state:  'BILLING_ADDRESS_STATE',
    billing_address_zip:  'BILLING_ADDRESS_ZIP',
    shipping_address_first_name:  'SHIPPING_ADDRESS_FIRST_NAME',
    shipping_address_last_name:  'SHIPPING_ADDRESS_LAST_NAME',
    shipping_address_1:  'SHIPPING_ADDRESS_1',
    shipping_address_2:  'SHIPPING_ADDRESS_2',
    shipping_address_city:  'SHIPPING_ADDRESS_CITY',
    shipping_address_state:  'SHIPPING_ADDRESS_STATE',
    shipping_address_zip:  'SHIPPING_ADDRESS_ZIP',
  }
})
