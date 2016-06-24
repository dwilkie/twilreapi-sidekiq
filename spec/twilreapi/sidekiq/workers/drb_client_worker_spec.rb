require 'spec_helper'

describe Twilreapi::Sidekiq::DrbClientWorker do
  describe "#perform(payload)" do
    let(:payload) { "some payload" }

    before do
      subject.perform(payload)
    end

    it { p "here" }

  end
end
