require 'twilreapi/worker/job/outbound_call_job'

Twilreapi::Sidekiq.const_set(
  ENV["TWILREAPI_SIDEKIQ_OUTBOUND_CALL_WORKER_CLASS"] || "OutboundCallWorker",
  Class.new do
    include Sidekiq::Worker

    def perform(*args)
      Twilreapi::Worker::Job::OutboundCallJob.new.perform(*args)
    end
  end
)

