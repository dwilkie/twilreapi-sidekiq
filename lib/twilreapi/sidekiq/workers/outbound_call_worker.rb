Twilreapi::Sidekiq.const_set(
  ENV["TWILREAPI_SIDEKIQ_OUTBOUND_CALL_WORKER_CLASS"] || "OutboundCallWorker",
  Class.new do
    include Sidekiq::Worker

    def perform(*args)
      outbound_call_worker.perform(*args)
    end

    private

    def outbound_call_worker
      outbound_call_worker ||= Twilreapi::Worker::OutboundCallWorker.new
    end
  end
)

