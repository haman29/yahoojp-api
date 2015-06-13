require 'json'
module Yahoojp
  module Auction
    class Response
      attr_accessor :raw, :body
      def initialize raw
        @raw = raw
        @body = JSON.parse(raw.body.match(/^loaded\((.*)\)\z/)[1])
      end

      AttributeMappings = {
        total_count: 'totalResultsAvailable',
        count: 'totalResultsReturned',
        offset: 'firstResultPosition',
      }

      AttributeMappings.each do |method, key|
        define_method(method){ attributes[key].to_i }
      end

      def next_page
        return nil if total_count - offset < count
        (offset / count.to_f).ceil + 1
      end

      def has_error?
        ! body['Error'].nil?
      end

      def result_set
        body['ResultSet']
      end

      def result
        result_set['Result']
      end

      def category_path
        result['CategoryPath']
      end

      def item
        result.is_a?(Hash) ? result : nil
      end

      def items
        result['Item']
      end

      def attributes
        body['ResultSet']['@attributes']
      end
    end
  end
end
