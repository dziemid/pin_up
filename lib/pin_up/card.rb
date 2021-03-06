module Pin
  ##
  # This class models Pin's Cards API
  class Card < Base
    ##
    # creates a card given a hash of options
    # https://pinpayments.com/docs/api/cards
    # Only use if you have a secure server connection, if in doubt use
    # the form example provided by Pin to create a card_token
    # https://pinpayments.com/docs/guides/payment-forms
    # args: card_details (Hash)
    # returns: card object
    def self.create(options)
      build_response(make_request(:post, { url: 'cards', options: options }))
    end
  end
end
