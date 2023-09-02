# @see http://qiita.com/zenpou/items/7e5694a594fc22daed79
# @see https://github.com/rails/rails/blob/master/actionpack/lib/action_controller/metal/http_authentication.rb

require "action_controller/metal/http_authentication"
module ActionController
  module HttpAuthentication
    module Digest
      def validate_nonce(secret_key, request, value, seconds_to_timeout = 30 * 60)
        return false if value.nil?

        t = ::Base64.decode64(value).split(":").first.to_i
        nonce(secret_key, t) == value && (t - Time.now.to_i).abs <= seconds_to_timeout
      end
    end
  end
end
