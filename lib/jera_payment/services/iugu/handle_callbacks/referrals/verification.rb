module Iugu
  module HandleCallbacks
    module Referrals
      class Verification < Iugu::HandleCallbacks::Referrals::Base
        def initialize(params)
          super
        end

        def call
          @sub_account = JeraPayment::SubAccount.find_by(account_id: @params["data"["id"]])

          return 404 unless @sub_account.present?

          if @params["data"]["status"] == 'accepted'
            @sub_account.update_columns(can_receive?: true, is_verified?: true)
          else
            @sub_account.update_columns(last_verification_request_feedback: @params["data"]["feedback"])
          end

          return 200
        end

      end
    end
  end
end
