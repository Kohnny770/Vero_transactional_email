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
  event_name: 'order confirmed',
  data: {
    products:         products,
    order_number:     'ORDER_NUMBER',
    order_date:       'ORDER_DATE',
    order_subtotal:   'ORDER_SUBTOTAL',
    discount:         'DISCOUNT',
    shipping_cost:    'SHIPPING_COST',
    total_price:      'TOTAL_PRICE',
    tracking_id:      'TRACKING_ID',
    tracking_url:     'TRACKING_URL',
    billing_address:  'BILLING_ADDRESS',
    shipping_address: 'SHIPPING_ADDRESS'
  }
})