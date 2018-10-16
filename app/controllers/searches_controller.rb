class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = NCBMXHSQGLF2BXJ35GMY3RAGVZQYHPUZQTKFZPZTDVFHZK0R
      req.params['client_secret'] = AP05BV1ELV4GYXVLXEO3JKSZDQTT1UJWBOOIVNLMNJJTLS1P
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
