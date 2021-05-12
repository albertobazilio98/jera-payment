require 'httparty'
require 'jera_payment/engine'

# IUGU API RESOURCES
require 'jera_payment/api/iugu/base'
require 'jera_payment/api/iugu/customer'
require 'jera_payment/api/iugu/payment_token'
require 'jera_payment/api/iugu/payment_method'
require 'jera_payment/api/iugu/invoice'
require 'jera_payment/api/iugu/charge'
require 'jera_payment/api/iugu/plan'
require 'jera_payment/api/iugu/subscription'
require 'jera_payment/api/iugu/sub_account'
require 'jera_payment/api/iugu/withdrawal'
require 'jera_payment/api/iugu/household'
require 'jera_payment/api/iugu/transfer'

# PARSERS
require 'jera_payment/parsers/iugu/credit_card_parser'
require 'jera_payment/parsers/iugu/invoice_parser'
require 'jera_payment/parsers/iugu/charge_parser'
require 'jera_payment/parsers/iugu/transfer_parser'
require 'jera_payment/parsers/iugu/household_parser'
require 'jera_payment/parsers/iugu/sub_account_parser'

#SERVICES BASE
require 'jera_payment/services/iugu/base'

#IUGU CUSTOMERS SERVICES
require 'jera_payment/services/iugu/customers/create'
require 'jera_payment/services/iugu/customers/update'
require 'jera_payment/services/iugu/customers/destroy'

# IUGU CREDIT CARDS SERVICES
require 'jera_payment/services/iugu/credit_cards/create'
require 'jera_payment/services/iugu/credit_cards/update'
require 'jera_payment/services/iugu/credit_cards/destroy'

# IUGU INVOICES SERVICES
require 'jera_payment/services/iugu/invoices/create'
require 'jera_payment/services/iugu/invoices/update_status'
require 'jera_payment/services/iugu/invoices/update_data'
require 'jera_payment/services/iugu/invoices/duplicate'
require 'jera_payment/services/iugu/invoices/send_email'

# IUGU CHARGE SERVICES
require 'jera_payment/services/iugu/charges/create'

# IUGU PLAN SERVICES
require 'jera_payment/services/iugu/plans/create'
require 'jera_payment/services/iugu/plans/update'
require 'jera_payment/services/iugu/plans/destroy'

# IUGU SUBSCRIPTION SERVICES
require 'jera_payment/services/iugu/subscriptions/create'
require 'jera_payment/services/iugu/subscriptions/update'
require 'jera_payment/services/iugu/subscriptions/destroy'
require 'jera_payment/services/iugu/subscriptions/change_plan'
require 'jera_payment/services/iugu/subscriptions/update_credits'
require 'jera_payment/services/iugu/subscriptions/update_situation'

# IUGU SUBACCOUNT SERVICES
require 'jera_payment/services/iugu/sub_accounts/create'
require 'jera_payment/services/iugu/sub_accounts/update'
require 'jera_payment/services/iugu/sub_accounts/verify'

# IUGU HOUSEHOLD SERVICES
require 'jera_payment/services/iugu/households/create'

# IUGU TRANSFER SERVICES
require 'jera_payment/services/iugu/transfers/create'

# MODEL CONCERNS
require 'jera_payment/models/concerns/resource_callbacks'
require 'jera_payment/models/concerns/invoice_methods'
require 'jera_payment/models/concerns/subscription_methods'
require 'jera_payment/models/concerns/sub_account_methods'
require 'jera_payment/models/concerns/household_methods'
require 'jera_payment/models/concerns/withdrawal_methods'
require 'jera_payment/models/concerns/transfer_methods'
