Braintree::Configuration.environment = :sandbox
Braintree::Configuration.logger = Logger.new('log/braintree.log')
Braintree::Configuration.merchant_id = ENV['BRAINTREE_MERCHANT_ID']
Braintree::Configuration.public_key = ENV['BRAINTREE_PUBLIC_KEY']
Braintree::Configuration.private_key = ENV['BRAINTREE_PRIVATE_KEY']
# Braintree::Configuration.merchant_id = "p989xtn7kc7f3j43"
# Braintree::Configuration.public_key = "4vk2mj8q3xq7r3g7"
# Braintree::Configuration.private_key = "e15acadcc9fc214f886a5fd0c9075010"
