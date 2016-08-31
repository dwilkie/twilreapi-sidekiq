require 'spec_helper'

describe(Twilreapi::Sidekiq.const_get(ENV["TWILREAPI_SIDEKIQ_OUTBOUND_CALL_WORKER_CLASS"] || "OutboundCallWorker")) do
  describe "#perform(*args)" do
    let(:args) { ["some", "args"] }
    let(:job) { double(Twilreapi::Worker::Job::OutboundCallJob) }

    def assert_perform!
      allow(Twilreapi::Worker::Job::OutboundCallJob).to receive(:new).and_return(job)
      expect(job).to receive(:perform).with(*args)
      subject.perform(*args)
    end

    it { assert_perform! }
  end
end

