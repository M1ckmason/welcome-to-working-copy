# WePay Ruby SDK - http://git.io/a_c2uQ
require 'wepay'

# application settings
client_id = 123456789
client_secret = '1a3b5c7d9'
access_token = 'STAGE_8a19aff55b85a436dad5cd1386db1999437facb5914b494f4da5f206a56a5d20'

# checkout to refund
checkout_id = 123456789

# set _use_stage to false for live environments
wepay = WePay::Client.new(client_id, client_secret, _use_stage = true)

# refund the checkout
response = wepay.call('/checkout/refund', access_token, {
	:checkout_id    => checkout_id,
	:refund_reason  => 'Product was defective.',
	:amount         => '5.00'
})

# display the response
p response