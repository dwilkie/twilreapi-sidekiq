module Twilreapi::Sidekiq::SpecHelpers::EnvHelpers
  private

  def stub_env(env)
    allow(ENV).to receive(:[]).and_call_original

    env.each do |key, value|
      allow(ENV).to receive(:[]).with(key.to_s.downcase.to_sym).and_return(value)
      allow(ENV).to receive(:[]).with(key.to_s.downcase).and_return(value)
    end
  end
end
