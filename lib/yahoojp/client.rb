module Yahoojp
  class Client
    Host = 'yahooapis.jp'

    def initialize app_id: nil, affiliate_id: nil
      @app_id       = app_id
      @affiliate_id = affiliate_id
    end
  end
end
