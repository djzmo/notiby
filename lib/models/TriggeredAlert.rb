require 'mongoid'

class TriggeredAlert
  include Mongoid::Document

  field :triggered_at, type: DateTime

  belongs_to :alert
end
