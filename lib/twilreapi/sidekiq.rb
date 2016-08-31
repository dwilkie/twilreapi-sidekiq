require 'sidekiq'
require 'twilreapi/worker'

module Twilreapi
  module Sidekiq
  end
end

require_relative "sidekiq/workers"
