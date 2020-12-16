require './lib/models/Alert'
require './lib/models/AlertAction'
require './lib/models/AlertCriterion'
require './lib/models/TriggeredAlert'
require './lib/services/data/AlertOccurrence'
require './lib/services/data/AlertOperator'
require './lib/services/data/ScreenerFetchFilterItem'
require './lib/services/ScreenerFetchService'
require './lib/routes/alert'

Mongoid.load!('./config/mongoid.yml', :development)
