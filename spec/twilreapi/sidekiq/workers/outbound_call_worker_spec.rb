require 'spec_helper'

describe(Twilreapi::Sidekiq.const_get(ENV["TWILREAPI_SIDEKIQ_OUTBOUND_CALL_WORKER_CLASS"] || "OutboundCallWorker")) do
  describe "#perform(*args)" do
    let(:args) { ["some", "args"] }
    let(:worker) { double(Twilreapi::Worker::OutboundCallWorker, :perform => nil) }

    def stub_worker!
      allow(Twilreapi::Worker::OutboundCallWorker).to receive(:new).and_return(worker)
    end

    def setup_scenario
      stub_worker!
    end

    def assert_perform!
      expect(worker).to receive(:perform).with(*args)
      subject.perform(*args)
    end

    before do
      setup_scenario
    end

    it { assert_perform! }
  end
end

