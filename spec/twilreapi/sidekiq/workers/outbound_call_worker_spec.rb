require 'spec_helper'

describe(Twilreapi::Sidekiq.const_get(ENV["TWILREAPI_SIDEKIQ_OUTBOUND_CALL_WORKER_CLASS"] || "OutboundCallWorker")) do
  describe "#perform(payload)" do
    let(:payload) { "some payload" }

    before do
      subject.perform(payload)
    end

    it { p "here" }
  end
end

