require 'faraday'
require 'yahoojp/client'
require 'yahoojp/auction'
require 'yahoojp/auction/api'

module Yahoojp
  Host = 'yahooapis.jp'

  module Auction
    class Client < Yahoojp::Client
      include Yahoojp::Auction::API
      EndPointCategoryLeaf = 'http://auctions.yahooapis.jp/AuctionWebService/V2/categoryLeaf'
      EndPointDescription  = 'http://auctions.yahooapis.jp/AuctionWebService/V2/auctionItem'

      def version
        'V2'
      end

      private

      def url
        @url ||= "http://#{SubDomain}.#{Host}"
      end

      def path
        "/#{Path}/#{version}"
      end

      def conn
        @conn ||= Faraday.new(:url => url) do |f|
          f.request  :url_encoded
          f.response :logger
          f.adapter  Faraday.default_adapter
        end
      end
    end
  end
end
