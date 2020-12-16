require 'mongoid'

class AlertCriterion
  include Mongoid::Document

  field :column, type: String
  field :operator, type: String
  field :value, type: Numeric

  belongs_to :alert
end