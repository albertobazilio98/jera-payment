module JeraPayment
  module Services
    module Iugu
      module Invoices
        class UpdateData < JeraPayment::Services::Iugu::Base
          def initialize(resource)
            @resource = resource
          end

          def call
            begin
              ApplicationRecord.transaction do
                @data_update = JeraPayment::Api::Iugu::Invoice.show(@resource.api_id, @resource&.sub_account&.api_token)
                puts @data_update
                if @data_update[:errors].present?
                  raise(StandardError, @data_update[:errors])
                else
                  fetch_payment_method_id
                  @resource.update_columns(status: @data_update[:status], credit_card_api_id: @payment_method_id,
                                           payment_method: @data_update[:payment_method].to_sym)
                end
              end
            rescue Exception => error
              add_error(error.message)
            end
            @resource
          end

          def fetch_payment_method_id
            @payment_method_id = @data_update[:variables].find do |item|
              item[:variable] == 'customer_payment_method_id'
            end
            
            @payment_method_id = @payment_method_id[:value] if @payment_method_id.present?
          end
        end
      end
    end
  end
end