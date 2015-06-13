require 'yahoojp/auction/category_leaf'
require 'yahoojp/auction/response'

module Yahoojp
  module Auction
    module API
      Methods = %i(
        categoryLeaf
        auctionItem
      )
      def default_params
        {
          appid: @app_id,
          output: :json,
        }
      end

      Methods.map do |method_name|
        define_method method_name do |params|
          Response.new conn.get([path, method_name].join('/'), default_params.merge(params))
        end
      end
    end
  end
end
