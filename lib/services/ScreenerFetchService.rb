require 'faraday'
require 'json'
require 'contracts'
require_relative './data/ScreenerFetchFilterItem'

class ScreenerFetchService
  include Contracts::Core

  SCAN_URL = "https://scanner.tradingview.com/crypto/scan"
  USER_AGENT = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36"

  Contract Contracts::ArrayOf[String], Contracts::ArrayOf[ScreenerFetchFilterItem] => Hash
  def fetch(columns = [], filters = [], offset = 0, count = 100, sort_by = 'name', sort_order = 'asc')
    request_body = {
        'filter': filters,
        'columns': columns,
        'options': {lang: 'en'},
        'symbols': {
            'query': {types: []},
            'tickers': []
        },
        'sort': {
            'sortBy': sort_by,
            'sortOrder': sort_order
        },
        'range': [offset, count]
    }
    headers = {
        'Content-Type' => 'application/json',
        'User-Agent' => USER_AGENT
    }
    response = Faraday.post(SCAN_URL, request_body.to_json, headers)
    JSON.parse(response.body)
  end
end
