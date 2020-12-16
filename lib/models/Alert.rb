require 'mongoid'

class Alert
  include Mongoid::Document

  field :name, type: String
  field :symbol, type: String
  field :occurrence, type: String
  field :last_value, type: Numeric
  field :updated_at, type: DateTime

  has_one :alert_action
  has_many :alert_criterion
  has_many :triggered_alert
end
