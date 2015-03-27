require 'yahoojp/auction/category_leaf'
require 'yahoojp/auction/response'

module Yahoojp
  module Auction
    module API
      include Yahoojp::Auction::CategoryLeaf

      def default_params
        {
          appid: @app_id,
          output: :json,
        }
      end
      def category_leafs params
        response = conn.get "#{path}/categoryLeaf", default_params.merge(params)
        Response.new response
      end
    end
  end
end
