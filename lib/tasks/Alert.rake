desc "Do alert"

task :alert do
  data = {}
  Alert.find({}) do |alert|
    data[alert.symbol] = {}
    data[alert.symbol][:criteria] = []
    data[alert.symbol][:columns] = []
    AlertCriterion.find(alert_id: alert.id) do |criterion|
      data[alert.symbol][:criteria].push(criterion)
      data[alert.symbol][:columns].push(criterion.column)
    end
    data[alert.symbol][:columns] = data[alert.symbol][:columns].uniq
  end

  # screener_fetch_service = ScreenerFetchService.new
  # data.each do |symbol, value|
  #   filters = []
  #   screener_fetch_service.fetch(value[:columns], filters)
  # end
end
