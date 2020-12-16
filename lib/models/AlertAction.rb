require 'mongoid'

class AlertAction
  include Mongoid::Document

  field :webhook_url, type: String

  belongs_to :alert
end
